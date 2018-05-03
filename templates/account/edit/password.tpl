<!-- IMPORT partials/account/header.tpl -->

<div class="account awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Edit {username}'s Password</h1>
	</div>

	<div class="awge-windows-container">
		<form class="edit-form">
			<!-- disables autocomplete on FF --><input type="password" style="display:none">

			<!-- IF isSelf -->
			<div class="form-group">
				<label class="control-label" for="inputCurrentPassword">[[user:current_password]]</label>
				<div class="controls">
					<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value="" <!-- IF !hasPassword --> disabled
					<!-- ENDIF !hasPassword -->>
				</div>
			</div>
			<!-- ENDIF isSelf -->

			<div class="form-group">
				<label class="control-label" for="inputNewPassword">[[user:password]]</label>
				<input class="form-control" type="password" id="inputNewPassword" placeholder="[[user:password]]" value="">
				<span class="form-feedback" id="password-notify"></span>
			</div>

			<div class="form-group">
				<label class="control-label" for="inputNewPasswordAgain">[[user:confirm_password]]</label>
				<input class="form-control" type="password" id="inputNewPasswordAgain" placeholder="[[user:confirm_password]]" value="">
				<span class="form-feedback" id="password-confirm-notify"></span>
			</div>

			<div class="form-actions">
				<a id="changePasswordBtn" href="#" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> [[user:change_password]]</a>
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

<!-- IMPORT partials/awge_page_script.tpl -->