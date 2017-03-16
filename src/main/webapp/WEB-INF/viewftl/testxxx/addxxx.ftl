<div class="right">
	<div class="right_top">
		<font color="red">${msg!}</font><br>
		<form method="post" action="addUser.do">
			userName:<input name="userName" type="text"/><br>
			email:<input name="email" type="text"/><br>
			phone:<input name="phone" type="text"/><br>
			age:<input name="age" type="text"/><br><br>
			<button type="submit">添加用户</button>
		</form>
		<br><br><hr>
		<#if pager??&pager.resultList??>
			<table>
			<tr>
			<td>用户ID</td><td>用户名</td><td>邮箱</td><td>手机</td><td>地址</td><td>年龄</td>
			</tr>
				<#list pager.resultList as ul>
					<tr>
					<td>${ul.userId}</td><td>${ul.userName}</td><td>${ul.email}</td><td>${ul.phone}</td><td>${ul.address}</td><td>${ul.age}</td>
					</tr>
				</#list>
			</table>
			<@p.pagination  value=pager uri='/test/testUser/queryUser.do'/>
		</#if>
		<br><br>
		<a href="/test/testUser/queryUser.do">查询</a>
	</div>
</div>