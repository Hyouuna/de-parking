<!DOCTYPE html>
<html>

<head>
    <title>Ticket</title>
    <style>
        body {
            font-family: monospace;
            font-size: 12px;
            margin: 0;
            padding: 10px;
        }

        .container {
            width: 100%;
            position: relative;
        }

        .header {
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .status {
            position: absolute;
            top: 0;
            left: 0;
            font-size: 10px;
        }

        .code {
            text-align: center;
            font-size: 26px;
            font-weight: bold;
            margin: 40px 0 10px 0;
        }

        .plate {
            text-align: center;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .date {
            text-align: right;
            font-size: 10px;
        }

        .line {
            border-top: 1px dashed black;
            margin: 10px 0;
        }
    </style>
</head>

<body>

    <div class="container">

        <div class="status">
            {{ strtoupper($ticket->status) }}
        </div>

        <div class="header">
            DE-PARKING
        </div>

        <div class="line"></div>

        <div class="code">
            {{ strtoupper($ticket->ticket_code) }}
        </div>

        <div class="plate">
            {{ $ticket->vehicle->plat_number ?? '-' }}
        </div>

        <div class="line"></div>

        <div class="date">
            {{ \Carbon\Carbon::parse($ticket->time_in)->format('d/m/Y H:i') }}
        </div>

    </div>

</body>

</html>