<?php
header('Content-Type: application/json');
include "../db.php";

$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$address = $_POST['address'];

$stmt = $db->prepare("INSERT INTO student (name, email, phone, address) VALUES (?, ?, ?, ?)");
$result = $stmt->execute([$name, $email, $phone, $address]);

echo json_encode([
    'success' => $result
]);
