<div id="{alert_id}" class="awge-windows alert alert-dismissable clearfix awge-alert" component="toaster/toast" style="border-left: 2px solid #dbdbdb !important;">
	<div class="awge-windows-title">
		<h1 class="awge-windows-title-text">
			<!-- IF title -->
			{title}
			<!-- ENDIF title -->
			<!-- IF !title -->
			Alert
			<!-- ENDIF !title -->
		</h1>
	</div>
	<div class="awge-alert-message">
		<!-- IF image -->
		<img src="{image}">
		<!-- ENDIF image -->

		<!-- IF message -->
		<p>{message}</p>
		<!-- ENDIF message -->
	</div>
	<div class="awge-alert-confirm">
		<div class="awge-alert-button">
			<a type="button" data-dismiss="alert" class="close">Close</a>
		</div>
	</div>
</div>

<!-- IMPORT partials/awge_page_script.tpl -->
