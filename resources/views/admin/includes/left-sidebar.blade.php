
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search">
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                    <button class="btn btn-default" type="button">
                        <i class="fa fa-search"></i>
                    </button>
                </span>
                </div>
                <!-- /input-group -->
            </li>

            <li>
                <a href="{{ route('dashboard') }}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
            </li>

            <li>
                <a href=""><i class="fa fa-user fa-fw"></i> Admin Manager<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="{{ route('add-admin') }}">Add Admin</a></li>
                    <li><a href="#">Manage Admin</a></li>
                </ul>
            </li>


            <li>
                <a href=""><i class="fa fa-users fa-fw"></i> Customer Manager<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="{{ route('manage_customer') }}">Manage Customers</a></li>
                </ul>
            </li>

            <li>
                <a href=""><i class="fa fa-bar-chart-o fa-fw"></i> Category Manager<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('add-category') }}">Add Category</a>
                    </li>
                    <li>
                        <a href="{{ route('manage-category') }}">Manage Category</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href=""><i class="fa fa-bar-chart-o fa-fw"></i> Manufacturer Manager<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('add-manufacturer') }}">Add Manufacturer</a>
                    </li>
                    <li>
                        <a href="{{ route('manage-manufacturer') }}">Manage Manufacturer</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href=""><i class="fa fa-bar-chart-o fa-fw"></i> Product Status Manager<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('add-product-status') }}">Add Product Status Name</a>
                    </li>
                    <li>
                        <a href="{{ route('manage-product-status') }}">Manage Product Status Name</a>
                    </li>
                </ul>
            </li>



            <li>
                <a href=""><i class="fa fa-bar-chart-o fa-fw"></i> Product Manager<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('add-product') }}">Add Product</a>
                    </li>
                    <li>
                        <a href="{{ route('manage-product') }}">Manage Product</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href=""><i class="fa fa-bar-chart-o fa-fw"></i> Review Manager<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="{{ route('manage-review') }}">Manage Review</a></li>
                </ul>
            </li>

            <li>
                <a href="{{ route('manage-order') }}"><i class="fa fa-wrench fa-fw"></i> Manage Order</a>
            </li>

            <li>
                <a href=""><i class="fa fa-image"></i> Slider Manager<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="{{ route('slider_image') }}">Add Slider</a>
                    </li>
                    <li>
                        <a href="{{ route('manage_slider') }}">Manage Slider</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="{{ route('newsletter_subscriber') }}"><i class="fa fa-wrench fa-fw"></i>Newsletter Subscriber</a>
            </li>

            
              
        </ul>
    </div>
