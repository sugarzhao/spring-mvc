<div class="right">
	<div class="right_top">
		<table width="768" border="0" align="center" cellpadding="0" cellspacing="0" class="inquiry">
			<tbody>
	        	<tr>
					<td height="43">
	                	<table border="0" cellspacing="0" cellpadding="0">
							<tbody>
	                        	<tr>
									<form method="post" action="queryUser.do" id="queryForm">
										userName:<input name="f[userName]" type="text" value="${pager.f.userName!}"/>
										email:<input name="f[email]" type="text" value="${pager.f.email!}"/>
										phone:<input name="f[phone]" type="text" value="${pager.f.phone!}"/>
										address:<input name="f[address]" type="text" value="${pager.f.address!}"/>
										age:<input name="f[age]" type="text" value="${pager.f.age!}"/>
										<td width="200">
	                                        <input type="submit" name="formSubmit" value=" " class="inquiry-btn-1">
	                                    </td>
									</form>
	                                    
								</tr>
							</tbody>
						</table>
	                </td>
	            </tr>
	        </tbody>
		</table>
	</div>
	<br />
	<div class="right_botoom">
		<table width="768" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <td>
		    	<input name="checkAll" type="checkbox" title="全选">
		    </td>
		    <td>用户idsss</td>
		    <td>用户名称</td>
		    <td>邮箱</td>
		    <td>手机号 </td>
		    <td>地址</td>
		    <td>年龄</td>
		  </tr>
		  <#if pager.resultList??>
			<#list pager.resultList as ul>
				<tr>
				<td>
					<input name="checkAll" type="checkbox" title="">
				</td>
				<td>${ul.userId}</td>
				<td>${ul.userName}</td>
				<td>${ul.email}</td>
				<td>${ul.phone}</td>
				<td>${ul.address}</td>
				<td>${ul.age}</td>
				</tr>
			</#list>
		</#if>
		</table>
	</div>
	<@p.pagination  value=pager uri='/test/testUser/queryUser.do'/>
</div>