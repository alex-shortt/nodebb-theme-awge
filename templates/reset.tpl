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
		<div class="alert alert-info">
			[[reset_password:enter_email]]
		</div>

		<div class="alert alert-success hide" id="success">
			<button type="button" class="close" data-dismiss="alert">&times;</button> [[reset_password:password_reset_sent]]
		</div>
		<div class="alert alert-danger hide" id="error">
			<button type="button" class="close" data-dismiss="alert">&times;</button> [[reset_password:invalid_email]]
		</div>
		<form onsubmit="return false;">
			<input type="text" class="form-control input-block input-lg" placeholder="[[reset_password:enter_email_address]]" id="email" />

			<br />
			<button class="btn btn-primary btn-block btn-lg" id="reset" type="submit">[[reset_password:reset_password]]</button>
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

<!-- IMPORT partials/awge_page_script.tpl -->
