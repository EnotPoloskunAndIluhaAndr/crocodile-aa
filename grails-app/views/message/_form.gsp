<%@ page import="crocodile.Message" %>



<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="message.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="message" required="" value="${messageInstance?.message}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="message.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createDate" precision="day"  value="${messageInstance?.createDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: messageInstance, field: 'game', 'error')} required">
	<label for="game">
		<g:message code="message.game.label" default="Game" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="game" name="game.id" from="${crocodile.Game.list()}" optionKey="id" required="" value="${messageInstance?.game?.id}" class="many-to-one"/>
</div>

