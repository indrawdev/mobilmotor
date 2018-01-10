<nav class="navbar navbar-default">
	<div class="container">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="<?php echo base_url(); ?>">Mobil Bekas</a>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Beli <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="dropdown-header">Mobil</li>
						<li><a href="#">Mobil Baru</a></li>
						<li><a href="#">Mobil Bekas</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Jual <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<?php echo site_url('iklan'); ?>">Pasang Iklan <span class="label label-danger">GRATIS</span></a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Bagaimana pasang iklan mobil</a></li>
						<li><a href="#">Bagaimana pasang iklan motor</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Berita <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Semua Berita</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Mobil Baru</a></li>
						<li><a href="#">Berita Otomotif</a></li>
						<li><a href="#">Review</a></li>
						<li><a href="#">Panduan Otomotif</a></li>
					</ul>
				</li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="<?php echo site_url('login'); ?>">Masuk</a></li>
				<li><a href="<?php echo site_url('register'); ?>">Daftar</a></li>
				<div class="navbar-form navbar-left">
					<a href="<?php echo site_url('iklan'); ?>" class="btn btn-default">Pasang Iklan</a>
				</div>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Akun <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<?php echo site_url('listing'); ?>">Iklan Saya</a></li>
						<li><a href="<?php echo site_url('profile'); ?>">Profil</a></li>
						<li><a href="<?php echo site_url('iklan'); ?>">Pasang Iklan <span class="label label-danger">GRATIS</span></a></li>
						<li role="separator" class="divider"></li>
						<li><a href="<?php echo site_url('profile/logout'); ?>">Keluar</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>