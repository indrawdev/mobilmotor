<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="row">
	<div class="col-md-6 col-md-offset-3">
		<div class="panel panel-default">
			<div class="panel-heading">Daftar</div>
			<div class="panel-body">
				<p>Daftar sebagai individu</p>
				<form class="form-horizontal" method="post">
					<div class="form-group">
						<label for="inputEmail" class="col-sm-4 control-label">Email</label>
						<div class="col-sm-8">
							<input type="text" name="fs_email" class="form-control" id="inputEmail" placeholder="Email">
							<input type="hidden" name="<?php echo $csrf_name; ?>" value="<?php echo $csrf_hash; ?>" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-4 control-label">Password</label>
						<div class="col-sm-8">
							<input type="password" name="fs_password" class="form-control" id="inputPassword" placeholder="Password">
						</div>
					</div>
					<div class="form-group">
						<label for="inputCPassword" class="col-sm-4 control-label">Confirm Password</label>
						<div class="col-sm-8">
							<input type="password" name="fs_confpass" class="form-control" id="inputCPassword" placeholder="Confirm Password">
						</div>
					</div>
					<button class=""></button>
				</form>
			</div>
		</div>
	</div>
</div>