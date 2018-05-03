<script type="text/javascript">
	(function AWGEdefer() {
		if (window.jQuery && $("#reconnect-alert").hasClass("ui-draggable")) {
			$("#reconnect-alert").addClass("hide");
			$("#reconnect-alert").removeClass("awge-spooky");
		}
		else {
			setTimeout(function() { AWGEdefer() }, 50);
		}
	})();
</script>
