<div class="dt-ext table-responsive">
    <table class="table table-striped table-hover dataTable nowrap  table-bordered" id="basic-test">
        <thead>
            <th>#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone No.</th>
            <th>Specialization</th>
            <th>Experience</th>
            <th>MBBS Degree Certificate</th>
            <th>Medical Council Registration Certificate</th>
            <th>Aadhaar Card</th>
            <th>PAN Card</th>
            <th>Bank Account Details</th>
            <th>Professional Photo</th>
            <th>Status</th>
            <th>Options</th>
        </thead>
        <tbody>
            @foreach ($doctorProfiles as $key => $item)
            <tr id="tr_{{ $item->id }}">
                <td class="sr">{{ $doctorProfiles->firstItem() + $loop->index }}</td>
                @include('admin.doctor_profile.datatable_tr')
            </tr>
            @endforeach
        </tbody>
    </table>
    {{-- <input type="submit" value="Delete Selected" class="btn btn-danger btn-sm" name="submit" id="submit" onclick="return confirm('Are you sure?')"> --}}
</div>

<div>
    {{$doctorProfiles->links()}}
</div>
