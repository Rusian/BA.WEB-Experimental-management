<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Student.master" AutoEventWireup="true" CodeFile="S_GradeView.aspx.cs" Inherits="Student_S_GradeView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">
        <br />
        <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="3" 
        PageSize="3"
        Width="548px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
             <Columns>
                   <asp:BoundField DataField="实验课程名称" HeaderText="实验课程名称"  />
            <asp:BoundField DataField="实验成绩" HeaderText="实验成绩"  />
                
             </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    </div>
</asp:Content>

