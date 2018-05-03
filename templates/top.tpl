<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="top awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Top</h1>
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
		<li class="btn-group awge-windows-toolbar-option">
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
		</li>
		<li class="btn-group awge-windows-toolbar-option">
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
		</li>
	</ul>

	<div class="category">
		<!-- IF !topics.length -->
		<div class="awge-windows-container" id="category-no-topics">[[top:no_top_topics]]</div>
		<!-- ENDIF !topics.length -->

		<a href="{config.relative_path}/{selectedFilter.url}{querystring}">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<!-- IMPORT partials/topics_list.tpl -->

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
