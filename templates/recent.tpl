<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="recent awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Recent</h1>
	</div>

	<ul class="awge-windows-toolbar" component="category/controls">
		<li class="awge-windows-toolbar-option">
			<div class="btn-group">
				<!-- IF loggedIn -->
				<a component="category/post" id="new_topic" class=""><u>N</u>ew Topic</a>
				<!-- ELSE -->
				<a component="category/post/guest" href="{config.relative_path}/login" class="">[[category:guest-login-post]]</a>
				<!-- ENDIF loggedIn -->
			</div>
		</li>
		<li class="awge-windows-toolbar-option">
			<div component="category/dropdown" class="btn-group category-dropdown-container <!-- IF !categories.length -->hidden<!-- ENDIF !categories.length -->">
				<a type="button" class="dropdown-toggle" data-toggle="dropdown">
					<!-- IF selectedCategory -->
					<!-- IF selectedCategory.icon --><span class="fa-stack"><i style="color: {selectedCategory.bgColor};" class="fa fa-circle fa-stack-2x"></i><i class="fa fa-fw fa-stack-1x {selectedCategory.icon}" style="color: {selectedCategory.color};"></i></span>
					<!-- ENDIF selectedCategory.icon -->{selectedCategory.name}
					<!-- ELSE -->
					[[unread:all_categories]]
					<!-- ENDIF selectedCategory --><span class="caret"></span>
				</a>
				<ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
					<li role="presentation" class="category">
						<a role="menu-item" href="{config.relative_path}/{selectedFilter.url}"><i class="fa fa-fw <!-- IF !selectedCategory -->fa-check<!-- ENDIF !selectedCategory -->"></i> [[unread:all_categories]]</a>
					</li>
					<!-- BEGIN categories -->
					<li role="presentation" class="category" data-cid="{categories.cid}" data-parent-cid="{categories.parentCid}">
						<a role="menu-item" href="{config.relative_path}/{selectedFilter.url}?cid={categories.cid}"><i component="category/select/icon" class="fa fa-fw <!-- IF categories.selected -->fa-check<!-- ENDIF categories.selected -->"></i>{categories.level}<!-- IF categories.icon --><span class="fa-stack"><i style="color: {categories.bgColor};" class="fa fa-circle fa-stack-2x"></i><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span><!-- ENDIF categories.icon --> {categories.name}</a>
					</li>
					<!-- END categories -->
				</ul>
			</div>
		</li>
		<li class="awge-windows-toolbar-option">
			<div class="btn-group <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
				<a type="button" class="dropdown-toggle" data-toggle="dropdown">
			{selectedFilter.name} <span class="caret"></span>
			</a>
				<ul class="dropdown-menu" role="menu">
					<!-- BEGIN filters -->
					<li role="presentation" class="category">
						<a role="menu-item" href="{config.relative_path}/{filters.url}{querystring}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
					</li>
					<!-- END filters -->
				</ul>
			</div>
		</li>
		<li class="awge-windows-toolbar-option">
			<!-- IMPORT partials/category/tools.tpl -->
		</li>
	</ul>

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning awge-windows-container" id="category-no-topics">[[recent:no_recent_topics]]</div>
		<!-- ENDIF !topics.length -->

		<a href="{config.relative_path}/{selectedFilter.url}{querystring}">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<!-- IF topics.length -->
		<!-- IMPORT partials/topics_list.tpl -->
		<!-- ENDIF topics.length -->

		<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
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