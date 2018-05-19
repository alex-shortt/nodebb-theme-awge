<div class="awge-windows-title">
	<div class="pull-right">
		<button class="minimize"><span class="fa fa-minus"></span></button>
		<button class="expand"><span class="fa fa-square-o"></span></button>
		<button class="times"><span class="fa fa-times"></span></button>
	</div>
	<h1 class="awge-windows-title-text">
		<!-- IF roomId -->
		[[modules:chat.chatting_with]]
		<!-- BEGIN users -->
		{../username}
		<!-- IF !@last -->,
		<!-- END -->
		<!-- END -->
		<!-- ELSE -->
		Chat
		<!-- ENDIF roomId -->
	</h1>
</div>

<!-- IF roomId -->
<ul class="awge-windows-toolbar">
	<li class="awge-windows-toolbar-option">
		<button type="button" class="awge-windows-toolbar-combobox" data-action="pop-out"><u>P</u>op Out</button>
	</li>
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
<!-- ENDIF roomId -->

<div class="awge-windows-container">
	<!-- IF roomId -->
	<div component="chat/messages" class="expanded-chat" data-roomid="{roomId}">
		<div component="chat/header">
			<span class="members">
				[[modules:chat.chatting_with]]:
				<!-- BEGIN users -->
				<a href="{config.relative_path}/uid/{../uid}">{../username}</a>
				<!-- IF !@last -->,<!-- END -->
				<!-- END -->
			</span>
		</div>

		<ul class="chat-content">
			<!-- IMPORT partials/chats/messages.tpl -->
		</ul>
		<div component="chat/composer">
			<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap" rows="2"></textarea>
			<button class="btn btn-primary" type="button" data-action="send"><i class="fa fa-fw fa-2x fa-paper-plane"></i></button>
			<span component="chat/message/remaining">{maximumChatMessageLength}</span>
		</div>
	</div>
	<!-- ELSE -->
	<div class="alert alert-info">
		[[modules:chat.no-messages]]
	</div>
	<!-- ENDIF roomId -->
</div>

<div class="awge-windows-statusbar">
	<div class="left">
		<p>© 2018 AWGE</p>
	</div>
	<div class="right">
		<!-- IMPORT partials/breadcrumbs.tpl -->
	</div>
</div>
