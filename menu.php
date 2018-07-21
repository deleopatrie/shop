<nav class="navbar navbar-inverse navbar-fixed-top ">
	<div class="container-fluid">
		<div class="navbar-header">
    	<button type="button" class="navbar-toggle" data-toggle="collapse" 
            data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    	</button>
    	<a class="navbar-brand" rel="home" href="index.php" title="No.1 Merch shop in Indonesia !">
    	    <img style="max-width:100px; margin-top: -7px;"
             src="foto_produk/logo.png">
    	</a>
	</div>
    <p class="navbar-text"><b>DOTOMERCH</b></p>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="index.php">Home</a></li>
		<li><a href="keranjang.php">Cart</a></li>
		<?php if (isset($_SESSION["pelanggan"])): ?>
			<li><a href="logout.php">Logout</a></li>
		<?php else: ?>
		<li><a href="login.php">Login</a></li>
		<li><a href="daftar.php">Sign Up</a></li>
		<?php endif ?>
		<li><a href="checkout.php">Checkout</a></li>
	</ul>
	</div>
</nav>
