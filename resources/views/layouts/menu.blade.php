<div class="loader-bg">
    <div class="loader-track">
        <div class="loader-fill"></div>
    </div>
</div>

<nav class="pc-sidebar">
    <div class="navbar-wrapper">
        <div class="m-header">
            <a href="{{url('/')}}" class="b-brand text-primary">
                <img src="{{ asset('/img/LOGO35 pix.png') }}" class="img-fluid logo-lg" alt="logo"> ABID Foods & Bekare
            </a>
        </div>
        <div class="navbar-content">
            <ul class="pc-navbar">
                <li class="pc-item">
                    <a href="{{url('/')}}" class="pc-link">
                        <span class="pc-micon"><i class="fa-solid fa-gauge"></i></span>
                        <span class="pc-mtext">Dashboard</span>
                    </a>
                </li>
                <li class="pc-item">
                    <a href="{{url('/product-view')}}" class="pc-link">
                        <span class="pc-micon"><i class="fa-solid fa-chart-simple"></i></span>
                        <span class="pc-mtext">Product</span>
                    </a>
                </li>
                <li class="pc-item">
                    <a href="{{url('/sale-view')}}" class="pc-link">
                        <span class="pc-micon"><i class="fa-solid fa-tag"></i></span>
                        <span class="pc-mtext">Sale</span>
                    </a>
                </li>
                <li class="pc-item">
                    <a href="{{url('/cart-view')}}" class="pc-link">
                        <span class="pc-micon"><i class="fa-solid fa-cart-shopping"></i></span>
                        <span class="pc-mtext">Cart @if($cart)<span class="badge bg-primary">{{ $cart }}</span>@endif</span>
                    </a>
                </li>
                <li class="pc-item">
                    <a href="{{url('/payment-order')}}" class="pc-link">
                        <span class="pc-micon"><i class="fa-solid fa-cart-flatbed"></i></span>
                        <span class="pc-mtext">Order list</span>
                    </a>
                </li>
                <li class="pc-item">
                    <a href="{{url('/product-stock')}}" class="pc-link">
                        <span class="pc-micon"><i class="fa-solid fa-chart-pie"></i></span>
                        <span class="pc-mtext">Stock</span>
                    </a>
                </li>
                <li class="pc-item">
                    <a href="#" class="pc-link">
                        <span class="pc-micon"><i class="fa-solid fa-id-card-clip"></i></span>
                        <span class="pc-mtext">Profile</span>
                    </a>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link"><span class="pc-micon"><i class="ti ti-menu"></i></span><span class="pc-mtext">Reports</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="{{url('/total-sale')}}">Total Sale</a></li>
                        <li class="pc-item"><a class="pc-link" href="{{url('/paid-list')}}">Paid List</a></li>
                        <li class="pc-item"><a class="pc-link" href="{{url('/due-list')}}">Due List</a></li>
                        <li class="pc-item pc-hasmenu">
                            <a href="#!" class="pc-link">Select Date Report<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                            <ul class="pc-submenu">
                                <li class="pc-item"><a class="pc-link" href="{{url('/select-day-wise-sale-report')}}">Day wise Total Sale</a></li>
                                <li class="pc-item"><a class="pc-link" href="{{url('/select-day-wise-paid-sale-report')}}">Day wise Paid Sale</a></li>
                                <li class="pc-item"><a class="pc-link" href="{{url('/select-day-wise-due-sale-report')}}">Day wise Due Sale</a></li>
                                <li class="pc-item"><a class="pc-link" href="{{url('/item-wise-sale')}}">Item wise Sale</a></li>
                                <li class="pc-item"><a class="pc-link" href="{{url('/item-date-wise-sale')}}">Item & Date wise Sale</a></li>
                                <li class="pc-item"><a class="pc-link" href="{{url('/category-wise-sale')}}">Category Wise Sale</a></li>
                                <li class="pc-item"><a class="pc-link" href="{{url('/category-date-sale')}}">Category & Date Wise Sale</a></li>
                                <li class="pc-item pc-hasmenu">
                                <a href="#!" class="pc-link">Level 3.3<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                                    <ul class="pc-submenu">
                                        <li class="pc-item"><a class="pc-link" href="#!">Level 4.1</a></li>
                                        <li class="pc-item"><a class="pc-link" href="#!">Level 4.2</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="pc-item pc-hasmenu">
                            <a href="#!" class="pc-link">Stock Report<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                            <ul class="pc-submenu">
                                <li class="pc-item"><a class="pc-link" href="{{url('/stock-report')}}">Stock</a></li>
                                <li class="pc-item"><a class="pc-link" href="#!">Product Stock</a></li>
                                <li class="pc-item"><a class="pc-link" href="#!">Stock Category</a></li>
                                <li class="pc-item pc-hasmenu">
                                <a href="#!" class="pc-link">Date Wise<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                                    <ul class="pc-submenu">
                                        <li class="pc-item"><a class="pc-link" href="#!">Date wise Stock</a></li>
                                        <li class="pc-item"><a class="pc-link" href="#!">Date & Category wise Stock</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="pc-item">
                    <a href="#" class="pc-link">
                        <span class="pc-micon"><i class="fa-solid fa-gear"></i></span>
                        <span class="pc-mtext">Setting</span>
                    </a>
                </li>
                <li class="pc-item">
                    <a href="#" class="pc-link">
                        <span class="pc-micon"><i class="fa-solid fa-right-from-bracket"></i></span>
                        <span class="pc-mtext">Logout</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header class="pc-header">
    <div class="header-wrapper"> 
        <div class="me-auto pc-mob-drp">
            <ul class="list-unstyled">
                <!-- ======= Menu collapse Icon ===== -->
                <li class="pc-h-item pc-sidebar-collapse">
                <a href="#" class="pc-head-link ms-0" id="sidebar-hide">
                    <i class="ti ti-menu-2"></i>
                </a>
                </li>
                <li class="pc-h-item pc-sidebar-popup">
                <a href="#" class="pc-head-link ms-0" id="mobile-collapse">
                    <i class="ti ti-menu-2"></i>
                </a>
                </li>
                <li class="dropdown pc-h-item d-inline-flex d-md-none">
                <a
                    class="pc-head-link dropdown-toggle arrow-none m-0"
                    data-bs-toggle="dropdown"
                    href="#"
                    role="button"
                    aria-haspopup="false"
                    aria-expanded="false"
                >
                    <i class="ti ti-search"></i>
                </a>
                <div class="dropdown-menu pc-h-dropdown drp-search">
                    <form class="px-3">
                    <div class="form-group mb-0 d-flex align-items-center">
                        <i data-feather="search"></i>
                        <input type="search" class="form-control border-0 shadow-none" placeholder="Search here. . .">
                    </div>
                    </form>
                </div>
                </li>
                <li class="pc-h-item d-none d-md-inline-flex">
                <form class="header-search">
                    <i data-feather="search" class="icon-search"></i>
                    <input type="search" class="form-control" placeholder="Search here. . .">
                </form>
                </li>
            </ul>
        </div>
        <div class="ms-auto">
            <ul class="list-unstyled">
                <li class="dropdown pc-h-item">
                <a
                    class="pc-head-link dropdown-toggle arrow-none me-0"
                    data-bs-toggle="dropdown"
                    href="#"
                    role="button"
                    aria-haspopup="false"
                    aria-expanded="false"
                >
                    <i class="ti ti-mail"></i>
                </a>
                <div class="dropdown-menu dropdown-notification dropdown-menu-end pc-h-dropdown">
                    <div class="dropdown-header d-flex align-items-center justify-content-between">
                    <h5 class="m-0">Message</h5>
                    <a href="#!" class="pc-head-link bg-transparent"><i class="ti ti-x text-danger"></i></a>
                    </div>
                    <div class="dropdown-divider"></div>
                    <div class="dropdown-header px-0 text-wrap header-notification-scroll position-relative" style="max-height: calc(100vh - 215px)">
                    <div class="list-group list-group-flush w-100">
                        <a class="list-group-item list-group-item-action">
                        <div class="d-flex">
                            <div class="flex-shrink-0">
                            <img src="{{ asset('/img/LOGO35 pix.png') }}" alt="user-image" class="user-avtar">
                            </div>
                            <div class="flex-grow-1 ms-1">
                            <span class="float-end text-muted">3:00 AM</span>
                            <p class="text-body mb-1">It's <b>Cristina danny's</b> birthday today.</p>
                            <span class="text-muted">2 min ago</span>
                            </div>
                        </div>
                        </a>
                        <a class="list-group-item list-group-item-action">
                        <div class="d-flex">
                            <div class="flex-shrink-0">
                            <img src="{{ asset('/img/LOGO35 pix.png') }}" alt="user-image" class="user-avtar">
                            </div>
                            <div class="flex-grow-1 ms-1">
                            <span class="float-end text-muted">6:00 PM</span>
                            <p class="text-body mb-1"><b>Aida Burg</b> commented your post.</p>
                            <span class="text-muted">5 August</span>
                            </div>
                        </div>
                        </a>
                        <a class="list-group-item list-group-item-action">
                        <div class="d-flex">
                            <div class="flex-shrink-0">
                            <img src="{{ asset('/img/LOGO35 pix.png') }}" alt="user-image" class="user-avtar">
                            </div>
                            <div class="flex-grow-1 ms-1">
                            <span class="float-end text-muted">2:45 PM</span>
                            <p class="text-body mb-1"><b>There was a failure to your setup.</b></p>
                            <span class="text-muted">7 hours ago</span>
                            </div>
                        </div>
                        </a>
                        <a class="list-group-item list-group-item-action">
                        <div class="d-flex">
                            <div class="flex-shrink-0">
                            <img src="{{ asset('/img/LOGO35 pix.png') }}" alt="user-image" class="user-avtar">
                            </div>
                            <div class="flex-grow-1 ms-1">
                            <span class="float-end text-muted">9:10 PM</span>
                            <p class="text-body mb-1"><b>Cristina Danny </b> invited to join <b> Meeting.</b></p>
                            <span class="text-muted">Daily scrum meeting time</span>
                            </div>
                        </div>
                        </a>
                    </div>
                    </div>
                    <div class="dropdown-divider"></div>
                    <div class="text-center py-2">
                    <a href="#!" class="link-primary">View all</a>
                    </div>
                </div>
                </li>
                <li class="dropdown pc-h-item header-user-profile">
                <a
                    class="pc-head-link dropdown-toggle arrow-none me-0"
                    data-bs-toggle="dropdown"
                    href="#"
                    role="button"
                    aria-haspopup="false"
                    data-bs-auto-close="outside"
                    aria-expanded="false"
                >
                    <img src="{{ asset('/img/LOGO35 pix.png') }}" alt="user-image" class="user-avtar">
                    <span>SAMIM-HosseN</span>
                </a>
                <div class="dropdown-menu dropdown-user-profile dropdown-menu-end pc-h-dropdown">
                    <div class="dropdown-header">
                    <div class="d-flex mb-1">
                        <div class="flex-shrink-0">
                        <img src="{{ asset('/img/LOGO35 pix.png') }}" alt="user-image" class="user-avtar wid-35">
                        </div>
                        <div class="flex-grow-1 ms-3">
                        <h6 class="mb-1">SAMIM-HosseN</h6>
                        <span>Admin</span>
                        </div>
                        <a href="{{url('/login')}}" class="pc-head-link bg-transparent"><i class="ti ti-power text-danger"></i></a>
                    </div>
                    </div>
                    <ul class="nav drp-tabs nav-fill nav-tabs" id="mydrpTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button
                        class="nav-link active"
                        id="drp-t1"
                        data-bs-toggle="tab"
                        data-bs-target="#drp-tab-1"
                        type="button"
                        role="tab"
                        aria-controls="drp-tab-1"
                        aria-selected="true"
                        ><i class="ti ti-user"></i> Profile</button
                        >
                    </li>
                    <li class="nav-item" role="presentation">
                        <button
                        class="nav-link"
                        id="drp-t2"
                        data-bs-toggle="tab"
                        data-bs-target="#drp-tab-2"
                        type="button"
                        role="tab"
                        aria-controls="drp-tab-2"
                        aria-selected="false"
                        ><i class="ti ti-settings"></i> Setting</button
                        >
                    </li>
                    </ul>
                    <div class="tab-content" id="mysrpTabContent">
                    <div class="tab-pane fade show active" id="drp-tab-1" role="tabpanel" aria-labelledby="drp-t1" tabindex="0">
                        <a href="#!" class="dropdown-item">
                        <i class="ti ti-edit-circle"></i>
                        <span>Edit Profile</span>
                        </a>
                        <a href="#!" class="dropdown-item">
                        <i class="ti ti-user"></i>
                        <span>View Profile</span>
                        </a>
                        <a href="#!" class="dropdown-item">
                        <i class="ti ti-clipboard-list"></i>
                        <span>Social Profile</span>
                        </a>
                        <a href="#!" class="dropdown-item">
                        <i class="ti ti-wallet"></i>
                        <span>Billing</span>
                        </a>
                        <a href="{{url('/login')}}" class="dropdown-item">
                        <i class="ti ti-power"></i>
                        <span>Logout</span>
                        </a>
                    </div>
                    <div class="tab-pane fade" id="drp-tab-2" role="tabpanel" aria-labelledby="drp-t2" tabindex="0">
                        <a href="#!" class="dropdown-item">
                        <i class="ti ti-help"></i>
                        <span>Support</span>
                        </a>
                        <a href="#!" class="dropdown-item">
                        <i class="ti ti-user"></i>
                        <span>Account Settings</span>
                        </a>
                        <a href="#!" class="dropdown-item">
                        <i class="ti ti-lock"></i>
                        <span>Privacy Center</span>
                        </a>
                        <a href="#!" class="dropdown-item">
                        <i class="ti ti-messages"></i>
                        <span>Feedback</span>
                        </a>
                        <a href="#!" class="dropdown-item">
                        <i class="ti ti-list"></i>
                        <span>History</span>
                        </a>
                    </div>
                    </div>
                </div>
                </li>
            </ul>
        </div>
    </div>
</header>