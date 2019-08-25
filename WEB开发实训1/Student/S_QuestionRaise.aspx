<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Student.master" AutoEventWireup="true" CodeFile="S_QuestionRaise.aspx.cs" Inherits="Student_S_QuestionRaise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type ="text/css" >
       .table.a table
        {
            border:1px solid #000;
        }
        div
        {
            /*border-top:1px solid #000;
            border-bottom :1px solid #000;
            border-left:1px solid #000;
            border-right  :1px solid #000;*/
        }
        #TextBox4
        {
           margin-top :4px;
           margin-bottom :4px
        }
        #TextBox5
        { 
            margin-top :2px;
            margin-bottom  :2px;
        }
      
        .auto-style1
        {
            width: 416px;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">
        <table>
        <tr><td style ="border :1px solid #000;"><asp:Label ID="Label1" runat="server" Text="标题"></asp:Label>
&nbsp;&nbsp;&nbsp;</td>
        <td style ="border :1px solid #000;" class="auto-style1"><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;</td></tr>
       <tr><td style ="border :1px solid #000;"> <asp:Label ID="Label2" runat="server" Text="学生姓名"></asp:Label>
&nbsp;</td>
        <td style ="border :1px solid #000;" class="auto-style1"><asp:TextBox ID="txtName" runat="server" Width="67px" Height="16px" ></asp:TextBox>
        <br /></td></tr>
       <tr><td style ="border :1px solid #000;"> 留言教师</td>
        <td style ="border :1px solid #000;" class="auto-style1">
            <asp:DropDownList ID="dopTea" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>李慧</asp:ListItem>
                <asp:ListItem>张献忠</asp:ListItem>
                <asp:ListItem>朱迎庆</asp:ListItem>
                <asp:ListItem>harry</asp:ListItem>
            </asp:DropDownList>
           </td></tr>
        <tr><td style ="border :1px solid #000;"><asp:Label ID="Label3" runat="server" Text="关键词"></asp:Label>
&nbsp;&nbsp;</td>
        <td style ="border :1px solid #000;" class="auto-style1"><asp:TextBox ID="txtKey" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;</td></tr>
        <tr><td style ="border :1px solid #000;"><asp:Label ID="Label4" runat="server" Text="学生学号"></asp:Label>
&nbsp;</td>
        <td style ="border :1px solid #000;" class="auto-style1"><asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <br /></td></tr>
        <tr><td style ="border :1px solid #000;">实验名称</td>
        <td style ="border :1px solid #000;" class="auto-style1">
            <asp:DropDownList ID="dopLibName" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>精细化工实验</asp:ListItem>
                <asp:ListItem>C#程序设计</asp:ListItem>
                <asp:ListItem>单片机课程设计</asp:ListItem>
                <asp:ListItem>自动化控制实验</asp:ListItem>
            </asp:DropDownList>
            </td></tr>
        <tr><td style ="border :1px solid #000;">问题内容</td> 
        <td style ="border :1px solid #000;" class="auto-style1">
            <asp:TextBox ID="txtCon" runat="server" Height="115px" TextMode="MultiLine" Width="285px"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
            </td></tr>
       
    </table>
        <asp:Button ID ="Button1" runat ="server" Text="提交留言" OnClick="Button1_Click"></asp:Button>&nbsp;
        <asp:Button ID ="Button2" runat ="server" Text="重新填写"></asp:Button>
    </div>
        
    
</asp:Content>

