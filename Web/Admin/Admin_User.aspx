<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_User.aspx.cs" Inherits="Web.Admin.Admin_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form class="J_ajaxForm" action="" method="post"> 
<div class="table_list"> 
<table width="100%" class="table table-hover table-bordered"> 
<thead> 
 <tr> 
 <th width="50">用户ID</th>
 <th>姓名</th> 
 <th width="50">性别</th>
 <th width="50">年龄</th>
 <th width="50">邮箱</th>
 <th width="50">手机</th> 
 <th width="80">用户等级</th>
 <th width="80">用户价值</th>
 <th width="60">屏蔽</th> 
 </tr> 
 </thead> 
 <tbody>
 <tr>
   <asp:Repeater ID="rpt_Challenge" runat="server">
                    <ItemTemplate><td><a><%# Eval("User_ID")%></a></td> 
   <td><span><%# Eval("User_Name")%></span></td> 
   <td><%# Eval("User_Sex")%></td> 
   <td><%# Eval("User_Age")%></td>
   <td><%# Eval("User_Email")%></td> 
   <td><%# Eval("User_Phone")%></td> 
   <td><%# Eval("User_Level")%></td> 
   <td><%# Eval("User_Price")%></td> 
   <td><a href="">屏蔽</a>|<a href="">Rock</a> |
		            	<a href="">时间机器</a> 
	</td> </ItemTemplate>
</asp:Repeater>
</tr> 
</tbody>
</table> 
</form>
</body>
</html>
