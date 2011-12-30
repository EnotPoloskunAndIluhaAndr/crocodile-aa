
<%@ page import="crocodile.Game" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'game.label', default: 'Game')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-game" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-game" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'game.description.label', default: 'Description')}" />
					
						<th><g:message code="game.leader.label" default="Leader" /></th>
					
						<g:sortableColumn property="maxUsers" title="${message(code: 'game.maxUsers.label', default: 'Max Users')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'game.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="image" title="${message(code: 'game.image.label', default: 'Image')}" />
					
						<th><g:message code="game.word.label" default="Word" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gameInstanceList}" status="i" var="gameInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gameInstance.id}">${fieldValue(bean: gameInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: gameInstance, field: "leader")}</td>
					
						<td>${fieldValue(bean: gameInstance, field: "maxUsers")}</td>
					
						<td>${fieldValue(bean: gameInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: gameInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: gameInstance, field: "word")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${gameInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
