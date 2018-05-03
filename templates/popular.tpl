<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="popular awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Popular</h1>
	</div>

	<ul class="awge-windows-toolbar" component="category/controls">
		<li class="awge-windows-toolbar-option">
			<a href='{config.relative_path}/popular/daily'><u>D</u>ay</a>
			</li>
		<li class="awge-windows-toolbar-option">
			<a href='{config.relative_path}/popular/weekly'><u>W</u>eek</a>
			</li>
		<li class="awge-windows-toolbar-option">
			<a href='{config.relative_path}/popular/monthly'><u>M</u>onth</a>
			</li>
	</ul>

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning awge-windows-container" id="category-no-topics">[[recent:no_popular_topics]]</div>
		<!-- ENDIF !topics.length -->

		<!-- IF topics.length -->
		<!-- IMPORT partials/topics_list.tpl -->
		<!-- ENDIF topics.length -->
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
