<div class="awge-windows panel panel-primary merge-topic-card">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">[[topic:thread_tools.merge_topics]]</h1>
	</div>

	<div class="awge-windows-container">
		<div class="panel-body">
			<p>
				[[topic:merge_topics_instruction]]<br />
				<div class="topics-section">
					<!-- BEGIN topics -->
					<!-- IF @index -->
					<i class="fa fa-chevron-up"></i><br/>
					<!-- ENDIF @index -->
					<span>{topics.title}</span><br/>
					<!-- END topics -->
				</div>
			</p>
		</div>
		<div class="panel-footer">
			&nbsp;
			<div class="btn-group pull-right">
				<button class="btn btn-link btn-xs" id="merge_topics_cancel">[[global:buttons.close]]</button>
				<button class="btn btn-primary btn-xs" id="merge_topics_confirm" disabled>[[topic:thread_tools.merge]]</button>
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
