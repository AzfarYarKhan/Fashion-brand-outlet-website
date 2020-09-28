
<?php
  $Name = $_POST['Name'];
  $password = $_POST['password'];

  // Database connection
  $conn = new mysqli('localhost:3307','root','','studentreg');
  if($conn->connect_error){
    echo "$conn->connect_error";
    die("Connection Failed : ". $conn->connect_error);
  }
  else {
    $stmt = $conn->prepare("select * from registration where name = ?  ");
    $stmt->bind_param("s", $Name);
    $stmt->execute();
     $stmt_result =  $stmt->get_result();
      if($stmt_result->num_rows > 0 )
      {
      	$data =  $stmt_result->fetch_assoc();
          if($Name ==""){
            echo "<h2>invalid credentials </h2>";
          }

      	  if($data['password']=== $password){
      	  	echo "<h2>login successful </h2>";
               echo "<a href='http://localhost/php/Project/cart.php' target='_blank'>Click here to proceed</a>"; 

 
      	  } else{
      	  	echo "<h2>invalid credentials </h2>";
      	  }


      }else{
      	echo "<h2> invalid credentials please retry</h2>";
      }
  }
?>







