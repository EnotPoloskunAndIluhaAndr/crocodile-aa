<%@ page import="crocodile.Word" %>



<div class="fieldcontain ${hasErrors(bean: wordInstance, field: 'translators', 'error')} ">
	<label for="translators">
		<g:message code="word.translators.label" default="Translators" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: wordInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="word.users.label" default="Users" />
		
	</label>
	<g:select name="users" from="${crocodile.User.list()}" multiple="multiple" optionKey="id" size="5" value="${wordInstance?.users*.id}" class="many-to-many"/>
</div>

