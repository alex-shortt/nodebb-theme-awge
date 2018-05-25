<script type="text/javascript">
	(function AWGEdefer() {
		if (window.jQuery) {
			$(".awge-windows").each(function(ind, obj) {
				if ($(obj).data("draggable") != "true") {
					app.loadJQueryUI(function() {
						$(obj).draggable({
							handle: ".awge-windows-title",
							containment: "#panel"
						});
					});
					$(obj).data("draggable", "true");
				}
			});

			$(".awge-windows").mousedown(function() {
				detectAWGECollision();
				$(".awge-windows").each(function(ind, obj) {
					$(obj).css("z-index", "2");
				});
				$(".awge-windows-title").each(function(ind, obj) {
					$(obj).css("background-color", "#808080");
				});
				$(this).css("z-index", "3");
				$(this).find(".awge-windows-title").css("background-color", "#010081");
			});

			detectAWGECollision();

			if (!isAWGECollisionActive()) {
				$(window).resize("its awge bitch", function() {
					detectAWGECollision();
					keepAWGEScroll();
				});
			}

			$(".minimize").click(function() {
				minimizeAWGEWindow(this);
			});

			var foundHighlight = false;

			function setIntervalX(callback, delay, repetitions) {
				var x = 0;
				var intervalID = window.setInterval(function() {

					callback();

					if (++x === repetitions || foundHighlight) {
						window.clearInterval(intervalID);
					}
				}, delay);
			}

			setIntervalX(function() {
				$('.awge-windows-container').each(function(ind, obj) {
					if ($(obj).find(".highlight").length > 0) {
						foundHighlight = true;
						var target = $($(obj).find(".highlight")[0]);
						const dist = target.offset().top - $(obj).offset().top - 30;
						if ($(obj).data("awge-scrolled") != "true") {
							scrollTop(dist);
							$(obj).data("awge-scrolled", "true");
						}
					}
				});
			}, 100, 100);
		}
		else {
			setTimeout(function() { AWGEdefer() }, 50);
		}
	})();

	function isAWGECollisionActive() {
		var eventAWGE = $._data(window, 'events').resize;
		if (eventAWGE == null) return false;
		for (var i = 0; i < eventAWGE.length; i++) {
			if (eventAWGE[i].data == "its awge bitch") return true;
		}
		return false;
	}

	function detectAWGECollision() {
		$(".awge-windows").each(function(ind, obj) {
			if ($(obj).offset().top < 0) {
				$(obj).offset({ top: 0 });
			}
			if ($(obj).offset().left < 0) {
				$(obj).offset({ left: 0 });
			}
			if ($(obj).offset().top + $(obj).outerHeight() > $("#panel").height()) {
				var topSet = $("#panel").height() - $(obj).outerHeight();
				$(obj).offset({ top: topSet });
			}
			if ($(obj).offset().left + $(obj).outerWidth() > $("#panel").width()) {
				var leftSet = $("#panel").width() - $(obj).outerWidth();
				$(obj).offset({ left: leftSet });
			}
		});
	}

	function spreadAWGEWindows() {
		var num = $(".awge-windows").length - 1;
		if (num <= 1) return;
		$(".awge-windows").each(function(ind, obj) {
			$(obj).css("left", $(obj).css("left") + (ind * 30));
		});
	}

	function keepAWGEScroll() {
		var mq = window.matchMedia("(max-width: 767px)");
		if (!mq.matches && $("html").scrollTop() != 0) {
			$("html").scrollTop(0);
		}
	}

	function minimizeAWGEWindow(obj) {
		var awgeWindow = $(obj).closest(".awge-windows");
		if (awgeWindow.hasClass("awge-windows-hidden")) return;

		if (awgeWindow.attr("id") == null) {
			awgeWindow.attr("id", guidAWGE());
		}
		awgeWindow.addClass("awge-windows-hidden");
		var text = awgeWindow.find(".awge-windows-title").text()

		$(".awge-navbar-dock").append('\
			<li class="awge-navbar-program" for="' + awgeWindow.attr("id") + '">\
				<a onclick="maximizeAWGEWindow(\'' + awgeWindow.attr("id") + '\')">\
					<span>' + text + '</span>\
				</a>\
			</li>\
		');
	}

	function maximizeAWGEWindow(id) {
		$("#" + id).removeClass("awge-windows-hidden");
		$(".awge-navbar-program[for='" + id + "']").remove();
	}

	function guidAWGE() {
		function s4() {
			return Math.floor((1 + Math.random()) * 0x10000)
				.toString(16)
				.substring(1);
		}
		return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
			s4() + '-' + s4() + s4() + s4();
	}
</script>
