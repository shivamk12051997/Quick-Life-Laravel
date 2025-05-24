<div class="dt-ext table-responsive">
    <table class="table table-striped table-hover dataTable nowrap  table-bordered" id="basic-test">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Image</th>
                <th>Status</th>
                <th>Options</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($brand as $key => $item)
            <tr id="tr_{{ $item->id }}">
                <td class="sr">{{ $brand->firstItem() + $loop->index }}</td>
                @include('admin.brand.datatable_tr')
            </tr>
            @endforeach
        </tbody>
    </table>
    {{-- <input type="submit" value="Delete Selected" class="btn btn-danger btn-sm" name="submit" id="submit" onclick="return confirm('Are you sure?')"> --}}
</div>

<div>
    {{$brand->links()}}
</div>
