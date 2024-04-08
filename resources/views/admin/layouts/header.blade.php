@include('admin.layouts.navbar')
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="{{ asset('admin_assets/dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light"><strong>E-commerce</strong></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <li class="nav-item mb-2">
                <a href="{{ url('admin/dashboard') }}" class="nav-link @if(Request::segment(2) == 'dashboard') active @endif">
                    <i class="nav-icon fa-solid fa-gauge"></i>
                  <p>
                    Dashboard
                  </p>
                </a>
              </li>

              <li class="nav-item mb-2">
                <a href="{{ url('admin/admin/list') }}" class="nav-link @if(Request::segment(2) == 'admin') active @endif">
                  <i class="nav-icon far fa-user"></i>
                  <p>
                   Admin
                  </p>
                </a>
              </li>

              <li class="nav-item mb-2">
                <a href="{{ url('admin/category/list') }}" class="nav-link @if(Request::segment(2) == 'category') active @endif">
                  <i class="nav-icon far fa-list-alt"></i>
                  <p>
                   Category
                  </p>
                </a>
              </li>

              <li class="nav-item mb-2">
                <a href="{{ url('admin/sub_category/list') }}" class="nav-link @if(Request::segment(2) == 'sub_category') active @endif">
                    <i class="nav-icon far fa-list-alt"></i>
                  <p>
                   Sub Category
                  </p>
                </a>
              </li>

              <li class="nav-item mb-2">
                <a href="{{ url('admin/product/list') }}" class="nav-link @if(Request::segment(2) == 'product') active @endif">
                    <i class="nav-icon far fa-list-alt"></i>
                  <p>
                   Products
                  </p>
                </a>
              </li>

              <li class="nav-item mb-2">
                <a href="{{ url('admin/brand/list') }}" class="nav-link @if(Request::segment(2) == 'brand') active @endif">
                    <i class="nav-icon far fa-list-alt"></i>
                  <p>
                   Brand
                  </p>
                </a>
              </li>

              <li class="nav-item mb-2">
                <a href="{{ url('admin/color/list') }}" class="nav-link @if(Request::segment(2) == 'color') active @endif">
                    <i class="nav-icon far fa-list-alt"></i>
                  <p>
                   Color
                  </p>
                </a>
              </li>


          <hr>

          <li class="nav-item">
            <a href="{{ url('admin/logout') }}" class="nav-link">
                <i class="nav-icon fa-solid fa-right-from-bracket"></i>
              {{-- <i class="nav-icon far fa-image"></i> --}}
              <p>
                Logout
              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
