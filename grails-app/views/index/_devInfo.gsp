<%--
	show development-related information for verification & troubleshooting.
--%>

<%@ page import="grails.util.Environment" %>

		<g:if test="${Environment.getCurrent()==Environment.DEVELOPMENT}">
			
			<div id="status" role="complementary">
				<h1>DEVELOPMENT ENVIRONMENT</h1>
				<ul>
					<li><a href="dbconsole?url=${grailsApplication.config.dataSource.url}">H2 db console</a></li>
					<li><a href="http://icts-sdu-jdev2/phpMyAdmin/index.php?db=devcbm">phpmyadmin</a></li>					
				</ul>
				<h1>Application Configuration</h1>
				<ul>
					<li>grails.serverURL: ${grailsApplication.config.grails.serverURL}</li>
					<li>datasource.url: ${grailsApplication.config.dataSource.url}</li>
				</ul>
				<h1>Application Status</h1>
				<ul>
					<li>App version: <g:meta name="app.version" /></li>
					<li>Grails version: <g:meta name="app.grails.version" /></li>
					<li>Groovy version: ${GroovySystem.getVersion()}</li>
					<li>JVM version: ${System.getProperty('java.version')}</li>
					<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
					<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
					<li>Domains: ${grailsApplication.domainClasses.size()}</li>
					<li>Services: ${grailsApplication.serviceClasses.size()}</li>
					<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
				</ul>
				<h1>Installed Plugins</h1>
				<ul>
					<g:each var="plugin"
						in="${applicationContext.getBean('pluginManager').allPlugins.sort{a,b -> a.name<=>b.name}}">
						<li>
							${plugin.name} - ${plugin.version}
						</li>
					</g:each>
				</ul>
			</div>
		</g:if>