<?php 
session_start();

session_destroy();
echo "<script>alert('Sucsess Logout ');</script>";
echo "<script>location='index.php';</script>";
?>