<!-- IF valid -->
<div class="well awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Reset Password</h1>
	</div>

	<div class="awge-windows-container">
		<!-- IF displayExpiryNotice -->
		<div class="alert alert-warning">
			[[reset_password:password_expired]]
		</div>
		<!-- ENDIF displayExpiryNotice -->
		<div class="alert alert-success hidden" id="success">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<strong>[[reset_password:password_changed.title]]</strong>
			<p>[[reset_password:password_changed.message]]</p>
		</div>
		<div class="alert alert-warning hidden" id="notice">
			<strong></strong>
			<p></p>
		</div>
		<form onsubmit="return false;" id="reset-form" class="row">
			<div class="col-sm-6">
				<label for="password">[[reset_password:new_password]]</label>
				<input class="form-control" type="password" placeholder="[[reset_password:new_password]]" id="password" /><br />
			</div>
			<div class="col-sm-6">
				<label for="repeat">[[reset_password:repeat_password]]</label>
				<input class="form-control" type="password" placeholder="[[reset_password:repeat_password]]" id="repeat" /><br />
			</div>
			<div class="col-xs-12">
				<button class="btn btn-primary btn-block" id="reset" type="submit">[[reset_password:reset_password]]</button>
			</div>
		</form>
	</div>
	
	<div class="awge-windows-statusbar">
		<div class="left">
			<p>© 2018 AWGE</p>
		</div>
		<div class="right">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
</div>
<!-- ELSE -->
<div class="panel panel-default panel-danger awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Reset Password</h1>
	</div>

	<div class="awge-windows-container">
		<div class="panel-heading">
			<h3 class="panel-title">[[reset_password:wrong_reset_code.title]]</h3>
		</div>
		<div class="panel-body">
			<p>[[reset_password:wrong_reset_code.message]]</p>
		</div>
	</div>

	<div class="awge-windows-statusbar">
		<div class="left">
			<p>© 2018 AWGE</p>
		</div>
		<div class="right">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
</div>
<!-- ENDIF valid -->

<!-- IMPORT partials/awge_page_script.tpl -->
