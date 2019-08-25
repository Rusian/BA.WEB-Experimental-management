<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Student.master" AutoEventWireup="true" CodeFile="S_LabReport.aspx.cs" Inherits="Student_S_ReportUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
         .h3 {
            text-align:left;
            margin-left:10px;
            color:orange;
            font-size:50px;
            font-family:华文行楷;
        }
        .table {
            width:600px;
            border:2px solid lightslategray;
            background-color:#f1efef;
            text-align:left;
            margin-left:25px;
            margin-top:0px;
        }
        .style1
        {
            width:280px;
            height:40px;
            border:1px;
            border-style:solid;
            text-align:left;
            border-color:#808080;
        }
        .style2
        {
            width: 280px;
            height:80px;
            border:1px;
            border-style:solid;
            text-align:left;
            margin-top:2px;
            border-color:#808080;
        }
        .style3 {
                width: 560px;
                height: 80px;
                border: 1px;
                border-style: solid;
                margin-top: 2px;
                text-align: center;
                letter-spacing: 5px;
                border-color: #808080;
                vertical-align: text-top;
            }
        .style4
        {
            height:40px;
            border:1px;
            border-style:solid;
            margin-top:50px;
            text-align:center;
            margin-left:200px;
            border-color:#808080;
        }
       
        .title {
            font-size:40px;
            font-family:KaiTi;
            border:1px;
            border-style:solid;
            height:80px;
            margin-top:50px;
            text-align:center;
            margin-left:200px;
            border-color:#808080;
            background-color:aliceblue;
        }
        .div1 {
            font-size:medium;
            margin-left:670px;
        }
            .auto-style1 {
                font-size: 36px;
                font-family: 黑体;
                border: 1px solid #808080;
                height: 40px;
                margin-top: 50px;
                text-align: center;
                margin-left: 200px;
                background-color: aliceblue;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">
         <div class="div1">
             <asp:Label ID="Label13" runat="server" Text="实验成绩" Visible="False"></asp:Label>
             <asp:DropDownList ID="dopLibGrade" runat="server" Enabled="False" Visible="False">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>优秀</asp:ListItem>
                        <asp:ListItem>良好</asp:ListItem>
                        <asp:ListItem>中等</asp:ListItem>
                        <asp:ListItem>及格</asp:ListItem>
                        <asp:ListItem>不及格</asp:ListItem>
                    </asp:DropDownList>
            
             
            
        </div>
     <table class="table" cellpadding="2" cellspacing="0">
         <tr>
             <td colspan="2" class="title"><asp:Label ID="Label1" runat="server" Text="实验报告表"></asp:Label></td>
         </tr>
         
            <tr>
                <td class="style1">学号<asp:TextBox ID="txtid" runat="server" Width="90px"></asp:TextBox></td>
                <td class="style1">姓名<asp:TextBox ID="txtname" runat="server" Width="90px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style2">实验名称<asp:DropDownList ID="dolLibName" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>精细化工实验</asp:ListItem>
                        <asp:ListItem>C#程序设计</asp:ListItem>
                        <asp:ListItem>单片机课程设计</asp:ListItem>
                    </asp:DropDownList></td>
                <td class="style2">实验序号<asp:TextBox ID="txtLibId" runat="server"></asp:TextBox></td>
            </tr>
         <tr>
                <td class="style2">开始时间<asp:TextBox ID="txtBeginDate" runat="server"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="添加时间" /><br />
                    <asp:Calendar ID="cldBeginDate" runat="server" OnSelectionChanged="cldBeginDate_SelectionChanged1" Visible="False"></asp:Calendar>
                </td>
                <td class="style2">结束时间<asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" Text="添加时间" OnClick="Button4_Click" style="height: 21px" /><br />
                    <asp:Calendar ID="cldEndDate" runat="server" OnSelectionChanged="cldEndTime_SelectionChanged" Visible="False"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style2">实验地点<asp:DropDownList ID="dopLabLoca" runat="server" Height="16px" Width="200px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>开阳楼A301</asp:ListItem>
                    <asp:ListItem>玉衡楼A101</asp:ListItem>
                    <asp:ListItem>开阳楼C303</asp:ListItem>
                    <asp:ListItem>开阳楼A204</asp:ListItem>
                    </asp:DropDownList></td>
                <td class="style1">指导教师<asp:TextBox ID="txtteacher" runat="server" Width="133px" Height="19px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style3" colspan="2"><asp:Label ID="Label9" runat="server" Text="实验目的"  ></asp:Label><br />
                    <asp:TextBox ID="txtAim" runat="server" Height="80px" Width="400px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style3" colspan="2"><asp:Label ID="Label10" runat="server" Text="实验原理"></asp:Label><br />
                    <asp:TextBox ID="txtSource" runat="server" Height="80px" Width="400px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style3" colspan="2"><asp:Label ID="Label11" runat="server" Text="实验步骤"></asp:Label><br />
                    <asp:TextBox ID="txtPro" runat="server" Height="80px" Width="400px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style3" colspan="2"><asp:Label ID="Label12" runat="server" Text="实验结果"></asp:Label><br />
                    <asp:TextBox ID="txtRes" runat="server" Height="80px" Width="400px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
         <tr>
             <td class="style4"><asp:Button ID="ReSubmit" runat="server" Text="重新填写" Font-Size="Medium" Width="80px" BackColor="#CCCCCC"  /></td>
             <td class="style4"><asp:Button ID="Button1" runat="server" Text="提交" Font-Size="Medium" Width="80px" BackColor="#CCCCCC" OnClick="Button1_Click" /></td>
         </tr>
        </table>
        </div>
    </div>
</asp:Content>

