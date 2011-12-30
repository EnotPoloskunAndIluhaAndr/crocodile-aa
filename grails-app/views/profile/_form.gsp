<%@ page import="crocodile.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="profile.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" maxlength="20" value="${profileInstance?.fullName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'avatar', 'error')} ">
	<label for="avatar">
		<g:message code="profile.avatar.label" default="Avatar" />
		
	</label>
	<input type="file" id="avatar" name="avatar" />
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'victoryWords', 'error')} ">
	<label for="victoryWords">
		<g:message code="profile.victoryWords.label" default="Victory Words" />
		
	</label>
	<g:select name="victoryWords" from="${crocodile.Word.list()}" multiple="multiple" optionKey="id" size="5" value="${profileInstance?.victoryWords*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'homepage', 'error')} ">
	<label for="homepage">
		<g:message code="profile.homepage.label" default="Homepage" />
		
	</label>
	<g:field type="url" name="homepage" value="${profileInstance?.homepage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'skin', 'error')} required">
	<label for="skin">
		<g:message code="profile.skin.label" default="Skin" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="skin" required="" value="${profileInstance?.skin}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="profile.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createDate" precision="day"  value="${profileInstance?.createDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'language', 'error')} ">
	<label for="language">
		<g:message code="profile.language.label" default="Language" />
		
	</label>
	<g:textField name="language" value="${profileInstance?.language}"/>
</div>

