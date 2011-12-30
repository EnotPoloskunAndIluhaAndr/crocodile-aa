<%@ page import="crocodile.Game" %>
<!doctype html>
<html>
<head>
    <title>Игра крокодил</title>
    <meta name="layout" content="main" />
    <link rel="stylesheet" href="${resource(dir:'css',file: 'show-game.css')}" />
    <script language="javascript" type="text/javascript" src="${resource(dir: 'js', file:'gameshow.js')}"></script>
</head>
<body>
<div id="gamespace">
    <div id="userlist">
        <g:render id="userlist" template="userlist" model="${[users:gameInstance.users]}"/>
    </div>
    <div id="image">
        <canvas id="canvas">
          <!--  <img src="${createLink(controller: "game", action: "renderImage", id:gameInstance.id)}"/>   -->
        </canvas></div>
    <div id="chat">
        <g:render template="chat" model="${[messages:gameInstance.messages]}"/>
    </div>
    <fieldset  id="message-send">
        <g:form method="post">
            <g:hiddenField name="id"  value="${gameInstance?.id}"/>
            <g:textField id="message-field" name="message"/>
            <g:actionSubmit action="addMessageToGame" value="отправить сообщение"/>
        </g:form>
    </fieldset>
</div>
</body>
</html>
