<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
        <!--font-awesome via CDN-->
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

		<r:script disposition="head">
            var URL_ROOT = '${request.contextPath}';
        </r:script>
        <r:require modules="wysiwyg" />
        
		<g:layoutHead/>
		<r:layoutResources />
		
	</head>
	<body>
    <div id="topmenu">
        <div id="topmenucontent">
            <div id="languages">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/?lang=en')}">EN</a></li>
                    <li><a class="home" href="${createLink(uri: '/?lang=fr')}">FR</a></li>
                </ul>

            </div>
            <div id="links">
                <ul>
                    <li>
                    <sec:ifLoggedIn>
                        <g:message code="user.login.as" default="You are logged in as: "/> <b><sec:loggedInUserInfo field="username"/></b>
                        <g:link controller='logout' action='index'><i class="fa fa-sign-out"></i><g:message code="user.logout" default="Logout"/></g:link>
                    </sec:ifLoggedIn>
                    </li>
                </ul>
            </div>
            %{--           <div id="sessioninfo">
                           <ul>

                           </ul>
                       </div>--}%
        </div>
    </div>
		<div class="banner table" role="banner">
            <div>
                <div>
                    <img src="${resource(dir: 'images', file: 'unlogo.png')}" alt="home"/>
                </div>                    
                <div>                        
                    <h2><g:message code="global.label.organisation"/> %{--<g:message code="global.label.division"/>--}%</h2>
                   %{-- <h3><g:message code="global.label.appname"/></h3>--}%
                </div>                
            </div>
        </div>
                
		<g:layoutBody/>
		
		<div class="footer" role="contentinfo">
			${grails.util.Environment.getCurrent()} Version <g:meta name="app.version"/>
		</div>
		
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
