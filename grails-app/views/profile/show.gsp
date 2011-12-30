
<%@ page import="crocodile.Profile" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profile">
			
				<g:if test="${profileInstance?.fullName}">
				<li class="fieldcontain">
					<span id="fullName-label" class="property-label"><g:message code="profile.fullName.label" default="Full Name" /></span>
					
						<span class="property-value" aria-labelledby="fullName-label"><g:fieldValue bean="${profileInstance}" field="fullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.avatar}">
				<li class="fieldcontain">
					<span id="avatar-label" class="property-label"><g:message code="profile.avatar.label" default="Avatar" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.victoryWords}">
				<li class="fieldcontain">
					<span id="victoryWords-label" class="property-label"><g:message code="profile.victoryWords.label" default="Victory Words" /></span>
					
						<g:each in="${profileInstance.victoryWords}" var="v">
						<span class="property-value" aria-labelledby="victoryWords-label"><g:link controller="word" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.homepage}">
				<li class="fieldcontain">
					<span id="homepage-label" class="property-label"><g:message code="profile.homepage.label" default="Homepage" /></span>
					
						<span class="property-value" aria-labelledby="homepage-label"><g:fieldValue bean="${profileInstance}" field="homepage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.skin}">
				<li class="fieldcontain">
					<span id="skin-label" class="property-label"><g:message code="profile.skin.label" default="Skin" /></span>
					
						<span class="property-value" aria-labelledby="skin-label"><g:fieldValue bean="${profileInstance}" field="skin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.createDate}">
				<li class="fieldcontain">
					<span id="createDate-label" class="property-label"><g:message code="profile.createDate.label" default="Create Date" /></span>
					
						<span class="property-value" aria-labelledby="createDate-label"><g:formatDate date="${profileInstance?.createDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.language}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="profile.language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${profileInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${profileInstance?.id}" />
					<g:link class="edit" action="edit" id="${profileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
