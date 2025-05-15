php artisan ui bootstrap --auth<div class="sidebar-wrapper" sidebar-layout="stroke-svg">
  <div>
    <div class="logo-wrapper" style="height: auto; width:200px;"><a href="{{ url('/') }}"><img class="img-fluid for-light" src="{{ asset(env('APP_LOGO_DARK')) }}" alt=""><img class="img-fluid for-dark" src="{{ asset(env('APP_LOGO_LIGHT')) }}" alt=""></a>
      <div class="back-btn"><i class="fa fa-angle-left"></i></div>
      <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="grid"> </i></div>
    </div>
    <div class="logo-icon-wrapper"><a href="{{ url('/') }}"><img class="img-fluid" width="50px" src="{{ asset(env('APP_FAVICON')) }}" alt=""></a></div>
    <nav class="sidebar-main">
      <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
      <div id="sidebar-menu">
        <ul class="sidebar-links" id="simple-bar">
          <li class="back-btn"><a href="{{ url('/') }}"><img class="img-fluid" src="{{ asset(env('APP_FAVICON')) }}" alt=""></a>
            <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2" aria-hidden="true"></i></div>
          </li>
          <li class="sidebar-main-title">
            <div>
              <h6>General</h6>
            </div>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('dashboard') }}">
              <i data-feather="home"></i><span>Dashboard</span>
            </a>
          </li>
          {{-- <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('shipment_receipt.index') }}">
              <i data-feather="home"></i><span>Shipment Receipts</span>
            </a>
          </li> --}}
          <li class="sidebar-main-title">
            <div>
              <h6>Settings</h6>
            </div>
          </li>
          {{-- <li class="sidebar-list">
            <a class="sidebar-link sidebar-title" href="#">
              <i data-feather="package"></i><span>Master Attributes</span>
            </a>
            <ul class="sidebar-submenu">
              <li><a href="{{ route('master.attribute.index') }}">All Attributes</a></li>
              @foreach (App\Models\Attribute::where('status',1)->get() as $item)
              <li><a href="{{ route('master.attribute.show', $item->slug) }}">{{ $item->name }}</a></li>
              @endforeach
            </ul>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav {{Route::is('user*') ? 'active':''}}" href="{{ route('user.index') }}">
              <i data-feather="home"></i><span>Manage Users</span>
            </a>
          </li> --}}
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('admin.website.setting') }}">
              <i data-feather="home"></i><span>Website Setting</span>
            </a>
          </li>
          {{-- <li class="sidebar-list">
            <a class="sidebar-link sidebar-title" href="#">
              <i data-feather="package"></i><span>Manage Employees</span>
            </a>
            <ul class="sidebar-submenu">
              <li><a href="{{ route('employee.add') }}">Add Employee</a></li>
              <li><a href="{{ route('employee.index') }}">All Employees</a></li>
            </ul>
          </li> --}}
        </ul>
      </div>
      <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
    </nav>
  </div>
</div>