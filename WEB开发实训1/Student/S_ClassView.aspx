<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Student.master" AutoEventWireup="true" CodeFile="S_ClassView.aspx.cs" Inherits="Student_S_ClassView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">
           
        <br />
        <br />
        <br />
           <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        PageSize="3"
        Width="548px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" />
             <Columns>
                   <asp:BoundField DataField="实验课程名称" HeaderText="实验课程名称"  />
            <asp:BoundField DataField="实验室地点" HeaderText="实验室地点"  />
                  <asp:BoundField DataField="节数" HeaderText="节数"  />
            <asp:BoundField DataField="周次" HeaderText="周次"  />
                  <asp:BoundField DataField="星期" HeaderText="星期"/>
                 <asp:BoundField DataField="授课教师" HeaderText="授课教师"/>
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
    </div>
</asp:Content>

