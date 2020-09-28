<?php
	$Name = $_POST['Name'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$Address = $_POST['Address'];
	$cnic = $_POST['cnic'];

	// Database connection
	$conn = new mysqli('localhost:3307','root','','studentreg');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	}
	else {
		$stmt = $conn->prepare("insert into registration(Name,  email, password, Address,cnic) values(?, ?, ?, ?, ?)");
		$stmt->bind_param("ssssi", $Name, $email, $password, $Address, $cnic);
		$execval = $stmt->execute();
		echo $execval;
		echo "Registered successfully...";
		$stmt->close();
		$conn->close();
	}
?>