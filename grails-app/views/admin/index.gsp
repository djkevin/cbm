<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Staff Counsellor Case Tracking system</title>
<style type="text/css" media="screen">
#status {
	background-color: #eee;
	border: .2em solid #fff;
	margin: 2em 2em 1em;
	padding: 1em;
	width: 12em;
	float: left;
	-moz-box-shadow: 0px 0px 1.25em #ccc;
	-webkit-box-shadow: 0px 0px 1.25em #ccc;
	box-shadow: 0px 0px 1.25em #ccc;
	-moz-border-radius: 0.6em;
	-webkit-border-radius: 0.6em;
	border-radius: 0.6em;
}

.ie6 #status {
	display: inline;
	/* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#status ul {
	font-size: 0.9em;
	list-style-type: none;
	margin-bottom: 0.6em;
	padding: 0;
}

#status li {
	line-height: 1.3;
}

#status h1 {
	text-transform: uppercase;
	font-size: 1.1em;
	margin: 0 0 0.3em;
}

#page-body { /*margin: 2em 1em 1.25em 18em;*/
	margin: 2em 1em 1.25em 1.25em;
}

h2 {
	margin-top: 1em;
	margin-bottom: 0.3em;
	font-size: 1em;
}

p {
	line-height: 1.5;
	margin: 0.25em 0;
}

#controller-list ul {
	list-style-position: inside;
}

#controller-list li {
	line-height: 1.3;
	list-style-position: inside;
	margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
	#status {
		display: none;
	}
	#page-body {
		margin: 0 1em 1em;
	}
	#page-body h1 {
		margin-top: 0;
	}
}
</style>

</head>
<body>
<div class="nav">&nbsp;
	<div role="navigation" class="nav-left">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label" /></a></li>
		</ul>
	</div>
</div>

	<div id="page-body" role="main">

		<h1>ADMIN interface</h1>
		<br>
		
		<ul>
			<li> <g:link controller="stateParty" action="index">State Parties</g:link> <br><br> </li>
			<li> <g:link controller="user" action="index">Users</g:link> <br><br> </li>
			<li> <g:link controller="secUserSecRole" action="index">User Roles</g:link> <br><br> </li>
			<li> <g:link controller="auditLog" action="index">Audit Log</g:link> <br><br> </li>
		</ul>
					
	</div>

</body>
</html>
