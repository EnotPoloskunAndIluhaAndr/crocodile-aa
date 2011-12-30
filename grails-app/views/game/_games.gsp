<table>
    <tr>
        <th>
            Описание
        </th>
        <th>
            Максимальное число игроков
        </th>
        <th>
            Текущее число игроков
        </th>
        <th>
            Время начала игры
        </th>
        <th></th>
    </tr>
    <g:each in="${gameInstanceList}" var="gameInstance">
        <tr class="gameInstanceShow">
            <td>
                ${gameInstance.name}
            </td>
            <td>
                ${gameInstance.maxUsers}
            </td>
            <td>
                ${gameInstance.users.size()}
            </td>
            <td>Начало в <g:formatDate format="hh:mm:ss" date="${gameInstance.createDate}"/></td>
            <td><g:link action="show" id="${gameInstance.id}">Присоединиться к игре</g:link></td>
        </tr>
    </g:each>
</table>