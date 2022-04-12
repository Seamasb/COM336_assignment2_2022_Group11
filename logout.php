<?php

session_start();

if(isset($SESSION['user_id'])){
	unset(£_SESSION['user_id');
}

header("Location: login.php");
die;