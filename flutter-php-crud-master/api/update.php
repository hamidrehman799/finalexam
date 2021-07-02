<?php
header('Content-Type: application/json');
include "../db.php";

$id = $_POST['id'];
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$address = $_POST['address'];

$stmt = $db->prepare("UPDATE student SET name = ?, email = ?, phone = ?, address = ? WHERE id = ?");
$result =  $stmt->execute([$name, $email, $phone, $address, $id]);

echo json_encode([
    'success' => $result
]);
