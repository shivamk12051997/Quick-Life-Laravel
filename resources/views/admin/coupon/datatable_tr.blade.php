<td>{{ $item->coupon_code ?? '-' }}</td>
<td>{{ $item->percentage ?? '-' }}%</td>
<td>{{ $item->amount_limit ?? '-' }}</td>
<td>{{ $item->coupon_used ?? '-' }}</td>
<td>{{ $item->usage_limit ?? '-' }}</td>
<td>{{ ($item->expiry_date ?? '') ? date('d M, Y', strtotime($item->expiry_date)) : '-' }}</td>
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