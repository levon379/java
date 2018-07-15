<#import "parts/common.ftl" as c>

<@c.page>
List of users
<table>
    <thead>
    <tr>
        <th>User</th>
        <th>Role</th>
    </tr>
    </thead>
    <tbody>
<#list users as user>
<tr>
    <td>${user.username}</td>
    <td><#list user.roles as role>${role}<#sep>, </#list></td>
    <td><a href="/user/${user.id}">edit</td>
</tr>
</#list>
    </tbody>
</table>
</@c.page>