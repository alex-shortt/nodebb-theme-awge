<div class="persona-usercard awge-usercard">
	<div class="awge-usercard-title">
		<h1 class="awge-windows-title-text">{username}</h1>
	</div>

	<div class="awge-windows-container awge-usercard-container">
		<a href="{config.relative_path}/user/{userslug}">
			<!-- IF picture -->
			<div class="usercard-picture" style="background-image:url({picture})"></div>
			<!-- ELSE -->
			<div class="usercard-picture" style="background-color: {icon:bgColor};">{icon:text}</div>
			<!-- ENDIF picture -->
		</a>
		<div class="usercard-body">
			<a href="{config.relative_path}/user/{userslug}">
			<span class="usercard-name"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></span><br />
			<span class="usercard-username"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></span>
			<!-- IF !banned -->
			<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>
			<!-- ENDIF !banned -->
			</a>
			<div class="row usercard-info awge-usercard-info">
				<div class="col-xs-4">
					<small>[[global:posts]]</small>
					<span class="human-readable-number">{postcount}</span>
				</div>
				<div class="col-xs-4">
					<small>[[global:reputation]]</small>
					<span class="human-readable-number">{reputation}</span>
				</div>

				<button class="btn-morph fab <!-- IF banned --> hide<!-- ENDIF banned -->">
				<span>
					<span class="s1"></span>
					<span class="s2"></span>
					<span class="s3"></span>
				</span>
			</button>
			</div>
		</div>
	</div>

	<div class="awge-windows-statusbar awge-usercard-statusbar">
		<div class="left">
			<p>© 2018 AWGE</p>
		</div>
		<div class="right">
		</div>
	</div>
</div>
