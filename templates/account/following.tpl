<!-- IMPORT partials/account/header.tpl -->

<div class="account awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">[[pages:{template.name}, {username}]]</h1>
	</div>

	<div class="awge-windows-container">
		<div class="users row">
			<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
				<!-- IMPORT partials/users_list.tpl -->
			</ul>

			<!-- IF !users.length -->
			<div class="text-center">[[user:follows_no_one]]</div>
			<!-- ENDIF !users.length -->

			<!-- IMPORT partials/paginator.tpl -->
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
