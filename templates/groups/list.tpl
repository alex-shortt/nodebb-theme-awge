<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>

<div class="groups list awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Groups</h1>
	</div>

	<div class="row">
		<div class="col-xs-5 col-md-3 text-left">
			<ul class="awge-windows-toolbar">
				<!-- IF allowGroupCreation -->
				<li class="awge-windows-toolbar-option">
					<a class="" data-action="new"><i class="fa fa-plus"></i> [[groups:new_group]]</a>
				</li>
				<!-- ENDIF allowGroupCreation -->
				<li class="awge-windows-toolbar-option">
					<select class="awge-windows-toolbar-combobox" id="search-sort">
						<option value="alpha">[[groups:details.group_name]]</option>
						<option value="count">[[groups:details.member_count]]</option>
						<option value="date">[[groups:details.creation_date]]</option>
					</select>
				</li>
			</ul>
		</div>
		<div class="col-xs-7 col-md-5 text-left pull-right">
			<div class="input-group">
				<input type="text" class="form-control awge-windows-toolbar-input" placeholder="[[global:search]]" name="query" value="" id="search-text">
				<span id="search-button" class="input-group-addon search-button awge-windows-toolbar-searchindicator">
				<i class="fa fa-search"></i>
			</span>
			</div>
		</div>
	</div>

	<div class="awge-windows-container">
		<div component="groups/container" class="row" id="groups-list" data-nextstart={nextStart}>
			<!-- IF groups.length -->
			<!-- IMPORT partials/groups/list.tpl -->
			<!-- ELSE -->
			<div class="col-xs-12">
				<div class="">
					[[groups:no_groups_found]]
				</div>
			</div>
			<!-- ENDIF groups.length -->
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
