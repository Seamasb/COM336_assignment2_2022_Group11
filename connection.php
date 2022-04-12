<?php


$dbhost ="localhost";
$dbuser ="root";
$dbpass ="";
$dbname ="assignment_2";

if(!$con = mysql_connect($dbhost,$dbuser,$dbpass,$dbname))
{
		die("Failed to connect");
}