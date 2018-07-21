<?php include 'koneksi.php' ?>
<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<link rel="stylesheet" type="text/css" href="admin/assets/css/bootstrap.css">
</head>
<style >
	body {
		background-image: url("foto_produk/Free-Dota-2-Backgrounds.jpg");
    	
		padding-top: 70px;
	}
</style>
<body>
<?php include 'menu.php' ?>


<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Sign Up</h3>
				</div>
				<div class="panel-body">
					<form method="post" class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-md-3">Name</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="nama" required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Email</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="email"required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Password</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="password"required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Adress</label>
							<div class="col-md-7">
								<textarea class="form-control" name="alamat"required></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Phone</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="telepon"required>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-7 col-md-offset-3">
								<button class="btn btn-primary" name="daftar">Register</button>
							</div>
						</div>
					</form>
					<?php 
						if (isset($_POST["daftar"])) {
							$nama = $_POST["nama"];
							$email = $_POST["email"];
							$password = $_POST["password"];
							$alamat = $_POST["alamat"];
							$telepon = $_POST["telepon"];

							$koneksi->query("SELECT*FROM  pelanggan WHERE email_pelanggan='$email'");
							$yangcocok = $ambil->num_rows;
							if($yangcocok==1){
								echo "<script>alert('This email already registered,please use another email');</script>";
								echo "<script>location='daftar.php';</script>";
							}
							else{
								$koneksi->query("INSERT INTO pelanggan(email_pelanggan,password_pelanggan,nama_pelanggan,telepon_pelanggan,alamat_pelanggan) VALUES ('$email','$password','$nama','$telepon','$alamat')");
								echo "<script>alert('Registration sucsess , redirect to login page ');</script>";
								echo "<script>location='login.php';</script>";
							}
						}

					 ?>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>