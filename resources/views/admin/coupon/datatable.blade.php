<div class="dt-ext table-responsive">
    <table class="table table-striped table-hover dataTable nowrap  table-bordered" id="basic-test">
        <thead>
            <tr>
                <th>#</th>
                <th>Coupon Code</th>
                <th>Percentage</th>
                <th>Amount Limit</th>
                <th>Coupon Used</th>
                <th>Usage Limit</th>
                <th>Expiry Date</th>
                <th>Status</th>
                <th>Options</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($coupon as $key => $item)
            <tr id="tr_{{ $item->id }}">
                <td class="sr">{{ $coupon->firstItem() + $loop->index }}</td>
                @include('admin.coupon.datatable_tr')
            </tr>
            @endforeach
        </tbody>
    </table>
    {{-- <input type="submit" value="Delete Selected" class="btn btn-danger btn-sm" name="submit" id="submit" onclick="return confirm('Are you sure?')"> --}}
</div>

<div>
    {{$coupon->links()}}
</div>
