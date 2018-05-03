<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection --> >
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->{function.buildMetaTag}<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/stylesheet.css?{config.cache-buster}" />
	<!-- IF bootswatchCSS --><link id="bootswatchCSS" href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->{function.buildLinkTag}<!-- END linkTags -->
	
	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
	<!-- END -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{{customCSS}}</style>
	<!-- END -->
</head>

<script>
	//Update AWGE Clock
	
     function addZeroAWGE(i) {
        if (i < 10) {
            i = "0" + i;
        }
        return i;
    }
    
    function civilTimeAWGE(h) {
    	if (h > 12) {
    		h = h - 12;
    	} else if (h == 0) {
    		h = 12;
    	}
    	return h;
    }
    
    function ampmAWGE(h) {
    	if(h < 12) {
    		var a = 'AM';
    	} else {
    		var a = 'PM';
    	}
    	return a;
    }
    function updateClockAWGE() {
    	var d = new Date();
        var x = document.getElementById("awge_clock");
        if(x == null) return;
        var h = civilTimeAWGE(d.getHours());
        var m = addZeroAWGE(d.getMinutes());
    	var a = ampmAWGE(d.getHours());
        x.innerHTML = h + ":" + m + ' ' + a;
    }
</script>

<body class="{bodyClass} skin-{config.bootswatchSkin}" onload="updateClockAWGE(); setInterval('updateClockAWGE()', 1000 );">
	<nav id="menu" class="slideout-menu hidden awge-navbar-mobile">
		<div class="menu-profile awge-navbar-mobile-profile">
			<!-- IF user.uid -->
			<!-- IF user.picture -->
			<img src="{user.picture}"/>
			<!-- ELSE -->
			<div class="user-icon" style="background-color: {user.icon:bgColor};">{user.icon:text}</div>
			<!-- ENDIF user.picture -->
			<i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i>
			<!-- ENDIF user.uid -->
		</div>

		<section class="menu-section awge-navbar-mobile-section" data-section="navigation">
			<h3 class="menu-section-title">[[global:header.navigation]]</h3>
			<ul class="menu-section-list"></ul>
		</section>

		<!-- IF config.loggedIn -->
		<section class="menu-section awge-navbar-mobile-section" data-section="profile">
			<h3 class="menu-section-title">[[global:header.profile]]</h3>
			<ul class="menu-section-list" component="header/usercontrol"></ul>
		</section>

		<section class="menu-section awge-navbar-mobile-section" data-section="notifications">
			<h3 class="menu-section-title">
				[[global:header.notifications]]
				<span class="counter" component="notifications/icon" data-content="0"></span>
			</h3>
			<ul class="menu-section-list notification-list-mobile" component="notifications/list"></ul>
			<p class="menu-section-list"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></p>
		</section>
		<!-- ENDIF config.loggedIn -->
	</nav>
	<nav id="chats-menu" class="slideout-menu hidden">
		<!-- IF config.loggedIn -->
		<section class="menu-section" data-section="chats">
			<h3 class="menu-section-title">
				[[global:header.chats]]
				<i class="counter" component="chat/icon" data-content="0"></i>
			</h3>
			<ul class="menu-section-list chat-list" component="chat/list"></ul>
		</section>
		<!-- ENDIF config.loggedIn -->
	</nav>

	<main id="panel" class="awge-slideout slideout-panel">
		<nav class="navbar navbar-default navbar-fixed-top header awge-navbar" id="header-menu" component="navbar">
			<div class="awge-navbar-container">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</nav>
		<div class="awge-desktop" id="awge-desktop">
			<div id="awge-desktop-computer" class="awge-desktop-shortcut awge-desktop-compute">
				<img src="https://dwvo2npct47gg.cloudfront.net/images/desktop-comp.png" alt="">
				<p>My <span class="hidden-xs">Computer</span><span class="visible-xs">Phone</span></p>
			</div>
			<br class="hidden-xs">
			<div id="awge-desktop-recycle" class="awge-desktop-shortcut awge-desktop-recycle">
				<img src="https://dwvo2npct47gg.cloudfront.net/images/desktop-recycle.png" alt="">
				<p>Recycle Bin</p>
			</div>
			<br class="hidden-xs">
			<div id="awge-desktop-documents" class="awge-desktop-shortcut awge-desktop-documents">
				<img src="https://dwvo2npct47gg.cloudfront.net/images/desktop-documents.png" alt="">
				<p>My Documents</p>
			</div>
		</div>
		<div class="container" id="content">
		<!-- IMPORT partials/noscript/warning.tpl -->
