<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="T_GradeUpload.aspx.cs" Inherits="Teacher_T_GradeUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .banji {
            margin-left:120px;
            margin-top:15px;
            color: #7F3200;
        }
        .h3 {
            text-align: left;
            margin-left: 10px;
            color: #7F3200;
            font-size: 36px;
            font-family: 黑体;
        }
       
        .div1 {
            margin-top:15px;
            margin-left:150px;
            padding-right:20px
        }
        .content_body {
            background-image:url("../images/Grade1.jpg");
            
            background-size:770px,600px;
        }
        .td {
            width:100px;
            margin-left:50px;
        }
        .table {
            width:400px;
        }
        .div {
            margin-left:50px;
            margin-top:15px;
            width:544px;
            height:245px;
        }
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">

        <h3 class="h3">学生实验成绩</h3>
        <div class="banji">

        </div>
        
    <div class="div">
        <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="3" 
        PageSize="7"
        Width="407px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Groove" 
        BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
        <Columns>
             <asp:BoundField DataField="学号" HeaderText="学号"  />
            <asp:BoundField DataField="学生姓名" HeaderText="学生姓名"  />
             <asp:BoundField DataField="实验课程编号" HeaderText="实验课程编号"/>
          
            <asp:BoundField DataField="实验课程名称" HeaderText="实验课程名称" />
           
             
            <asp:BoundField DataField="实验成绩" HeaderText="实验成绩"  />
        </Columns>
              <FooterStyle BackColor="White" ForeColor="#000066" />
              <HeaderStyle BackColor="#996633" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="#996633" HorizontalAlign="Left" />
              <RowStyle ForeColor="#996633" />
              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#007DBB" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>       
    </div>
        <div class="div1">
            <table class="table">
            <tr>
                <td class="td"><asp:Button ID="Button1" runat="server" Text="上传成绩" BackColor="#996633" Font-Bold="true" Font-Size="Medium" BorderColor="#CCFFFF" OnClick="Button1_Click1" /></td>
             
            </tr>
        </table> 
        </div>
</div>
</asp:Content>

