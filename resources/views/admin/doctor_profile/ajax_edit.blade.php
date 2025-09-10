<form class="modal-content" action="{{ route('admin.doctor_profile.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="id" value="{{ $doctorProfile->id ?? 0 }}">
    <input type="hidden" name="status" value="{{ $doctorProfile->status ?? 1 }}">
    <div class="modal-header">
        <h4 class="modal-title" id="mySmallModalLabel">{{ ($doctorProfile->id ?? 0) != 0 ? 'Edit':'Add' }} Doctor Profile</h4>
        <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    <div class="modal-body dark-modal">
        <fieldset class="border py-2 px-3 mb-3">
            <legend class="float-none w-auto">Doctor Details</legend>
            <div class="row">
                <div class="col-md-6 form-group mb-3">
                    <h6>Name <span>*</span></h6>
                    <input type="text" class="form-control" name="name" value="{{ $doctorProfile->name ?? '' }}" required>
                </div>
                <div class="col-md-6 form-group mb-3">
                    <h6>Email <span>*</span></h6>
                    <input type="email" class="form-control" name="email" value="{{ $doctorProfile->email ?? '' }}" required>
                </div>
                <div class="col-md-6 form-group mb-3">
                    <h6>Phone No. <span>*</span></h6>
                    <input type="text" class="form-control" name="phone" value="{{ $doctorProfile->phone ?? '' }}" required>
                </div>
                <div class="col-md-6 form-group mb-3">
                    <h6>Specialization <span>*</span></h6>
                    <input type="text" class="form-control" name="specialization" value="{{ $doctorProfile->specialization ?? '' }}" required>
                </div>
                <div class="col-md-6 form-group mb-3">
                    <h6>Experience (Years) <span>*</span></h6>
                    <input type="number" class="form-control" name="experience" value="{{ $doctorProfile->experience ?? '' }}" min="0" required>
                </div>
            </div>
        </fieldset>
        <fieldset class="border py-2 px-3 mb-3">
            <legend class="float-none w-auto">Documents</legend>
            <div class="row">
                <div class="col-md-6 form-group mb-3">
                    <h6>MBBS Degree Certificate</h6>
                    <input type="file" class="form-control" name="mbbs_degree_certificate" accept=".pdf,image/*">
                    @if(isset($doctorProfile) && $doctorProfile->getFirstMediaUrl('mbbs_degree_certificate'))
                        <a href="{{ $doctorProfile->getFirstMediaUrl('mbbs_degree_certificate') }}" target="_blank"><i class="fa fa-file"></i> View Document</a>
                    @endif
                </div>
                <div class="col-md-6 form-group mb-3">
                    <h6>Medical Council Registration Certificate</h6>
                    <input type="file" class="form-control" name="medical_council_registration_certificate" accept=".pdf,image/*">
                    @if(isset($doctorProfile) && $doctorProfile->getFirstMediaUrl('medical_council_registration_certificate'))
                        <a href="{{ $doctorProfile->getFirstMediaUrl('medical_council_registration_certificate') }}" target="_blank"><i class="fa fa-file"></i> View Document</a>
                    @endif
                </div>
                <div class="col-md-6 form-group mb-3">
                    <h6>Aadhaar Card</h6>
                    <input type="file" class="form-control" name="aadhaar_card" accept=".pdf,image/*">
                    @if(isset($doctorProfile) && $doctorProfile->getFirstMediaUrl('aadhaar_card'))
                        <a href="{{ $doctorProfile->getFirstMediaUrl('aadhaar_card') }}" target="_blank"><i class="fa fa-file"></i> View Document</a>
                    @endif
                </div>
                <div class="col-md-6 form-group mb-3">
                    <h6>PAN Card</h6>
                    <input type="file" class="form-control" name="pan_card" accept=".pdf,image/*">
                    @if(isset($doctorProfile) && $doctorProfile->getFirstMediaUrl('pan_card'))
                        <a href="{{ $doctorProfile->getFirstMediaUrl('pan_card') }}" target="_blank"><i class="fa fa-file"></i> View Document</a>
                    @endif
                </div>
                <div class="col-md-6 form-group mb-3">
                    <h6>Bank Account Details</h6>
                    <input type="file" class="form-control" name="bank_account_details" accept=".pdf,image/*">
                    @if(isset($doctorProfile) && $doctorProfile->getFirstMediaUrl('bank_account_details'))
                        <a href="{{ $doctorProfile->getFirstMediaUrl('bank_account_details') }}" target="_blank"><i class="fa fa-file"></i> View Document</a>
                    @endif
                </div>
                <div class="col-md-6 form-group mb-3">
                    <h6>Professional Photo</h6>
                    <input type="file" class="form-control" name="professional_photo" accept="image/*">
                    @if(isset($doctorProfile) && $doctorProfile->getFirstMediaUrl('professional_photo'))
                        <a href="{{ $doctorProfile->getFirstMediaUrl('professional_photo') }}" target="_blank">
                            <img src="{{ $doctorProfile->getFirstMediaUrl('professional_photo', 'thumb') }}" alt="Photo" style="width:40px;height:40px;object-fit:cover;">
                        </a>
                    @endif
                </div>
            </div>
        </fieldset>
        {{-- <fieldset class="border py-2 px-3 mb-3">
            <legend class="float-none w-auto">Other</legend>
            <div class="row">
                <div class="col-md-6 form-group">
                    <h6>Is Featured</h6>
                    <label class="switch">
                        <input type="checkbox" name="is_featured" value="1" {{ ($doctorProfile->is_featured ?? 0) == 1 ? 'checked':'' }}><span class="switch-state"></span>
                    </label>
                </div>
                <div class="col-md-6 form-group">
                    <h6>Status</h6>
                    <label class="switch">
                        <input type="checkbox" name="status" value="1" {{ ($doctorProfile->status ?? 1) == 1 ? 'checked':'' }}><span class="switch-state"></span>
                    </label>
                </div>
            </div>
        </fieldset> --}}
    </div>
    <div class="modal-footer text-end">
        <button type="submit" class="btn btn-primary">Save</button>
    </div>
</form>

<script>
    $('.js-example-basic-single').select2();
    $('.js-example-basic-multiple').select2();
</script>