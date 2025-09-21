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
        .info-row {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 20px;
        }

        .info-text {
            max-width: 70%;
        }

        .qr-img {
            padding: 5px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

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

        #printableTable {
            font-size: 15px;
            background-color: #fff;
        }

        #printableTable thead th {
            background-color: #007bff;
            color: #fff;
            text-align: center;
        }

        #printableTable tbody td {
            vertical-align: middle;
        }

        #printableTable .table-info {
            font-weight: bold;
            background-color: #d1ecf1;
            color: #0c5460;
        }

        @media print {
            body {
                -webkit-print-color-adjust: exact;
            }
            .no-print {
                display: none;
            }
            #printableTable thead th {
                background-color: #007bff !important;
                color: white !important;
            }
            .table-info {
                background-color: #d1ecf1 !important;
            }
        }
    </style>
</head>
<body>

    <div class="invoice-box">
        <h1 style="text-align:center;">Abir Bekare & Foods</h1>
        <p style="text-align:center;">House # 02, Road # 11, Sector # 6, Uttara, Dhaka-1230</p>
        <h3 style="text-align:center;">Total Expenses List</h3>
        <div class="info-row">
            <div class="info-text">
                <h5>Date: {{ \Carbon\Carbon::parse($expenses[0]->date)->format('d M Y') }}</h5>
                <p><mark>Note: All company info is fetched from the company_info table.</mark></p>
            </div>
            <div class="qr-img">
                {!! QrCode::size(60)->generate('Abir Bekare & Foods') !!}
            </div>
        </div>

        <hr>
        <table class="table table-bordered table-striped" id="printableTable">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Date</th>
                    <th>User</th>
                    <th>Category</th>
                    <th>Sub-Category</th>
                    <th>Remark</th>
                    <th class="text-end">Amount (৳)</th>
                </tr>
            </thead>
            <tbody>
                @foreach($expenses as $key => $val)
                    <tr>
                        <td>{{ $key + 1 }}</td>
                        <td>{{ $val->date }}</td>
                        <td>{{$val->user->name}}</td>
                        <td>{{$val->category->name}}</td>
                        <td>{{$val->subcategory->name}}</td>
                        <td>{{$val->remark}}</td>
                        <td class="text-end">৳{{ number_format($val->amount, 2) }}</td>
                    </tr>
                @endforeach
                <tr class="table-info">
                    <td colspan="6" class="text-end">Total:</td>
                    <td class="text-end">৳{{ number_format($total, 2) }}/-</td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="signature-section">
        <div class="signature-block">
            Manager Signature
        </div>
        <div class="signature-block">
            Admin Signature
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
