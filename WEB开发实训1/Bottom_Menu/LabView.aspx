<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Bottom_Menu.master" AutoEventWireup="true" CodeFile="LabView.aspx.cs" Inherits="Bottom_Menu_LabView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="bottom_menu">
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="XmlSiteMapProvider">
        </asp:SiteMapPath>
        
         <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        PageSize="3"
        Width="548px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="#333333" GridLines="None" DataKeyNames="实验室编号" DataSourceID="SqlDataSource1">
               <AlternatingRowStyle BackColor="White" />
             <Columns>
                   <asp:BoundField DataField="实验室编号" HeaderText="实验室编号" ReadOnly="True" SortExpression="实验室编号"  />
            <asp:BoundField DataField="实验室名称" HeaderText="实验室名称" SortExpression="实验室名称"  />
                  <asp:BoundField DataField="实验地点" HeaderText="实验地点" SortExpression="实验地点"  />
            <asp:BoundField DataField="管理员姓名" HeaderText="管理员姓名" SortExpression="管理员姓名"  />
                  
             </Columns>
               <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuConnectionString %>" SelectCommand="SELECT * FROM [Lab]"></asp:SqlDataSource>
    </div>
</asp:Content>

