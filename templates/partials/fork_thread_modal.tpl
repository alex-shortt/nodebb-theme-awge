<div class="panel panel-primary fork-thread-card awge-windows">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">[[topic:fork_topic]]</h1>
	</div>

	<div class="awge-windows-container">
		<div class="panel-body">
			<div class="form-group">
				<label for="title">Title</label>
				<input id="fork-title" type="text" class="form-control" placeholder="Enter new topic title">
			</div>
			<p>
				[[topic:fork_topic_instruction]]<br />
				<strong><span id="fork-pids"></span></strong>
			</p>
		</div>
		<div class="panel-footer">
			&nbsp;
			<div class="btn-group pull-right">
				<button class="btn btn-link btn-xs" id="fork_thread_cancel">[[global:buttons.close]]</button>
				<button class="btn btn-primary btn-xs" id="fork_thread_commit" disabled>[[topic:fork_topic]] <i class="fa fa-arrow-circle-right"></i></button>
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
