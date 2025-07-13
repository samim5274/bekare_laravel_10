<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Home | Mantis Bootstrap 5 Admin Template</title>
    <!-- [Meta] -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Mantis is made using Bootstrap 5 design framework. Download the free admin template & use it for your project.">
    <meta name="keywords" content="Mantis, Dashboard UI Kit, Bootstrap 5, Admin Template, Admin Dashboard, CRM, CMS, Bootstrap Admin Template">
    <meta name="author" content="CodedThemes">


    <link rel="icon" href="./img/LOGO35 pix.png" type="image/x-icon"> 
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Public+Sans:wght@300;400;500;600;700&display=swap" id="main-font-link">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('assets/fonts/tabler-icons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/feather.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/fontawesome.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/material.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}" id="main-style-link">
    <link rel="stylesheet" href="{{ asset('assets/css/style-preset.css') }}">

</head>

<body data-pc-preset="preset-1" data-pc-direction="ltr" data-pc-theme="light">

    @include('layouts.menu')

    <div class="pc-container">
        <div class="pc-content">
            <div class="page-header">
                <div class="page-block">
                    <div class="row align-items-center">
                        <div class="col-md-12">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                                <li class="breadcrumb-item"><a href="{{url('/total-sale')}}">Report</a></li>
                                <li class="breadcrumb-item"><a href="{{url('/stock-report')}}">Stock Report</a></li>
                                <li class="breadcrumb-item" aria-current="page">Product Category Stock</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            @include('layouts.message')
            <div class="container mt-4">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="m-0">Total Product Category Stock Report</h4>
                    <h5 class="m-0 text-primary">
                        <a href="#" target="_blank"><i class="fa-solid fa-print"></i> Print </a>
                    </h5>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 grid-margin stretch-card">
                        <div class="card mt-2">
                            <div class="card-body p-2 p-md-4">
                                <form action="{{url('/category-stock-find')}}" method="GET" target="_blank">
                                    @CSRF
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="input-group mb-3">
                                                <div class="col-md-12">
                                                    <select id="Category" name="cbxCategory" class="form-select" required>
                                                        <option disabled selected >--Select Category--</option>
                                                        @foreach($category as $val)
                                                        <option value="{{$val->id}}">{{$val->name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="input-group mb-3">
                                                <input type="submit" class="btn btn-outline-primary w-50 py-2" value="Search">
                                                <button type="submit" name="print" value="1" class="btn btn-sm btn-primary d-flex align-items-center justify-content-center w-50 gap-1"><i class="fa-solid fa-print"></i><span>Print</span></button>
                                            </div>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">                    
                    <table class="table table-bordered table-striped " id="printableTable">
                        <thead class="table-primary">
                            <tr>
                                <th class="text-center">#</th>
                                <th>Product</th>
                                <th>Category</th>
                                <th class="text-center">Stock In</th>
                                <th class="text-center">Stock Out</th>
                                <th class="text-center">Available</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($stockSummary as $key => $val)
                            <tr>
                                <td class="text-center">{{ $key + 1 }}</td>
                                <td><a href="{{url('/edit-product/'.$val->product_id)}}">{{ $products[$val->product_id]->name ?? 'Unknown' }}</a></td>
                                <td>{{ $products[$val->product_id]->category->name ?? 'Unknown Category' }}</td>
                                <td class="text-center">{{$val->total_in}}</td>
                                <td class="text-center">{{$val->total_out}}</td>
                                <td class="text-center">{{$val->total_in - $val->total_out}}</td>
                            </tr>
                            @endforeach
                            <tr class="table-info">
                                <td colspan="3">Total:</td>
                                <td class="text-center">{{$totalStockIn}}</td>
                                <td class="text-center">{{$totalStockOut}}</td>
                                <td class="text-center">{{$totalStockIn - $totalStockOut}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h5></h5>
                    <div class="d-flex justify-content-end mt-3">
                        {{ $paginatedSummary->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div> 


    @include('layouts.footer')

    <script src="{{ asset('assets/js/plugins/popper.min.js') }}"></script>
    <script src="{{ asset('assets/js/plugins/simplebar.min.js') }}"></script>
    <script src="{{ asset('assets/js/plugins/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/js/fonts/custom-font.js') }}"></script>
    <script src="{{ asset('assets/js/pcoded.js') }}"></script>
    <script src="{{ asset('assets/js/plugins/feather.min.js') }}"></script>

</body>
</html>