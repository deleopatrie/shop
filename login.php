<?php
session_start();

$koneksi = new mysqli("localhost","root","","shop");

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login User</title>
	<link rel="stylesheet" href="admin/assets/css/bootstrap.css">
</head>
<style >
	body {
		background-image: url("foto_produk/thumb-1920-753311.jpg");
    	
		padding-top: 70px;
	}
</style>
<body >

<?php include 'menu.php'; ?>


<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Login User</h3>
				</div>
				<div class="panel-body">
					<form method="post">
						<div class="form-group">
							<label>Email</label>
							<input type="email" class="form-control" name="email">
						</div>
						<div class="form-group">
							<label>Password</label>
							<input type="password" class="form-control" name="password">
						</div>
						<button class="btn btn-primary" name="login">Login</button>
						<button class="btn btn-default" name="Dont have account? Register here">Register</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php 
if (isset($_POST["login"])){
	$email = $_POST["email"];
	$password = $_POST["password"];


	$ambil = $koneksi->query("SELECT * FROM pelanggan WHERE email_pelanggan='$email' AND password_pelanggan='$password'");

	$sucsess = $ambil->num_rows;

	if ($sucsess==1){
		$akun = $ambil->fetch_assoc();
		$_SESSION["pelanggan"] = $akun;
		echo "<script>alert('sucsess');</script>";
		echo "<script>location='checkout.php';</script>";
	}
	else{
		echo "<script>alert('invalid email or password please try again ');</script>";
		echo "<script>location='login.php';</script>";
	}
}

?>

</body>
</html>