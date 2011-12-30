<%@ page import="crocodile.Game" %>



<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="game.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${gameInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'leader', 'error')} required">
	<label for="leader">
		<g:message code="game.leader.label" default="Leader" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="leader" name="leader.id" from="${crocodile.User.list()}" optionKey="id" required="" value="${gameInstance?.leader?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'maxUsers', 'error')} ">
	<label for="maxUsers">
		<g:message code="game.maxUsers.label" default="Max Users" />
		
	</label>
	<g:field type="number" name="maxUsers" value="${fieldValue(bean: gameInstance, field: 'maxUsers')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="game.password.label" default="Password" />
		
	</label>
	<g:textField name="password" maxlength="8" value="${gameInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="game.image.label" default="Image" />
		
	</label>
	<input type="file" id="image" name="image" />
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'word', 'error')} required">
	<label for="word">
		<g:message code="game.word.label" default="Word" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="word" name="word.id" from="${crocodile.Word.list()}" optionKey="id" required="" value="${gameInstance?.word?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="game.users.label" default="Users" />
		
	</label>
	<g:select name="users" from="${crocodile.User.list()}" multiple="multiple" optionKey="id" size="5" value="${gameInstance?.users*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'messages', 'error')} ">
	<label for="messages">
		<g:message code="game.messages.label" default="Messages" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${gameInstance?.messages?}" var="m">
    <li><g:link controller="message" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="message" action="create" params="['game.id': gameInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'message.label', default: 'Message')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'finishDate', 'error')} ">
	<label for="finishDate">
		<g:message code="game.finishDate.label" default="Finish Date" />
		
	</label>
	<g:datePicker name="finishDate" precision="day"  value="${gameInstance?.finishDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="game.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createDate" precision="day"  value="${gameInstance?.createDate}"  />
</div>

