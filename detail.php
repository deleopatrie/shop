<?php 
session_start();
$koneksi = new mysqli("localhost","root","","shop");
?>
<?php 
$id_produk = $_GET["id"];

$ambil = $koneksi->query("SELECT * FROM produk WHERE id_produk='$id_produk'");
$detail = $ambil->fetch_assoc();



 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title>Detail Product</title>
 	<link rel="stylesheet" type="text/css" href="admin/assets/css/bootstrap.css">
 </head>
 <style >
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
	body {
		padding-top: 70px;
	}
</style>
 <body>
 
<?php include 'menu.php'; ?>


<section class="kontent">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<img src="foto_produk/<?php echo $detail["foto_produk"]; ?>" alt="" class="img-responsive">
			</div>
			<div class="col-md-6">
				<h2><?php echo $detail["nama_produk"] ?></h2>
				<h4>Rp.<?php echo number_format($detail["harga_produk"]); ?></h4>

				<form method="post">
					<div class="form-group">
						<div class="input-group">
							<input type="number" min="1" class="form-control" name="jumlah">
							<div class="input-group-btn">
								<button class="btn btn-primary" name="beli">Buy</button>
							</div>
						</div>
					</div>
				</form>
				<?php 
				if (isset($_POST["beli"])) {
					$jumlah = $_POST["jumlah"];
					$_SESSION["keranjang"][$id_produk] = $jumlah;
					

					echo "<script>location='keranjang.php';</script>";
				}
				 ?>
				<p><?php echo $detail["deskripsi_produk"]; ?></p>
			</div>
		</div>
	</div>
</section>
<div class="demo">

<div class="footer">Project individu - UDINUS - 4407  - <strong>2018</strong>.</div>

</body>

 </body>
 </html>