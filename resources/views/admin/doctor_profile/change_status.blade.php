<form class="modal-content" action="{{ route('admin.doctor_profile.change_status_store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="id" value="{{ $doctorProfile->id ?? 0 }}">
    <div class="modal-header">
        <h4 class="modal-title" id="mySmallModalLabel">{{ ($doctorProfile->id ?? 0) != 0 ? 'Edit':'Add' }} Doctor Profile </h4>
        <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close" data-bs-original-title="" title=""></button>
    </div>
    <div class="modal-body dark-modal">
        <div class="row">
            <div class="col-md-12 form-group mb-3">
                <h6>Doctor Name <span>*</span></h6>
                <input type="text" class="form-control" name="name" id="" value="{{ $doctorProfile->name ?? '' }}" disabled required>
            </div>
            <div class="col-md-12 form-group mb-3">
                <h6>Status <span>*</span></h6>
                <select name="status" class="form-select" id="" required>
                    <option value="0" {{ ($doctorProfile->status ?? '') == '0' ? 'selected':'' }}>Pending</option>
                    <option value="1" {{ ($doctorProfile->status ?? '') == '1' ? 'selected':'' }}>Approved</option>
                    <option value="-1" {{ ($doctorProfile->status ?? '') == '-1' ? 'selected':'' }}>Rejected</option>
                </select>
            </div>
            <div class="col-md-12 form-group mb-3">
                <h6>Status Remarks</h6>
                <textarea class="form-control" name="status_remarks" id="" rows="3">{{ $doctorProfile->status_remarks ?? '' }}</textarea>
            </div>
        </div>
    </div>
    <div class="modal-footer text-end">
        <button type="submit" class="btn btn-primary">Save</button>
    </div>
</form>

<script>
    $('.js-example-basic-single').select2();
    $('.js-example-basic-multiple').select2();
</script>