<div class="notifications awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Notifications</h1>
	</div>

	<ul class="awge-windows-toolbar" component="category/controls">
		<li class="btn-group awge-windows-toolbar-option">
			<a class="dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="true">
				<i class="fa fa-eye"></i>
				<span class="caret"></span>
			</a>
			<ul class="dropdown-menu dropdown-menu-left" role="menu" aria-labelledby="dropdownMenu1">
				<li role="presentation"><a role="menuitem" tabindex="-1" href="#" data-ajaxify="false" component="notifications/mark_all">[[notifications:mark_all_read]]</a></li>
			</ul>
		</li>
		<li class="btn-group awge-windows-toolbar-option">
			<a class="dropdown-toggle" type="button" data-toggle="dropdown">
				<!-- IF selectedFilter -->{selectedFilter.name}
				<!-- ENDIF selectedFilter --><span class="caret"></span>
			</a>
			<ul class="dropdown-menu" role="menu">
				<!-- BEGIN filters -->
				<!-- IF filters.separator -->
				<li role="separator" class="divider"></li>
				<!-- ELSE -->
				<li role="presentation" class="category">
					<a role="menu-item" href="{config.relative_path}/notifications?filter={filters.filter}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i> {filters.name}</a>
				</li>
				<!-- ENDIF filters.separator -->
				<!-- END filters -->
			</ul>
		</li>
	</ul>

	<ul class="notifications-list awge-windows-container" data-nextstart="{nextStart}">
		<div class="<!-- IF notifications.length -->hidden<!-- ENDIF notifications.length -->">
			[[notifications:no_notifs]]
		</div>

		<!-- BEGIN notifications -->
		<li data-nid="{notifications.nid}" class="{notifications.readClass}" component="notifications/item">
			<!-- IF notifications.image -->
			<!-- IF notifications.from -->
			<a class="pull-left" href="{config.relative_path}/user/{notifications.user.userslug}"><img class="user-img" src="{notifications.image}" /></a>
			<!-- ENDIF notifications.from -->
			<!-- ELSE -->
			<a class="pull-left" href="{config.relative_path}/user/{notifications.user.userslug}">
				<div class="pull-left user-icon user-img" style="background-color: {notifications.user.icon:bgColor};">{notifications.user.icon:text}</div>
			</a>
			<!-- ENDIF notifications.image -->

			<p>
				<a component="notifications/item/link" href="{config.relative_path}{notifications.path}">{notifications.bodyShort}</a>
			</p>
			<p class="timestamp">
				<span class="timeago" title="{notifications.datetimeISO}"></span>
			</p>
		</li>
		<!-- END notifications -->
	</ul>
	<!-- IMPORT partials/paginator.tpl -->

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
