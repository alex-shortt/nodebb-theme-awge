<ul class="awge-windows-toolbar">
	<li class="awge-windows-toolbar-option">
		<a href="{config.relative_path}/users?section=online"><u>O</u>nline</a>
	</li>
	<li class="awge-windows-toolbar-option">
		<a href="{config.relative_path}/users?section=sort-posts"><u>T</u>op Posters</a>
	</li>
	<!-- IF !reputation:disabled -->
	<li class="awge-windows-toolbar-option">
		<a href="{config.relative_path}/users?section=sort-reputation"><u>M</u>ost Reputation</a>
	</li>
	<!-- ENDIF !reputation:disabled -->
	<!-- IF isAdminOrGlobalMod -->
	<li class="awge-windows-toolbar-option">
		<a href="{config.relative_path}/users?section=flagged"><u>M</u>ost Flags</a>
	</li>
	<li class="awge-windows-toolbar-option">
		<a href="{config.relative_path}/users?section=banned"><u>B</u>anned</a>
	</li>
	<!-- ENDIF isAdminOrGlobalMod -->
</ul>
