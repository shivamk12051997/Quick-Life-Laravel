<div class="dt-ext table-responsive">
    <table class="table table-striped table-hover dataTable nowrap  ">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Attribute</th>
                <th>Status</th>
                <th>Options</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($attribute_value as $key => $item)
            <tr>
                <td>{{ $attribute_value->firstItem() + $loop->index }}</td>
                <td>{{ $item->name ?? '-' }}</td>
                <td>{{ $item->attribute->name ?? '-' }}</td>
                <td>
                    <span class="badge badge-{{ $item->status == '1' ? 'success':'danger' }} pointer" id="status_{{ $item->id }}" onclick="change_status({{ $item->id }})">{{ $item->status == '1' ? 'Active':'Inactive' }}</span>
                </td>
                <td>
                    <a href="#" class="text-warning p-1 f-22" data-toggle="tooltip" title="Edit" data-bs-toggle="modal" data-bs-target="#edit_modal" onclick="edit_modal({{ $item->id }})">
                        <i class="fa fa-edit"></i>
                    </a>
                    @if (auth()->user()->role_as == 'Admin')
                    <a id="Delete-{{$item->id}}" class="text-danger pointer p-1 f-22" data-toggle="tooltip" title="Delete">
                        <i class="fa fa-trash-o"></i>
                    </a>
                    <script>
                        $('#Delete-{{$item->id}}').click(function(){
                            swal({
                                title: "Are you sure?",
                                text: "You won't be able to revert this!",
                                icon: "warning",
                                buttons: true,
                                dangerMode: true,
                            })
                            .then((willDelete) => {
                                if (willDelete) {
                                    window.location.href = "{{ route('master.attribute_value.delete',$item->id)}}";
                                }
                            })
                        });
                    </script>
                    @endif
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{-- <input type="submit" value="Delete Selected" class="btn btn-danger btn-sm" name="submit" id="submit" onclick="return confirm('Are you sure?')"> --}}
</div>

<div>
    {{$attribute_value->links()}}
</div>

