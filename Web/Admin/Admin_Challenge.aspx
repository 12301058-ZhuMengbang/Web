<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Challenge.aspx.cs" Inherits="Web.Admin.Admin_Challenge1" %>

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
                        <th width="50">挑战ID</th>
                        <th width="50">公司名称</th>
                        <th width="50">起薪范围</th>
                        <th width="50">已接受人数</th>
                        <th width="50">发起时间</th>
                        <th width="70">屏蔽</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <asp:Repeater ID="rpt_Challenge" runat="server">
                            <ItemTemplate>
                                <td><a><%# Eval("Challenge_ID")%></a></td>
                                <td><span><%# Eval("Challenge_Name")%></span></td>
                                <td><%# Eval("Challenge_Salary")%></td>
                                <td><%# Eval("Challenge_Num")%></td>
                                <td><%# Eval("Challenge_Publish")%></td>
                                <td>屏蔽</td>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </tbody>
            </table>
            <div class="pagination">&nbsp;<span class="current">1</span> <a href="">2</a> &nbsp;<a href="">下一页</a> <a href="">尾页</a> </div>
        </div>
    </form>
</body>
</html>
