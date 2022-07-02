<?php
session_start();
include "razorpay-php 6/Razorpay.php";
use Razorpay\Api\Api;

$amt = $_POST['amt'];
$des = $_POST['des'];
$r = $_SESSION['username'];

$orderData = [    
    'receipt'         => 'rcptid_12',    
    'amount'          => $amt*100, // 39900 rupees in paise
    'currency'        => 'INR'
];




$api = new Api("rzp_test_0cmfOyI8eY3RY9", "UbJBj3bKmuMlvWQESVgzJBeA");

$razorpayOrder = $api->order->create($orderData);
// echo $razorpayOrder['id'];

$data = [
    "key"               => "rzp_test_0cmfOyI8eY3RY9",
    "amount"            => "$amt*100",
    "name"              => "Ticketster",
    "description"       => "$des",
    "image"             => "https://cdn-icons-png.flaticon.com/512/1614/1614997.png",
    "prefill"           => [
    "name"              => "$r",
    "email"             => "",
    "contact"           => "",
    ],
    "notes"             => [
    "address"           => "Hello World",
    "merchant_order_id" => "12312321",
    ],
    "theme"             => [
    "color"             => "#ac92ec"
    ],
    "order_id"          => $razorpayOrder['id'],
];
$_SESSION['razorpay_order_id'] = $razorpayOrder['id'];
$_SESSION['amt'] = $amt;
$_SESSION['date'] = $_POST['date'];
$_SESSION['numtik'] = $_POST['numtik'];
$_SESSION['des'] = $_POST['des'];

$json = json_encode($data);
require "mannual.php";
?>