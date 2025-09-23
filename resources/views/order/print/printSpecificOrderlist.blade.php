<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Print Total Order List</title>
    <link rel="icon" href="./img/LOGO35 pix.png" type="image/x-icon">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Public+Sans:wght@300;400;500;600;700&display=swap">
    <style>
        body {
            font-family: 'Public Sans', DejaVu Sans, sans-serif;
            font-size: 14px;
            margin: 40px;
            color: #333;
        }

        h2, h4 {
            margin: 0;
        }

        p {
            margin: 2px 0;
        }

        .invoice-header {
            text-align: center;
            margin-bottom: 15px;
        }

        .invoice-header h2 {
            font-size: 24px;
            font-weight: 600;
        }

        .invoice-header p {
            font-size: 10px;
            color: #555;
        }

        .invoice-subheader {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 15px 0;
            padding: 5px 12px;
            border: 1px solid #ddd;
            border-radius: 6px;
            background: #f9f9f9;
        }

        .invoice-subheader p {
            margin: 0;
            font-size: 13px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        table th, table td {
            border: 1px solid #ddd;
            padding: 8px 10px;
            text-align: left;
            font-size: 13px;
        }

        table th {
            background: #f2f2f2;
            font-weight: 600;
        }

        table tfoot td {
            font-weight: 600;
        }

        .signatures {
            display: flex;
            justify-content: space-between;
            margin-top: 60px;
        }

        .signature-block {
            text-align: center;
            width: 200px;
        }

        .signature-block p {
            margin-bottom: 5px;
        }

        .note {
            margin-top: 40px;
            font-size: 12px;
            text-align: center;
            color: #666;
        }

        @media print {
            body {
                margin: 0;
                font-size: 12px;
            }

            .note {
                position: fixed;
                bottom: 10px;
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <div class="invoice-header">
        <h2>{{ $company[0]->name }}</h2>
        <p>{{ $company[0]->address }}</p>
        <p>Email: {{ $company[0]->email }} || Phone: {{ $company[0]->phone }} || Website: {{ $company[0]->website }}</p>
        <h4>Order Invoice</h4>
    </div>

    <div class="invoice-subheader">
        <p>
            <strong>Billing Office:</strong> {{ $cart[0]->user->name }}
            || <strong>C.Name:</strong> {{ $order->customerName }}
            || <strong>C.Phone:</strong> {{ $order->customerPhone }}
        </p>
        <!-- QR Code area (optional) -->
        <div>{!! QrCode::size(25)->generate('welcome Abir Bekare & Foods') !!}</div>
    </div>

    <table>
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
        </tbody>
        <tfoot>
            <tr>
                <td colspan="4" style="text-align: right;">Subtotal:</td>
                <td>৳{{ number_format($order->total, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;">Discount:</td>
                <td>৳{{ number_format($order->discount, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;">VAT:</td>
                <td>৳{{ number_format($order->vat, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;">Total Payable:</td>
                <td>৳{{ number_format($order->payable, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;">Paid:</td>
                <td>৳{{ number_format($order->pay, 2) }}</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;">Due:</td>
                <td>৳{{ number_format($order->due, 2) }}</td>
            </tr>
        </tfoot>
    </table>

    <div class="signatures">
        <div class="signature-block">
            <p>--------------------------</p>
            <strong>Manager Signature</strong>
        </div>
        <div class="signature-block">
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