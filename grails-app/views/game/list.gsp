<%@ page import="crocodile.Game" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Список всех игр</title>
</head>
<body>
<h1>Выберите одну из игр</h1>
<g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
</g:if>
<div id="game-list">
    <g:render template="games" model="${["gameInstanceList": gameInstanceList]}"/>
</div>
<div class="paginateButtons">
    <g:paginate next="След" prev="Пред" total="${gameInstanceTotal}"/>
</div>
</body>
</html>
