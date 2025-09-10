<?php

namespace App\Http\Controllers\Admin;

use App\Models\DoctorProfile;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Schema;
use App\Mail\DoctorProfileStatusChangedMail;
use Illuminate\Support\Facades\Validator;


class DoctorProfileController extends Controller
{
    public function index()
    {
        return view('admin.doctor_profile.index');
    }

     public function datatable(Request $request)
    {
        $numbers = 50;
        if($request->value){
            $numbers = $request->value;
        }
        $doctorProfiles = DoctorProfile::where('deleted_at', null);
        if($request->search){
            $allColumnNames = Schema::getColumnListing((new DoctorProfile)->getTable());
            $columnNames = array_filter($allColumnNames, fn($columnName) => !in_array($columnName, ['created_at', 'updated_at', 'id']));
            $doctorProfiles = $doctorProfiles->where(function ($query) use($columnNames, $request) {
                foreach ($columnNames as $index => $column) {
                    $method = $index === 0 ? 'where' : 'orWhere';
                    $query->$method($column, 'LIKE', "%{$request->search}%");
                }
            });
        }


        $doctorProfiles = $doctorProfiles->orderBy('id','desc')->paginate($numbers);

        return view('admin.doctor_profile.datatable', compact('doctorProfiles'));
    }

     public function store(Request $request)
    {
        // Step 1: Validate inputs
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|string|max:20',
            'specialization' => 'required|string|max:255',
            'experience' => 'required|numeric|min:0',
            'main_img' => 'nullable|image|mimes:png,webp,jpg,jpeg|max:2048',
            'mbbs_degree_certificate' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'medical_council_registration_certificate' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'aadhaar_card' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'pan_card' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'bank_account_details' => 'nullable|file|mimes:pdf,jpg,jpeg,png,webp|max:4096',
            'professional_photo' => 'nullable|image|mimes:jpg,jpeg,png,webp|max:2048',
        ]);

        // Step 2: If validation fails, return 422 JSON response
        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation Error',
                'errors' => $validator->errors()
            ], 422);
        }

        try {
            // Step 3: Save or update your data
            $input = $request->only([
                'id', 'name', 'email', 'phone', 'specialization', 'experience', 'status', 'is_featured'
            ]);

            $input['created_by_id'] = Auth::user()->id;
            $input['status'] = $request->status ?? 0;
            $input['is_featured'] = $request->is_featured ?? 0;
            $input['slug'] = Str::slug($request->name, '-');

            $item = DoctorProfile::updateOrCreate(['id' => $request->id], $input);

            // Handle main image
            if($request->hasFile('main_img')) {
                if ($item->getFirstMedia('main_img')) {
                    $item->getFirstMedia('main_img')->delete();
                }
                $item->addMedia($request->file('main_img'))->toMediaCollection('main_img');
            }

            // Handle document uploads
            $documents = [
                'mbbs_degree_certificate',
                'medical_council_registration_certificate',
                'aadhaar_card',
                'pan_card',
                'bank_account_details',
                'professional_photo',
            ];
            foreach ($documents as $doc) {
                if ($request->hasFile($doc)) {
                    // Delete old file if exists
                    if ($item->getFirstMedia($doc)) {
                        $item->getFirstMedia($doc)->delete();
                    }
                    $item->addMedia($request->file($doc))->toMediaCollection($doc);
                    dd($request->file($item->getFirstMedia($doc)));
                }
            }

            // Step 4: Return success response with 200
            return response()->json([
                'id' => $item->id,
                'html' => view('admin.doctor_profile.datatable_tr', compact('item'))->render(),
                'message' => 'Doctor Profile Saved Successfully'
            ], 200);

        } catch (\Exception $e) {
            // Step 5: Handle unexpected errors
            return response()->json([
                'message' => 'Something went wrong!',
                'error' => $e->getMessage()
            ], 500);
        }
    }

   public function edit(Request $request)
    {
        $doctorProfile = DoctorProfile::find($request->id);
        return view('admin.doctor_profile.ajax_edit', compact('doctorProfile'));
    }


   public function delete($id)
    {
        $doctorProfile = DoctorProfile::find($id)->delete();

        return ['message' => ' Doctor Profile Deleted Successfully'];
    }

    public function change_status(Request $request)
    {
        $doctorProfile = DoctorProfile::find($request->id);
        return view('admin.doctor_profile.change_status', compact('doctorProfile'));
    }

    public function change_status_store(Request $request)
    {
        // Step 1: Validate inputs
        $validator = Validator::make($request->all(), [
            'status' => 'required|string|max:255',
        ]);

        // Step 2: If validation fails, return 422 JSON response
        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation Error',
                'errors' => $validator->errors()
            ], 422);
        }

        // try {
            // Step 3: Save or update your data
            $input = $request->all();

            $input['status'] = $request->status ?? 0;

            $item = User::updateOrCreate(['id' => $input['id']],$input);

            Mail::to($item->email)->send(new DoctorProfileStatusChangedMail($item));

            // Step 4: Return success response with 200

            return response()->json([
                'id' => $item->id,
                'html' => view('admin.doctor_profile.datatable_tr', compact('item'))->render(),
                'message' => 'Doctor Profile Status Changed Successfully',
            ], 200);

        // } catch (\Exception $e) {
        //     // Step 5: Handle unexpected errors
        //     return response()->json([
        //         'message' => 'Something went wrong!',
        //         'error' => $e->getMessage()
        //     ], 500);
        // }
    }
}
