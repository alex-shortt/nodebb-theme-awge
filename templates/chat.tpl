<div id="chat-modal" class="chat-modal hide awge-windows awge-chat" tabindex="-1" role="dialog" aria-labelledby="Chat" aria-hidden="true" data-backdrop="none" data-name="{roomName}">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand" type="button" data-action="maximize"><span class="fa fa-square-o"></span></button>
			<button id="chat-close-btn" type="button" class="times" data-dismiss="modal" aria-label="Close"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Chat -
			<!-- IF roomName -->{roomName}
			<!-- ELSE -->{usernames}
			<!-- ENDIF roomName -->
		</h1>
	</div>

	<ul class="awge-windows-toolbar">
		<li class="awge-windows-toolbar-option">
			<div class="dropdown">
				<a data-toggle="dropdown" component="chat/controlsToggle"><u>S</u>ettings</a>
				<ul class="dropdown-menu" component="chat/controls">
					<!-- IF users.length -->
					<li class="dropdown-header">[[modules:chat.in-room]]</li>
					<!-- BEGIN users -->
					<li>
						<a href="{config.relative_path}/uid/{../uid}">
							<!-- IF ../picture -->
							<img class="avatar avatar-sm" component="user/picture" src="{../picture}" itemprop="image" />
							<!-- ELSE -->
							<div class="avatar avatar-sm" component="user/picture" style="background-color: {../icon:bgColor};">{../icon:text}</div>
							<!-- END -->{../username}
						</a>
					</li>
					<!-- END -->
					<li role="separator" class="divider"></li>
					<!-- END -->
					<li class="dropdown-header">[[modules:chat.options]]</li>
					<li>
						<a href="#" data-action="members"><i class="fa fa-fw fa-cog"></i> [[modules:chat.manage-room]]</a>
					</li>
					<li>
						<a href="#" data-action="rename"><i class="fa fa-fw fa-edit"></i> [[modules:chat.rename-room]]</a>
					</li>
					<li>
						<a href="#" data-action="leave"><i class="fa fa-fw fa-sign-out"></i> [[modules:chat.leave]]</a>
					</li>
				</ul>
			</div>
		</li>
	</ul>

	<div class="awge-windows-container awge-chat-container modal-dialog">
		<div class="modal-body awge-chat-body">
			<ul class="chat-content" component="chat/messages">
				<!-- IMPORT partials/chats/messages.tpl -->
			</ul>

			<div component="chat/composer">
				<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap" rows="1"></textarea>
				<button class="btn btn-primary" type="button" data-action="send"><i class="fa fa-fw fa-2x fa-paper-plane"></i></button>
				<span component="chat/message/remaining" class="awge-chat-composer-remaining">{maximumChatMessageLength}</span>
			</div>
		</div>
	</div>

	<div class="awge-windows-statusbar">
		<div class="left">
			<p>© 2018 AWGE</p>
		</div>
		<div class="right">
		</div>
	</div>

	<script type="text/javascript">
		//KEEP THIS INSIDE THE TOP LEVEL DIV!
		function AWGEChatdefer() {
			if (window.jQuery) {
				$(".awge-windows").each(function(ind, obj) {
					if ($(obj).hasClass("awge-chat") && !$(obj).data("awge-chat")) {
						$(obj).data("draggable", "false");
						$(obj).data("awge-chat", true);
						$(obj).appendTo("#panel");
					}
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
			}
			else {
				setTimeout(function() { AWGEChatdefer() }, 50);
			}
		}

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

		function chatMouseDown() {
			AWGEChatdefer();
			$(".awge-chat").off("mousedown", chatMouseDown);
		}

		$(".awge-chat").on("mousedown", chatMouseDown);
	</script>

</div>
