<!-- to avoide direct access to index page through URL  lock.php -->
<?php
error_reporting(0);
session_start();
include("dbinfo.php");

$user_check=$_SESSION['login_user'];

$ses_sql=mysql_query("select * from user where u_email='$user_check' ");

$row=mysql_fetch_array($ses_sql);

$login_session=$row['u_email'];
$o_id=$row['o_id'];
$u_name=$row['u_name'];
$u_addr=$row['u_addr'];
if(!isset($user_check))
{
header("Location:login.php");
}
?>