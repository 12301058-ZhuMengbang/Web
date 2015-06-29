<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Enterprise.aspx.cs" Inherits="Web.Admin.Admin_Enterprise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <table width="100%" class="table table-hover table-bordered"> 
<thead> 
 <tr> 
 <th width="50">ID</th>
 <th>公司名</th> 
 <th width="50">手机</th>
 <th width="50">邮箱</th> 
 <th width="50">URL</th>
 <th width="50">规模</th>
 <th width="80">挑战数</th>
 <th width="70">邀请数</th> 
 <th width="60">操作</th> 
 </tr> 
 </thead> 
 <tbody>
 <tr>
   <asp:Repeater ID="rpt_Challenge" runat="server">
                    <ItemTemplate><td><a><%# Eval("Enterprice_ID")%></a></td> 
   <td><span><%# Eval("Enterprice_FullName")%></span></td> 
   <td><%# Eval("Enterprice_Phone")%></td>
   <td><%# Eval("Enterprice_Email")%></td> 
   <td><%# Eval("Enterprice_Url")%></td> 
   <td><%# Eval("Enterprice_Scale")%></td> 
   <td><%# Eval("Enterprice_Challenge_Num")%></td> 
   <td><%# Eval("Enterprice_Invite_Num")%></td> 
   <td><a href="">屏蔽</a> |
		            	<a href="">详情</a>|
		            	<a href="" class="J_ajax_del">Rock</a> |
		            	<a href="" class="J_ajax_del">时间机器</a> 
	</td> </ItemTemplate>
                </asp:Repeater>
</tr> 
</tbody>
</table>
</body>
</html>
