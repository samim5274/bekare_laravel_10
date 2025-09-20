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


    <link rel="icon" href="{{ asset('img/LOGO35 pix.png') }}" type="image/x-icon">  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Public+Sans:wght@300;400;500;600;700&display=swap" id="main-font-link">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('assets/fonts/tabler-icons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/feather.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/fontawesome.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/material.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}" id="main-style-link">
    <link rel="stylesheet" href="{{ asset('assets/css/style-preset.css') }}">
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <style>
        .icon{
            width:48px; height:48px; font-size:24px; box-shadow: 0 2px 6px rgba(13, 110, 253, 0.4);
        }
    </style>
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
                                <li class="breadcrumb-item"><a href="{{url('/')}}">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="{{url('/ber-code')}}">Product List</a></li>
                                <li class="breadcrumb-item" aria-current="page">Bercode</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row g-4">                
                <div class="container mt-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <div>
                            <h2 class="text-primary">{{ $product->name }}</h2>
                            
                        </div>
                        <div>
                            <p class="text-md">SKU: {{ $product->sku }} || Price: {{ $product->price }} || Stock: {{ $product->stock }}</p>
                        </div>
                    </div>

                    <div class="row">
                        @for($i = 1; $i <= $product->stock; $i++)
                            <div class="col-3 text-center mb-3">
                                <img src="data:image/png;base64,{{ $product->barcode }}" alt="barcode" class="img-fluid" style="max-height:80px;">
                                <p class="mt-1">{{ $product->name }} | {{ $product->price }}/-</p>
                            </div>
                        @endfor
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