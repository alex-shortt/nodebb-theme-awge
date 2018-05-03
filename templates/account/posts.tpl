<!-- IMPORT partials/account/header.tpl -->

<div class="account awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">{title}</h1>
	</div>

	<div class="awge-windows-container">
		<div class="row">
			<!-- IF !posts.length -->
			<div class="text-center">{noItemsFoundKey}</div>
			<!-- ENDIF !posts.length -->

			<div class="col-xs-12">
				<!-- IMPORT partials/posts_list.tpl -->

				<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
				<!-- ENDIF config.usePagination -->
			</div>
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
