<div class="awge-windows awge-chats" data-loaded="<!-- IF roomId -->1<!-- ELSE -->0<!-- END -->">
	<div class="awge-windows-title">
		<div class="pull-right">
			<button class="minimize"><span class="fa fa-minus"></span></button>
			<button class="expand"><span class="fa fa-square-o"></span></button>
			<button class="times"><span class="fa fa-times"></span></button>
		</div>
		<h1 class="awge-windows-title-text">Chats</h1>
	</div>

	<div class="awge-windows-container awge-chats-container" component="chat/nav-wrapper">
		<div class="chat-search dropdown">
			<input class="form-control" type="text" component="chat/search" placeholder="[[users:enter_username]]" data-toggle="dropdown" />
			<ul component="chat/search/list" class="dropdown-menu"></ul>
		</div>
		<ul component="chat/recent" class="chats-list" data-nextstart="{nextStart}">
			<!-- BEGIN rooms -->
			<!-- IMPORT partials/chats/recent_room.tpl -->
			<!-- END rooms -->
		</ul>
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

<div class="awge-windows awge-chats" component="chat/main-wrapper">
	<!-- IMPORT partials/chats/message-window.tpl -->
</div>

<!-- IMPORT partials/awge_page_script.tpl -->
