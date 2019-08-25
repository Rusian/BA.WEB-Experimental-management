<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Bottom_Menu.master" AutoEventWireup="true" CodeFile="WorkerView.aspx.cs" Inherits="Bottom_Menu_WorkerView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="XmlSiteMapProvider">
        </asp:SiteMapPath>
        
      <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        PageSize="3"
        Width="548px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="#333333" GridLines="None" DataKeyNames="工号" DataSourceID="SqlDataSource1">
               <AlternatingRowStyle BackColor="White" />
             <Columns>
                   <asp:BoundField DataField="工号" HeaderText="工号" ReadOnly="True" SortExpression="工号"  />
            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名"  />
                  <asp:BoundField DataField="联系方式" HeaderText="联系方式" SortExpression="联系方式"  />
            
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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuConnectionString %>" SelectCommand="SELECT [工号], [姓名], [联系方式] FROM [Manger]"></asp:SqlDataSource>
</asp:Content>

