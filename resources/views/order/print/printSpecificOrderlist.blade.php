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

        .invoice-table th, .invoice-table td {
            padding: 6px 12px;
            border: 1px solid #ddd;
            text-align: left;
            font-size: 14px;
        }

        .invoice-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .invoice-table th {
            background-color: #f2f2f2;
        }

        .invoice-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .invoice-header h2, .invoice-header p {
            margin: 0;
        }
    </style>
</head>
<body>

    <div class="invoice-header">
        <h2>{{$company[0]->name}}</h2>
        <p>{{$company[0]->address}}</p>
        <p>Email:{{$company[0]->email}} || Phone:{{$company[0]->phone}} || website:{{$company[0]->website}}</p>
        <h4>Order Invoice</h4>
    </div>
    <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 10px;">
        <p style="margin: 0;">Billing office: {{$cart[0]->user->name}}</p>
        <div class="qrImg">
            {!! QrCode::size(60)->generate('welcome Abir Bekare & Foods') !!}
        </div>
    </div><hr>

    <table class="invoice-table">
        <thead>
            <tr>
                <th>#</th>
                <th>Product Name</th>
                <th>Price per Item (৳)</th>
                <th>Quantity</th>
                <th>Total (৳)</th>
            </tr>
        </thead>
        <tbody>
            @foreach($cart as $key => $val)
            <tr>
                <td>{{ $key + 1 }}</td>
                <td>{{ $val->product->name }}</td>
                <td>{{ number_format($val->price, 2) }}</td>
                <td>{{ $val->quantity }}</td>
                <td>{{ number_format($val->price * $val->quantity, 2) }}</td>
            </tr>
            @endforeach
            <tr>
                <td colspan="4" style="text-align: right;"><strong>Subtotal:</strong></td>
                <td>৳{{ number_format($order->total, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;"><strong>Discount:</strong></td>
                <td>৳{{ number_format($order->discount, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;"><strong>VAT:</strong></td>
                <td>৳{{ number_format($order->vat, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;"><strong>Total Payable:</strong></td>
                <td>৳{{ number_format($order->payable, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;"><strong>Paid:</strong></td>
                <td>৳{{ number_format($order->pay, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;"><strong>Due:</strong></td>
                <td>৳{{ number_format($order->due, 2) }}</td>
            </tr>
        </tbody>
    </table>

    <div style="display: flex; justify-content: space-between; margin-top: 50px;">
        <div style="text-align: center;">
            <p>--------------------------</p>
            <strong>Manager Signature</strong>
        </div>
        <div style="text-align: center;">
            <p>--------------------------</p>
            <strong>Admin Signature</strong>
        </div>
    </div>

    <p class="note"><strong>Note:</strong> Developed by <strong>SAMIM-HosseN</strong>, created by <strong>SAMIM-HosseN</strong>. Call: +8801624209291</p>

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
