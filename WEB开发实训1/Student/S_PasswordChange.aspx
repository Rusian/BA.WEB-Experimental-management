<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Student.master" AutoEventWireup="true" CodeFile="S_PasswordChange.aspx.cs" Inherits="Teacher_T_PasswordChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
            .form {
                text-align: center;
                width: 633px;
                margin-left: 40px;
                margin-top: 100px;
                font-size: large;
                font-family: 华文中宋;
                height: 461px;
                left: 300px;
            }
        .auto-style1
        {
            width: 532px;
           
        }
        .auto-style2
        {
                width: 110px;
                margin-right: 1px;
                text-align: justify;
                font-family: 宋体, Arial, Helvetica, sans-serif;
            }
        .auto-style3
        {
                font-size: medium;
                margin-right: 1px;
                text-align: left;
                width: 284px;
                color: red;
                font-family: 黑体;
            }
        .content_body {
             background-image:url("../images/BOOK.jpg");
             

        }
        .p {
            margin-top:400px;
            margin-left:500px;
        }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">
        <div class="form">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">旧密码：</td>
                <td class="auto-style3"><asp:TextBox ID="txtPsw1" runat="server"></asp:TextBox>
                    <asp:Label ID="lbl1" runat="server" Text="*请输入旧密码" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">设置新密码：</td>
                <td class="auto-style3"><asp:TextBox ID="txtPsw2" runat="server"></asp:TextBox>
                    <asp:Label ID="lbl2" runat="server" Text="*请输入新密码" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">确认新密码：</td>
                <td class="auto-style3"><asp:TextBox ID="txtPsw3" runat="server"></asp:TextBox>
                    <asp:Label ID="lbl3" runat="server" Text="*请重新输入新密码" Visible="False"></asp:Label>
                </td>
            </tr>
        
        </table>
        <br />
        <br />
        <br />
        <p><asp:Button ID="Button1" runat="server" Height="34px" Text="保存" Width="78px" Font-Size="Large" Font-Bold="true" BorderColor="#CCFFCC" ForeColor="#FF99FF" style="margin-left: -150px" OnClick="Button1_Click1" /></p>

    
    </div>
    </div>
</asp:Content>

