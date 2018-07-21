<?php 
session_start();
$koneksi = new mysqli("localhost","root","","shop");
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>DOTOMERCH</title>
	<link rel="stylesheet" type="text/css" href="admin/assets/css/bootstrap.css">

</head>
<style>
/**
 * Demo Styles
 */

html {
  height: 100%;
  box-sizing: border-box;
}

*,
*:before,
*:after {
  box-sizing: inherit;
}

body {
  position: relative;
  margin: 0;
  padding-bottom: 6rem;
  min-height: 100%;
  font-family: "Helvetica Neue", Arial, sans-serif;
}

.demo {
  margin: 0 auto;
  padding-top: 64px;
  max-width: 640px;
  width: 94%;
}

.demo h1 {
  margin-top: 0;
}

/**
 * Footer Styles
 */

.footer {
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: #efefef;
  text-align: center;
}
.btn-primary,
.btn-primary:hover,
.btn-primary:active,
.btn-primary:visited,
.btn-primary:focus {
    background-color: #1972E2;
    border-color: #1972E2;
}
.jumbotron h1{
    color: #fff;
}

.jumbotron p{
    color: #fff;
}
	.jumbotron {
background-image: url("foto_produk/header3.jpg");
background-size: cover;}
</style>
<body>


<?php include 'menu.php'; ?>

<section>
	<div class="jumbotron">
  		<div class="container">
   	 		<h1>WELCOME TO DOTOMERCH SHOP !</h1>
  			<p>Official patner and merchandise DOTA2 around the World.</p>
  			<p><a class="btn btn-primary btn-lg" href="daftar.php" role="button">Sign Up and Shop Now!</a></p>
  		</div>
	</div>
</section>
<!--konten-->
<section class="konten">
	<div class="container">
		<h1>Fresh item ! limited Stock</h1>

		<div class="row">
			
			<?php $ambil=$koneksi->query("SELECT * FROM produk "); ?>
			<?php while($perproduk = $ambil->fetch_assoc()){ ?>
			
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<img src="foto_produk/<?php echo $perproduk['foto_produk']; ?>" alt="">
					<div class="caption">
						<h3><?php echo $perproduk['nama_produk']; ?></h3>
						<h5>Rp.<?php echo number_format($perproduk['harga_produk']); ?></h5>
						<a href="beli.php?id=<?php echo $perproduk['id_produk'] ?>" class="btn btn-primary">Buy</a>
						<a class="btn btn-default" href="detail.php?id=<?php echo $perproduk["id_produk"]; ?>">Detail</a>
					</div>
				</div>
			</div>
			<?php } ?>


		</div>
	</div>
</section>

<div class="demo">

<div class="footer">Project individu - UDINUS - 4407  - <strong>2018</strong>.</div>

</body>


</html>