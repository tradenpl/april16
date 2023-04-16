<?php

namespace App\Http\Controllers;

use App\Models\PaymentGateways;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function sendkhalti($amount,$call_back_route,$id=null,$isMessage=null)
    {
      $paymentGateway = PaymentGateways::whereName('khalti')->firstOrFail();
      session()->put('khalti_amount',$amount*100);
      session()->put('KHALTI_PUBLIC_KEY',$paymentGateway->key);
      session()->put('call_url',route($call_back_route));
      session()->put('message_id',$id);
      session()->put('isMessage',$isMessage);
      return response()->json([
        'success' => true,
        'url' => route('addfund.khalti')
    ]);
    }

    public function KhaltiverifyPayment(Request $request)
    {
        $token = $request->token;
        $paymentGateway = PaymentGateways::whereName('khalti')->firstOrFail();

        $args = http_build_query(array(
            'token' => $token,
            'amount'  => 1000
        ));

        $url = "https://khalti.com/api/v2/payment/verify/";

        # Make the call using API.
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS,$args);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $secret_key = $paymentGateway->key_secret;
        $headers = ["Authorization: Key $secret_key"];
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

        // Response
        $response = curl_exec($ch);
        $status_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        return $response;
    }
}
