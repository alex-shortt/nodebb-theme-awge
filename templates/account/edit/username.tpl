<!-- IMPORT partials/account/header.tpl -->

<div class="account awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Edit {username}'s Username</h1>
	</div>

	<div class="awge-windows-container">
		<form class="form-horizontal edit-form">
			<div class="control-group">
				<label class="control-label" for="inputNewUsername">[[user:username]]</label>
				<div class="controls">
					<input class="form-control" type="text" id="inputNewUsername" placeholder="[[user:username]]" value="{username}">
				</div>
			</div>

			<!-- disables autocomplete on FF --><input type="password" style="display:none">

			<!-- IF isSelf -->
			<div class="control-group">
				<label class="control-label" for="inputCurrentPassword">[[user:current_password]]</label>
				<div class="controls">
					<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value="" <!-- IF !hasPassword --> disabled
					<!-- ENDIF !hasPassword -->>
				</div>
			</div>
			<!-- ENDIF isSelf -->

			<input type="hidden" name="uid" id="inputUID" value="{uid}" />

			<br/>
			<div class="form-actions">
				<a id="submitBtn" href="#" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> [[user:change_username]]</a>
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
