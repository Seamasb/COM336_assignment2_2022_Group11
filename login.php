<?php
session_start();

	include("connection.php");
	include("functions.php");

	if($SERVER['REQUEST_METHOD'] == "post"){
		//something was posted
		$user_name =$_POST['user_name'];
		$password = $_POST['password'];
	
		if(!empty(%user_name) && !empty($password)&& ! is_numeric(user_name)){
			//read from database
			$query = "select * from users wher user_name = $user_name limit 1";
			//check username
			$result = mysqli_query($con, $query);
			
			if($result){
				if(result && mysqli_num_rows($result)) >0){
					$user_data =msqli_fetch_assoc($result);
					if($user_data['password'] == $password){
						$_SESSION['user_id'] = user_data['user_id'];
						header("Location: index.php");
						die;
					}
				}
			}
			echo "Incorrect Username or password!";
		}else{
			echo "Please enter valid information";
		}
	}
?>


<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
	</head>
	<body>
	
		<style type="text/css">
		#text{
			height: 25px;
			border-radius: 5px;
			padding: 4px;
			border: solid thin #aaa;
			width: 90%;
		}
		
		#button{
		
			padding: 10px;
			width: 100px;
			color: white;
			background-color: lightblue;
			border: none;
		}
		
		#box{
			
			background-color: grey;
			margin: auto;
			width: 400px;
			padding: 20px
		}
		</style>
		
		<div id="box">
			
			<form method="post">
			<div style="font-size: 20px; margin: 10px;color: white;">Login</div>
			
				<input id="text" type "text" name="user_name"></br></br>
				<input id="text"type "password" name="password"></br></br>
				
				<input id="button"type="submit" value="Login"></br></br>
				
				<a href="signup.php">Click to Signup</a></br></br>
			</form>
		
	</body>
	</html>