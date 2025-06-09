<div class="sidebar-wrapper" sidebar-layout="stroke-svg">
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
          @if (Auth::user()->role_as == 'Admin')
          <li class="sidebar-main-title">
            <div>
              <h6>Product Management</h6>
            </div>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('admin.product.index') }}">
              <i data-feather="home"></i><span>All Products</span>
            </a>
          </li>
          @endif
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('warehouse.product_request.index') }}">
              <i data-feather="home"></i><span>All Product Requests</span>
            </a>
          </li>
           <li class="sidebar-main-title">
            <div>
              <h6>Stock Management</h6>
            </div>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('warehouse.stock_details.index') }}">
              <i data-feather="home"></i><span>All Stock Details</span>
            </a>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('warehouse.current_stock.index') }}">
              <i data-feather="home"></i><span>Current Stock</span>
            </a>
          </li>
          @if (Auth::user()->role_as == 'Admin')
          <li class="sidebar-main-title">
            <div>
              <h6>Settings</h6>
            </div>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title" href="#">
              <i data-feather="package"></i><span>Master Fields</span>
            </a>
            <ul class="sidebar-submenu">
              <li><a href="{{ route('admin.category.index') }}">All Categories</a></li>
              <li><a href="{{ route('admin.sub_category.index') }}">All Sub Categories</a></li>
              <li><a href="{{ route('admin.brand.index') }}">All Brands/Manufacturers</a></li>
            </ul>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('admin.warehouse.index') }}">
              <i data-feather="home"></i><span>All Warehouses</span>
            </a>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="{{ route('admin.website.setting') }}">
              <i data-feather="home"></i><span>Website Setting</span>
            </a>
          </li>
          @endif
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