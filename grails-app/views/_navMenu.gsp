
<div class="nav-right">
	<!--  show login info only if logged in already 
		// TODO: does not seem to work this sec;ifLoggedIn tag
	-->
	<sec:ifLoggedIn>
    	<g:message code="user.login.as" default="You are logged in as: "/> <sec:loggedInUserInfo field="username"/>
    	<g:link controller='logout' action='index'>[logout]</g:link>
   	</sec:ifLoggedIn>      
</div>
<div class="nav-clear"></div>