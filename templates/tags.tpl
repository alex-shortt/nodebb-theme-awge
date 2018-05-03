<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="tags awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Tags</h1>
	</div>

	<div class="awge-windows-container">
		<!-- IF tags.length -->
		<div class="row">
			<div class="col-lg-12">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="[[global:search]]" id="tag-search">
					<span class="input-group-addon search-button"><i class="fa fa-search"></i></span>
				</div>
			</div>
		</div>
		<!-- ENDIF tags.length -->

		<!-- IF !tags.length -->
		<div class="">[[tags:no_tags]]</div>
		<!-- ENDIF !tags.length -->
		
		<!-- IF tags.length -->
		<div class="category row">
			<div class="col-md-12 clearfix tag-list" data-nextstart="{nextStart}">
				<!-- IMPORT partials/tags_list.tpl -->
			</div>
		</div>
		<!-- ENDIF tags.length -->
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