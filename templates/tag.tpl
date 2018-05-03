<div class="tag awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Tag</h1>
	</div>

	<ul class="awge-windows-toolbar">
		<li class="awge-windows-toolbar-option">
			<!-- IF loggedIn -->
			<a component="category/post" id="new_topic" class="">[[category:new_topic_button]]</a>
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</li>
	</ul>

	<div class="awge-container">
		<!-- IF !topics.length -->
		<div class="">[[tags:no_tag_topics]]</div>
		<!-- ENDIF !topics.length -->

		<div class="category">
			<!-- IMPORT partials/topics_list.tpl -->
			<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
			<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
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
