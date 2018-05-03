</div>
<!-- END container -->
</main>

<div class="topic-search hidden">
	<div class="btn-group">
		<button type="button" class="btn btn-default count"></button>
		<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
		<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
	</div>
</div>

<div component="toaster/tray" class="alert-window">
	<div id="reconnect-alert" class="awge-windows awge-alert alert alert-dismissable clearfix awge-spooky" component="toaster/toast" style="border-left: 2px solid #dbdbdb !important;">
		<div class="awge-windows-title">
			<h1 class="awge-windows-title-text">
				Connection Alert
			</h1>
		</div>
		<div class="awge-alert-message">
			<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
		<div class="awge-alert-confirm">
			<div class="awge-alert-button">
				<a type="button" data-dismiss="alert" class="">Close</a>
			</div>
		</div>
	</div>
	<!-- IMPORT partials/awge_reconnect_script.tpl -->
</div>

<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

<!-- IMPORT partials/awge_desktop_script.tpl -->

<!-- BEGIN scripts -->
<script defer type="text/javascript" src="{scripts.src}"></script>
<!-- END scripts -->

<script>
	window.addEventListener('load', function() {
		require(['forum/footer']);

		<!-- IF useCustomJS -->
		{ { customJS } }
		<!-- ENDIF useCustomJS -->
	});
</script>

<div class="hide">
	<!-- IMPORT 500-embed.tpl -->
</div>
</body>

</html>
