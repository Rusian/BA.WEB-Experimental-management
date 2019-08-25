<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="Libgrade.aspx.cs" Inherits="内容页_Libgrade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <p>
         <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        PageSize="3"
        Width="375px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" >
             <AlternatingRowStyle BackColor="White" />
             <Columns>
             <asp:BoundField DataField="学号" HeaderText="学号" SortExpression="学号"  />
            <asp:BoundField DataField="学生姓名" HeaderText="学生姓名" SortExpression="学生姓名" />
            <asp:CommandField ShowSelectButton="True" SelectText="详细" />
        </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuConnectionString2 %>" SelectCommand="SELECT [学号], [学生姓名] FROM [LibReport]"></asp:SqlDataSource>
    </p>
    <p>
    <asp:DetailsView ID="DetailsView1" runat="server" align="center" Height="50px" Width="377px"  
         CellPadding="4" 
        AutoGenerateRows="False" DataKeyNames="实验课程编号" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" OnPageIndexChanging="DetailsView1_PageIndexChanging" DataSourceID="SqlDataSource3">
         <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
         <Fields>
              <asp:CommandField ShowEditButton="True" EditText="批阅" NewText="新增" />
            <asp:BoundField DataField="实验课程编号"  HeaderText="实验课程编号" ReadOnly="True" SortExpression="实验课程编号"  />
            <asp:BoundField DataField="实验课程名称" HeaderText="实验课程名称" SortExpression="实验课程名称" />
            <asp:BoundField DataField="实验室地点"  HeaderText="实验室地点" SortExpression="实验室地点"   />
              <asp:BoundField DataField="实验目的" HeaderText="实验目的" SortExpression="实验目的" />
            <asp:BoundField DataField="实验原理"  HeaderText="实验原理" SortExpression="实验原理"  />
            <asp:BoundField DataField="实验步骤" HeaderText="实验步骤" SortExpression="实验步骤"  />
            <asp:BoundField DataField="实验结果" HeaderText="实验结果" SortExpression="实验结果" />
              <asp:BoundField DataField="实验成绩" HeaderText="实验成绩" SortExpression="实验成绩" />

        </Fields>
         <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
         <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
         <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
         <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StuConnectionString %>" 
            SelectCommand="SELECT [实验课程编号], [实验课程名称], [实验室地点], [实验目的], [实验原理], [实验步骤], [实验结果], [实验成绩] FROM [LibReport]"
              UpdateCommand="UPDATE [LibReport] SET [实验成绩] = @实验成绩">
             <UpdateParameters>
            <asp:Parameter Name="实验成绩" Type="String" />
           
        </UpdateParameters>
        </asp:SqlDataSource>

    </p>

</asp:Content>

