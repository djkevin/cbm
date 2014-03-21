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
	<%--			<div id="controller-list" role="navigation">				--%>
<%--                <ul>--%>
<%--                	<li> <g:link controller="StateParty" action="index">State Party</g:link> </li>     --%>
<%--                    <li> <g:link controller="Report" action="index">Report</g:link> </li>                    --%>
<%--                    <li> <g:link controller="FormAPart1a" action="index"><g:message code="formAPart1a.label" default="Form A, part 1(i)"/> </g:link> </li>                    --%>
<%--                    <li> <g:link controller="FormAPart1b" action="index"><g:message code="formAPart1b.label" default="Form A, part 1(ii)"/> </g:link> </li>                    --%>
<%--                    <li> <g:link controller="FormAPart2a" action="index"><g:message code="formAPart2a.label" default="Form A, part 2(i)"/> </g:link> </li>                    --%>
<%--                    <li> <g:link controller="FormAPart2b" action="index"><g:message code="formAPart2b.label" default="Form A, part 2(ii)"/> </g:link> </li>                    --%>
<%--                    <li> <g:link controller="FormAPart2c" action="index"><g:message code="formAPart2c.label" default="Form A, part 2(iii)"/> </g:link> </li>      --%>
<%--                    <li><a class="home" href="${createLink(uri: '/?lang=en')}">English</a></li>              --%>
<%--                    <li><a class="home" href="${createLink(uri: '/?lang=fr')}">French</a></li>   --%>
<%--                    <li><a class="home" href="http://bwcsite.teqservices.com/cbmsite/cbm/">US CBM</a></li>   --%>
<%--                    --%>
<%--                               --%>
<%--                    <li> ... </li>                    --%>
<%--                </ul>                            --%>
<%--			</div> --%>

	<div id="page-body" role="main">
		
		<div class="box table" style="margin: 0px auto; width: 42%;">
			<div>
				<ul>
					<li>
						<div class="box-icon">
							<g:link controller="StateParty" action="index">State Party</g:link>
						</div>
					</li>
				</ul>
				<ul>
					<li>
						<div class="box-icon">
							<g:link controller="Report" action="index">Report</g:link>
						</div>
					</li>
				</ul>
				<ul>
				<li>
					<div class="box-icon">
						<g:link controller="FormAPart1a" action="index"><g:message code="formAPart1a.label" default="Form A, part 1(i)"/> </g:link> 
					</div>
				</li>
				</ul>

			</div>

		</div>
		<div class="box table" style="margin: 0px auto; width: 42%;">
			
			<ul>
				<li>
					<div class="box-icon">
						<g:link controller="FormAPart1b" action="index"><g:message code="formAPart1b.label" default="Form A, part 1(ii)"/> </g:link> 
					</div>
				</li>
			</ul>
			<ul>
				<li>
					<div class="box-icon">
						<g:link controller="FormAPart2a" action="index"><g:message code="formAPart2a.label" default="Form A, part 2(i)"/> </g:link>
					</div>

				</li>
			</ul>
			<ul>
				<li>
					<div class="box-icon">
						<g:link controller="FormAPart2b" action="index"><g:message code="formAPart2b.label" default="Form A, part 2(ii)"/> </g:link>
					</div>
				</li>
			</ul>

		</div>
		<div class="box table" style="margin: 0px auto; width: 42%;">
			<ul>
				<li>
					<div class="box-icon">
						<g:link controller="FormAPart2c" action="index"><g:message code="formAPart2c.label" default="Form A, part 2(iii)"/> </g:link>
					</div>
				</li>
			</ul>
			<ul>
				<li>
					<div class="box-icon">&nbsp;
					</div>
				</li>
			</ul>
		</div>
	</div>

</body>
</html>
