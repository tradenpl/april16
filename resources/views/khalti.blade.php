<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Pay via khalti</title>
  
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <style>
            body {
                font-family: 'Nunito', sans-serif;
            }
        </style>
    </head>
    <body class="antialiased">
        <script src="https://khalti.s3.ap-south-1.amazonaws.com/KPG/dist/2020.12.17.0.0.0/khalti-checkout.iffe.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

        <script>
                
            var config = {
                // replace the publicKey with yours
                "publicKey": "{{session::get('KHALTI_PUBLIC_KEY')}}",
                "productIdentity": "addfund",
                "productName": "addfund",
                "productUrl": "https://paidartists.com",
                "paymentPreference": [
                    "KHALTI",
                    "EBANKING",
                    "MOBILE_BANKING",
                    "CONNECT_IPS",
                    "SCT",
                    ],
                "eventHandler": {
                    onSuccess (payload) {
                        // hit merchant api for initiating verfication
                        $.ajax({
                            type : 'POST',
                            url : "{{ route('khalti.verifyPayment') }}",
                            data: {
                                token : payload.token,
                                amount : payload.amount,
                                "_token" : "{{ csrf_token() }}"
                            },
                            beforeSend:function(){
                                        $('body').html(`<div class='d-flex justify-content-center mt-5 pt-5'>
                    <div class="mt-4 spinner-border text-dark" role="status">
  <span class="sr-only">Loading...</span>
</div></div>`)
                                    },
                            success : function(res){
                                $('body').html(`<div class='d-flex justify-content-center mt-5 pt-5'>
                    <div class="mt-4 spinner-border text-dark" role="status">
  <span class="sr-only">Loading...</span>
</div></div>`)
console.log(res)
                               res=JSON.parse(res)
                                $.ajax({
                                    type : "POST",
                                    url : "{{ session()->get('call_url') }}",
                                    data : {
                                        response : res,
                                        id : res.idx,
                                        message_id : "{{session()->get('message_id')}}",
                                        isMessage : "{{session()->get('isMessage')}}",
                                        id : res.idx,
                                        amount : res.amount/100,
                                        "_token" : "{{ csrf_token() }}"
                                    },
                                    beforeSend:function(){
                                        $('body').html(`<div class='d-flex justify-content-center mt-5 pt-5'>
                    <div class="mt-4 spinner-border text-dark" role="status">
  <span class="sr-only">Loading...</span>
</div></div>`)
                                    },
                                    success: function(res){
                                        $('body').html(`<div class='d-flex justify-content-center mt-5 pt-5'>
                    <div class="mt-4 spinner-border text-dark" role="status">
  <span class="sr-only">Loading...</span>
</div></div>`)
                                        location.href=res.url
                                    }
                                });
                            }
                        });
                    },
                    onError (error) {
                        console.log(error);
                    },
                    onClose () {
                        console.log('widget is closing');
                    }
                }
            };

            var checkout = new KhaltiCheckout(config);
            var btn = document.getElementById("payment-button");
            window.onload = function () {
                // minimum transaction amount must be 10, i.e 1000 in paisa.
                checkout.show({amount: "{{session()->get('khalti_amount')}}"});
            }
        </script>
    </body>
</html>
