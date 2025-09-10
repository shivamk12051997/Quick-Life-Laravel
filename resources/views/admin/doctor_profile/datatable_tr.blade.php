<td>{{ $item->name ?? '-' }}</td>
<td>{{ $item->email ?? '-' }}</td>
<td>{{ $item->phone ?? '-' }}</td>
<td>{{ $item->specialization ?? '-' }}</td>
<td>{{ $item->experience ?? '-' }}</td>
<td>
    @if($item->getFirstMediaUrl('mbbs_degree_certificate'))
        <a href="{{ $item->getFirstMediaUrl('mbbs_degree_certificate') }}" target="_blank">View</a>
    @else
        -
    @endif
</td>
<td>
    @if($item->getFirstMediaUrl('medical_council_registration_certificate'))
        <a href="{{ $item->getFirstMediaUrl('medical_council_registration_certificate') }}" target="_blank">View</a>
    @else
        -
    @endif
</td>
<td>
    @if($item->getFirstMediaUrl('aadhaar_card'))
        <a href="{{ $item->getFirstMediaUrl('aadhaar_card') }}" target="_blank">View</a>
    @else
        -
    @endif
</td>
<td>
    @if($item->getFirstMediaUrl('pan_card'))
        <a href="{{ $item->getFirstMediaUrl('pan_card') }}" target="_blank">View</a>
    @else
        -
    @endif
</td>
<td>
    @if($item->getFirstMediaUrl('bank_account_details'))
        <a href="{{ $item->getFirstMediaUrl('bank_account_details') }}" target="_blank">View</a>
    @else
        -
    @endif
</td>
<td>
    @if($item->getFirstMediaUrl('professional_photo'))
        <a href="{{ $item->getFirstMediaUrl('professional_photo') }}" target="_blank">
            <img src="{{ $item->getFirstMediaUrl('professional_photo', 'thumb') }}" alt="Photo" style="width:40px;height:40px;object-fit:cover;">
        </a>
    @else
        -
    @endif
</td>
<td>
    @if ($item->status == '1')
        <span class="badge badge-success" data-bs-toggle="modal" data-bs-target="#edit_modal" onclick="change_status({{ $item->id }})">Active</span>
    @elseif ($item->status == '-1')
        <span class="badge badge-danger" data-bs-toggle="modal" data-bs-target="#edit_modal" onclick="change_status({{ $item->id }})">Rejected</span>
    @else
        <span class="badge badge-primary" data-bs-toggle="modal" data-bs-target="#edit_modal" onclick="change_status({{ $item->id }})">Pending</span>
    @endif
    @if ($item->status_remarks)
        <br>
        <small>{{ $item->status_remarks ?? '' }}</small>
    @endif
</td>
<td>
     <a href="{{ route('admin.user.login',$item->id) }}" class="text-primary p-1 f-22">
        <i class="fa fa-sign-in"></i>
    </a>
    <a href="#" class="text-warning p-1 f-22" data-toggle="tooltip" title="Edit" data-bs-toggle="modal" data-bs-target="#edit_modal" onclick="edit_modal({{ $item->id }})">
        <i class="fa fa-edit"></i>
    </a>
    <a onclick="delete_entry('{{ route('admin.doctor_profile.delete',$item->id)}}', {{ $item->id }})" class="text-danger pointer p-1 f-22" data-toggle="tooltip" title="Delete">
        <i class="fa fa-trash-o"></i>
    </a>
</td>