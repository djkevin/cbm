<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>CBM</title>
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
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
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

			#page-body {
				margin: 2em 1em 1.25em 18em;
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
	old one
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <g:if test="Environment.getCurrent()==Environment.DEVELOPMENT">
            <div id="status" role="complementary">
                <h1>${grails.util.Environment.getCurrent()}</h1>
                <ul>
                    <li><a href="index.default.gsp">default index page</a></li>
                    <li><a href="dbconsole">H2 db console</a></li>
                </ul>
            </div>
        </g:if>

		<div id="page-body" role="main">
			<div id="controller-list" role="navigation">				
                <ul>
                	<li> <g:link controller="StateParty" action="index">State Party</g:link> </li>     
                    <li> <g:link controller="Report" action="index">Report</g:link> </li>                    
                    <li> <g:link controller="FormAPart1a" action="index"><g:message code="formAPart1a.label" default="Form A, part 1(i)"/> </g:link> </li>                    
                    <li> <g:link controller="FormAPart1b" action="index"><g:message code="formAPart1b.label" default="Form A, part 1(ii)"/> </g:link> </li>                    
                    <li> <g:link controller="FormAPart2a" action="index"><g:message code="formAPart2a.label" default="Form A, part 2(i)"/> </g:link> </li>                    
                    <li> <g:link controller="FormAPart2b" action="index"><g:message code="formAPart2b.label" default="Form A, part 2(ii)"/> </g:link> </li>                    
                    <li> <g:link controller="FormAPart2c" action="index"><g:message code="formAPart2c.label" default="Form A, part 2(iii)"/> </g:link> </li>      
                    <li><a class="home" href="${createLink(uri: '/?lang=en')}">English</a></li>              
                    <li><a class="home" href="${createLink(uri: '/?lang=fr')}">French</a></li>              
                    <li> ... </li>                    
                </ul>                            
			</div>                        
		</div>
			
		
	</body>
</html>
