<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Quiz.aspx.cs" Inherits="Web.Admin.Admin_Challenge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body style="">
    <div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">

    </div>
    <div class="sidebar sting ">
        <ul>
            <li class="sil"><a href="Admin.aspx">个人用户管理<span class="hover"></span></a></li>
            <li class="sil"><a href="Admin_Enterprise.aspx">企业用户管理<span class="hover"></span></a></li>
            <li class="sil"><a href="Admin_Quiz.aspx">挑战信息管理<span class="hover"></span></a></li>
            <li class="sil"><a href="Admin_Challenge_Item.aspx">挑战题目管理<span class="hover"></span></a></li>
        </ul>
    </div>
    <form class="J_ajaxForm form-search" method="post" action="/tyt/index.php?g=&amp;m=admin_post&amp;a=index">
        <div class="search_type cc mb10">
        </div>
    </form>
    <form class="J_ajaxForm" action="" method="post">
        <div class="table_list">
            <table width="100%" class="table table-hover table-bordered">
                <thead>
                    <tr>
                        <th width="50">试题ID</th>
                        <th width="50">试题题目</th>
                        <th width="50">试题人数</th>
                        <th width="50">试题状态</th>
                        <th width="50">时间</th>
                        <th width="50">屏蔽</th>
                        <th width="80">挑战状态</th>
                        <th width="70">操作2</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <asp:Repeater ID="rpt_Challenge" runat="server">
                            <ItemTemplate>
                                <td><a><%# Eval("Quiz_ID")%></a></td>
                                <td><span><%# Eval("Quiz_Name")%></span></td>
                                <td><%# Eval("Quiz_Content")%></td>
                                <td><%# Eval("Quiz_Type")%></td>
                                <td><%# Eval("Quiz_Level")%></td>
                                <td>屏蔽</td>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </tbody>
            </table>
            <div class="pagination">&nbsp;<span class="current">1</span> <a href="">2</a> &nbsp;<a href="">下一页</a> <a href="">尾页</a> </div>
        </div>
    </form>

    <!-- jQuery -->
    <script src="../Public/JS/jquery-1.11.0.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script src="../Public/JS/bootstrap.min.js"></script>

    <!-- Sparkline -->
    <script src="../Public/JS/jquery.sparkline.min.js"></script>

    <!-- Bootstrap Switch -->
    <script src="../Public/JS/bootstrap-switch.min.js"></script>

    <!-- Bootstrap Select -->
    <script src="../Public/JS/bootstrap-select.min.js"></script>

    <!-- Bootstrap File -->
    <script src="../Public/JS/bootstrap-filestyle.js"></script>



    <!-- Summernote -->
    <script src="../Public/JS/summernote.min.js"></script>

    <!-- Theme script -->
    <script src="../Public/JS/script.js"></script>

    <script src="../Public/JS/bootstrapValidator.js"></script>

</body>
</html>
