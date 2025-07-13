<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Print Total Order List</title>
    <link rel="icon" href="./img/LOGO35 pix.png" type="image/x-icon"> 
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Public+Sans:wght@300;400;500;600;700&display=swap" id="main-font-link">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('assets/fonts/tabler-icons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/feather.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/fontawesome.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/fonts/material.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}" id="main-style-link">
    <link rel="stylesheet" href="{{ asset('assets/css/style-preset.css') }}">
    <style>
        body { font-family: DejaVu Sans, sans-serif; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f4f4f4; }
        h2 { margin-bottom: 0; }
        p { margin-top: 2px; margin-bottom: 5px; }
        .signature-section {
            display: flex;
            justify-content: space-between;
            margin-top: 80px;
            page-break-inside: avoid;
        }
        .signature-block {
            width: 45%;
            text-align: center;
            border-top: 1px solid #000;
            padding-top: 5px;
            font-weight: bold;
        }

    /* Table styling */
    table.print-table {
        width: 100%;
        border-collapse: collapse;
        font-family: Arial, sans-serif;
        font-size: 14px;
        margin-top: 20px;
    }

    .print-table th,
    .print-table td {
        border: 1px solid #000;
        padding: 8px;
        text-align: left;
    }

    .print-table thead {
        background-color: #f0f0f0;
        font-weight: bold;
    }

    .print-table tfoot td {
        font-weight: bold;
        background-color: #e9ecef;
    }

    .text-center {
        text-align: center;
    }

    .status-available {
        color: green;
        font-weight: bold;
    }

    .status-unavailable {
        color: red;
        font-weight: bold;
    }

    /* Print-specific styles */
    @media print {
        body {
            margin: 0;
            padding: 0;
        }

        a[href]:after {
            content: "";
        }
    }
    </style>
</head>
<body>

    <div class="invoice-box">
        <h1 style="text-align:center;">Abir Bekare & Foods</h1>
        <p style="text-align:center;">House # 02, Road # 11, Sector # 6, Uttara, Dhaka-1230</p>
        <h5 style="text-align:center;">Print Total Stock list</h5>
        <p><mark>Note: All company info get from database company info table.</mark></p>
        <hr>
        <div class="qrImg">
            {!! QrCode::size(60)->generate('Abir Bekare & Foods') !!}
        </div>
        <table class="print-table" id="printableTable">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Category</th>
                <th>Sub-Category</th>
                <th class="text-center">Stock</th>
                <th class="text-center">Price (৳)</th>
                <th class="text-center">Status</th>
            </tr>
        </thead>
        <tbody>
            @foreach($product as $key => $val)
            <tr>
                <td>{{ $key + 1 }}</td>
                <td>{{ $val->name }}</td>
                <td>{{ $val->category->name }}</td>
                <td>{{ $val->subcategory->name }}</td>
                <td class="text-center">{{ $val->stock }}</td>
                <td class="text-center">৳{{ $val->price }}/-</td>
                <td class="text-center">
                    @if($val->availability)
                        <span class="status-available">Available</span>
                    @else
                        <span class="status-unavailable">Not Available</span>
                    @endif                                    
                </td>
            </tr>
            @endforeach
            <tr>
                <td colspan="4">Total:</td>
                <td class="text-center">{{ $stock }}</td>
                <td class="text-center">৳{{ $price }}/-</td>
                <td></td>
            </tr>
        </tbody>
    </table>
    <h5>Total Stock Price (৳): {{$stock * $price}}/-</h5>
    </div>

    <div class="signature-section">
        <div class="signature-block">
            Manager Signature
        </div>
        <div class="signature-block">
            Admin Signature
        </div>
    </div>

    <p class="small"><strong>Note:</strong> This Software develop by <strong>BGMIT</strong> created by <strong>SAMIM-HosseN</strong>. Call: +8801 62420 9291. Thank You!</p>

     <script>
        window.onload = function() {
            window.print();
            setTimeout(() => {
                window.close();
            }, 300); 
        };
    </script>
</body>
</html>
