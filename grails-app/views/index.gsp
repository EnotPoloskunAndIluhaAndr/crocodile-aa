<html>
<head>
    <title>Игра Крокодил - главная страница</title>
    <meta name="layout" content="main" />
    <link rel="stylesheet" href="${resource(dir:'css',file: 'index.css')}" />
</head>
<body>
<g:link  class="play-random-link" url="${createLink(uri:"/")}">Играть!</g:link>
<ul id="navigation">
    <li><g:link  class="navigation-link" url="${createLink(controller: "game", action: "list")}">Список игр</g:link> </li>
    <li><g:link class="navigation-link" url="${createLink(uri:"/")}">Создать игру</g:link> </li>
    <li><g:link class="navigation-link" url="${createLink(uri:"/")}">Войти</g:link> </li>
</ul>

</body>
</html>
