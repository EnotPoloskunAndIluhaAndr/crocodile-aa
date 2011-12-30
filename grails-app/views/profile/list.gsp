
<%@ page import="crocodile.Profile" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fullName" title="${message(code: 'profile.fullName.label', default: 'Full Name')}" />
					
						<g:sortableColumn property="avatar" title="${message(code: 'profile.avatar.label', default: 'Avatar')}" />
					
						<g:sortableColumn property="homepage" title="${message(code: 'profile.homepage.label', default: 'Homepage')}" />
					
						<g:sortableColumn property="skin" title="${message(code: 'profile.skin.label', default: 'Skin')}" />
					
						<g:sortableColumn property="createDate" title="${message(code: 'profile.createDate.label', default: 'Create Date')}" />
					
						<g:sortableColumn property="language" title="${message(code: 'profile.language.label', default: 'Language')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profileInstanceList}" status="i" var="profileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profileInstance.id}">${fieldValue(bean: profileInstance, field: "fullName")}</g:link></td>
					
						<td>${fieldValue(bean: profileInstance, field: "avatar")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "homepage")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "skin")}</td>
					
						<td><g:formatDate date="${profileInstance.createDate}" /></td>
					
						<td>${fieldValue(bean: profileInstance, field: "language")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profileInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
