<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="T_ClassView.aspx.cs" Inherits="Teacher_T_ClassView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">
        <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        PageSize="3"
        Width="486px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
        BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
             <Columns>
                   <asp:BoundField DataField="实验课程名称" HeaderText="实验课程名称"  />
            <asp:BoundField DataField="实验室地点" HeaderText="实验室地点"  />
                  <asp:BoundField DataField="节数" HeaderText="节数"  />
            <asp:BoundField DataField="周次" HeaderText="周次"  />
                  <asp:BoundField DataField="星期" HeaderText="星期"  />
             </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
        <br />
    </div>
</asp:Content>

