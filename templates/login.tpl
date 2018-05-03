<div class="row awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Login</h1>
	</div>
	
	<div class="awge-windows-container">
		<!-- IF allowLocalLogin -->
		<div class="<!-- IF alternate_logins -->col-md-6<!-- ELSE -->col-md-12<!-- ENDIF alternate_logins -->">
			<div class="login-block">
				<div class="alert alert-danger" id="login-error-notify" <!-- IF error -->style="display:block"
					<!-- ELSE -->style="display: none;"
					<!-- ENDIF error -->>
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong>[[login:failed_login_attempt]]</strong>
					<p>{error}</p>
				</div>

				<form class="form-horizontal" role="form" method="post" id="login-form">
					<div class="form-group">
						<label for="username" class="col-lg-2 control-label">{allowLoginWith}</label>
						<div class="col-lg-10">
							<input class="form-control" type="text" placeholder="{allowLoginWith}" name="username" id="username" autocorrect="off" autocapitalize="off" value="{username}" />
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-lg-2 control-label">[[user:password]]</label>
						<div class="col-lg-10">
							<input class="form-control" type="password" placeholder="[[user:password]]" name="password" id="password" <!-- IF username -->autocomplete="off"
							<!-- ENDIF username -->/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<div class="checkbox">
								<label>
								<input type="checkbox" name="remember" id="remember" checked /> [[login:remember_me]]
							</label>
							</div>
						</div>
					</div>
					<input type="hidden" name="_csrf" value="{config.csrf_token}" />
					<input type="hidden" name="noscript" id="noscript" value="true" />
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<button class="btn btn-primary btn-lg btn-block" id="login" type="submit">[[global:login]]</button>
							<!-- IF allowRegistration -->
							<span>[[login:dont_have_account]] <a href="{config.relative_path}/register">[[register:register]]</a></span>
							<!-- ENDIF allowRegistration -->
							&nbsp; <a id="reset-link" href="{config.relative_path}/reset">[[login:forgot_password]]</a>
						</div>
					</div>
				</form>

			</div>
		</div>
		<!-- ENDIF allowLocalLogin -->

		<!-- IF alternate_logins -->
		<div class="<!-- IF allowLocalLogin -->col-md-6<!-- ELSE -->col-md-12<!-- ENDIF allowLocalLogin -->">
			<div class="alt-login-block">
				<h4>[[login:alternative_logins]]</h4>
				<ul class="alt-logins">
					<!-- BEGIN authentication -->
					<li class="{authentication.name}"><a rel="nofollow" target="_top" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-3x"></i></a></li>
					<!-- END authentication -->
				</ul>
			</div>
		</div>
		<!-- ENDIF alternate_logins -->
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