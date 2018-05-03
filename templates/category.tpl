<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>

<!-- IMPORT partials/category/subcategory.tpl -->

<div class="awge-windows category <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">{name}</h1>
	</div>
	<ul class="awge-windows-toolbar" component="category/controls">
		<li class="awge-windows-toolbar-option">
			<div class="btn-group">
				<!-- IF privileges.topics:create -->
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" data-ajaxify="false" role="button"><u>N</u>ew Topic</a>
				<!-- ELSE -->
				<!-- IF !loggedIn -->
				<a component="category/post/guest" href="{config.relative_path}/login"><u>L</u>og in to Post</a>
				<!-- ENDIF !loggedIn -->
				<!-- ENDIF privileges.topics:create -->
			</div>
		</li>
		<li class="awge-windows-toolbar-option">
			<!-- IMPORT partials/category/watch.tpl -->
		</li>
		<li class="awge-windows-toolbar-option">
			<!-- IMPORT partials/category/sort.tpl -->
		</li>
		<li class="awge-windows-toolbar-option">
			<!-- IMPORT partials/category/tools.tpl -->
		</li>
	</ul>



	<!-- IF !topics.length -->
	<div class="awge-windows-container" id="category-no-topics">
		[[category:no_topics]]
	</div>
	<!-- ENDIF !topics.length -->
	
	<!-- IF topics.length -->
	<!-- IMPORT partials/topics_list.tpl -->
	<!-- ENDIF topics.length -->

	
	<div class="awge-windows-statusbar">
		<div class="left">
			<p>© 2018 AWGE</p>
		</div>
		<div class="right">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
</div>
<div widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
	<!-- BEGIN widgets.sidebar -->
	{{widgets.sidebar.html}}
	<!-- END widgets.sidebar -->
</div>
<div widget-area="footer">
	<!-- BEGIN widgets.footer -->
	{{widgets.footer.html}}
	<!-- END widgets.footer -->
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->

<!-- IMPORT partials/awge_page_script.tpl -->
