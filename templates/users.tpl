<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="users awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Users</h1>
	</div>

	<div class="row">
		<div class="col-lg-6">
			<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<div class="col-xs-3 text-right">
			<!-- IF inviteOnly -->
			<!-- IF loggedIn -->
			<a component="user/invite" class=""><i class="fa fa-users"></i> [[users:invite]]</a>
			<!-- ENDIF loggedIn -->
			<!-- ENDIF inviteOnly -->
		</div>
		<!-- IF function.displayUserSearch, {config.allowGuestUserSearching} -->
		<div class="col-lg-3 col-xs-9">
			<div class="search">
				<div class="input-group">
					<input class="form-control awge-windows-toolbar-input" id="search-user" type="text" placeholder="[[users:enter_username]]" />
					<span class="input-group-addon awge-windows-toolbar-searchindicator">
						<i component="user/search/icon" class="fa fa-search"></i>
					</span>
				</div>
			</div>
		</div>
		<!-- ENDIF function.displayUserSearch -->
	</div>

	<div class="awge-windows-container">
		<ul id="users-container" class="users-container">
			<!-- IMPORT partials/users_list.tpl -->
			<!-- IF anonymousUserCount -->
			<li class="users-box anon-user">
				<div class="user-icon">G</div>
				<br/>
				<div class="user-info">
					<span id="online_anon_count">{anonymousUserCount}</span>
					<span>[[global:guests]]</span>
				</div>
			</li>
			<!-- ENDIF anonymousUserCount -->
		</ul>
		<!-- IMPORT partials/paginator.tpl -->
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
