<!-- IF config.loggedIn -->
<div class="btn-group topic-watch-dropdown bottom-sheet" component="topic/watch">

	<a class="dropdown-toggle" data-toggle="dropdown" type="button">
		
		<span component="category/watching/menu" <!-- IF isIgnored -->class="hidden"<!-- ENDIF isIgnored -->><i class="fa fa-fw fa-eye"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"><u>W</u>atching</span></span>
		<span component="category/ignoring/menu" <!-- IF !isIgnored -->class="hidden"<!-- ENDIF !isIgnored -->><i class="fa fa-fw fa-eye-slash"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"><u>I</u>gnoring</span></span>

		<span class="caret"></span>
	</a>

	<ul class="dropdown-menu dropdown-menu-right">
		<li><a href="#" component="category/watching"><i component="category/watching/check" class="fa fa-fw <!-- IF !isIgnored -->fa-check<!-- ENDIF !isIgnored -->"></i><i class="fa fa-fw fa-eye"></i> [[category:watching]]<p class="help-text"><small>[[category:watching.description]]</small></p></a></li>
		<li><a href="#" component="category/ignoring"><i component="category/ignoring/check" class="fa fa-fw <!-- IF isIgnored -->fa-check<!-- ENDIF isIgnored -->"></i><i class="fa fa-fw fa-eye-slash"></i> [[category:ignoring]]<p class="help-text"><small>[[category:ignoring.description]]</small></p></a></li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->
