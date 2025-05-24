<form class="modal-content" action="{{ route('admin.warehouse.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="id" value="{{ $warehouse->id ?? 0 }}">
    <div class="modal-header">
        <h4 class="modal-title" id="mySmallModalLabel">{{ ($warehouse->id ?? 0) != 0 ? 'Edit':'Add' }} Warehouse </h4>
        <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close" data-bs-original-title="" title=""></button>
    </div>
    <div class="modal-body dark-modal">
        <div class="row">
            <div class="col-md-12 form-group mb-3">
                <h6>Name <span>*</span></h6>
                <input type="text" class="form-control" name="name" id="" value="{{ $warehouse->name ?? '' }}" required>
            </div>
            <div class="col-md-12 form-group mb-3">
                <h6>Email <span>*</span></h6>
                <input type="email" class="form-control" name="email" id="" value="{{ $warehouse->email ?? '' }}" required>
            </div>
            <div class="col-md-12 form-group mb-3">
                <h6>Password <span>*</span></h6>
                <input type="text" class="form-control" name="password" id="" value="{{ $warehouse->password ?? '' }}">
                <small>Current Password: {{ $warehouse->show_password ?? '' }}</small>
            </div>
            <div class="col-md-12 form-group mb-3">
                <h6>Phone Number <span>*</span></h6>
                <input type="text" class="form-control" name="phone" id="" value="{{ $warehouse->phone ?? '' }}" required>
            </div>
            <div class="col-md-12 form-group mb-3">
                <h6>Location <span>*</span></h6>
                <input type="text" class="form-control" name="location" id="" value="{{ $warehouse->location ?? '' }}" required>
            </div>
            <div class="col-md-6 form-group">
                <h6>Status</h6>
                <label class="switch">
                    <input type="checkbox"  name="status" value="1" {{ ($warehouse->status ?? 1) == 1 ? 'checked':'' }}><span class="switch-state"></span>
                </label>
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