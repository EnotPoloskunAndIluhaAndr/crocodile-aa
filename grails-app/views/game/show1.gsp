
<%@ page import="crocodile.Game" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'game.label', default: 'Game')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-game" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-game" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list game">
			
				<g:if test="${gameInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="game.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${gameInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.leader}">
				<li class="fieldcontain">
					<span id="leader-label" class="property-label"><g:message code="game.leader.label" default="Leader" /></span>
					
						<span class="property-value" aria-labelledby="leader-label"><g:link controller="user" action="show" id="${gameInstance?.leader?.id}">${gameInstance?.leader?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.maxUsers}">
				<li class="fieldcontain">
					<span id="maxUsers-label" class="property-label"><g:message code="game.maxUsers.label" default="Max Users" /></span>
					
						<span class="property-value" aria-labelledby="maxUsers-label"><g:fieldValue bean="${gameInstance}" field="maxUsers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="game.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${gameInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="game.image.label" default="Image" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.word}">
				<li class="fieldcontain">
					<span id="word-label" class="property-label"><g:message code="game.word.label" default="Word" /></span>
					
						<span class="property-value" aria-labelledby="word-label"><g:link controller="word" action="show" id="${gameInstance?.word?.id}">${gameInstance?.word?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="game.users.label" default="Users" /></span>
					
						<g:each in="${gameInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.messages}">
				<li class="fieldcontain">
					<span id="messages-label" class="property-label"><g:message code="game.messages.label" default="Messages" /></span>
					
						<g:each in="${gameInstance.messages}" var="m">
						<span class="property-value" aria-labelledby="messages-label"><g:link controller="message" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.finishDate}">
				<li class="fieldcontain">
					<span id="finishDate-label" class="property-label"><g:message code="game.finishDate.label" default="Finish Date" /></span>
					
						<span class="property-value" aria-labelledby="finishDate-label"><g:formatDate date="${gameInstance?.finishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.createDate}">
				<li class="fieldcontain">
					<span id="createDate-label" class="property-label"><g:message code="game.createDate.label" default="Create Date" /></span>
					
						<span class="property-value" aria-labelledby="createDate-label"><g:formatDate date="${gameInstance?.createDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${gameInstance?.id}" />
					<g:link class="edit" action="edit" id="${gameInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
