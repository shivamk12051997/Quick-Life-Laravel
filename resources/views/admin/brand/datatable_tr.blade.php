<td>{{ $item->name ?? '-' }}</td>
<td>
    @if (count($item->getMedia('main_img') ?? []) != 0)
        @foreach (($item->getMedia('main_img') ?? []) as $file)
        <div class="img-box media_id_{{ $file->id }}">
            <a href="{{ $file->getURL() ?? '#' }}" target="_blank"><img src="{{ $file->getURL('thumb') ?? '#' }}" alt="" style="width: 60px; height: 60px; object-fit: cover"></a>
        </div>
        @endforeach
    @else   
        <div class="img-box">
            <a href="{{ asset('no_image.jpg') }}" target="_blank"><img src="{{ asset('no_image.jpg') }}" alt="" style="width: 60px; height: 60px; object-fit: cover"></a>
        </div>
    @endif
</td>
<td>
    <span class="badge badge-{{ $item->status == '1' ? 'success':'danger' }} pointer" id="status_{{ $item->id }}" onclick="change_status({{ $item->id }})">{{ $item->status == '1' ? 'Active':'Inactive' }}</span>
</td>
<td>
    {{-- <a href="{{ route('brand.show',$item->id) }}" class="text-primary p-1 f-22">
        <i class="fa fa-eye"></i>
    </a> --}}
    <a href="#" class="text-warning p-1 f-22" data-toggle="tooltip" title="Edit" data-bs-toggle="modal" data-bs-target="#edit_modal" onclick="edit_modal({{ $item->id }})">
        <i class="fa fa-edit"></i>
    </a>
    <a onclick="delete_entry('{{ route('admin.brand.delete',$item->id)}}', {{ $item->id }})" class="text-danger pointer p-1 f-22" data-toggle="tooltip" title="Delete">
        <i class="fa fa-trash-o"></i>
    </a>
</td>