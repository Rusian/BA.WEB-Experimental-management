<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="T_QuestionReply.aspx.cs" Inherits="Teacher_T_QuestionReply_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">
         <p>
         <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
        AutoGenerateColumns="False" 
        PageSize="3"
        Width="375px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" onpageindexchanging="GridView1_PageIndexChanging" >
             <Columns>
             <asp:BoundField DataField="学号" HeaderText="学号"   />
            <asp:BoundField DataField="学生姓名" HeaderText="学生姓名"  />
              <asp:BoundField DataField="标题" HeaderText="问题"  />
            <asp:CommandField ShowSelectButton="True" SelectText="详细" />
        </Columns>
        </asp:GridView>
        </p>
         <p>
             <asp:DetailsView ID="DetailsView1" runat="server" align="center" Height="50px" Width="377px"  
         CellPadding="4" 
        AutoGenerateRows="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" OnPageIndexChanging="DetailsView1_PageIndexChanging" DataSourceID="SqlDataSource1" CellSpacing="2" ForeColor="Black" >
         <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                   <Fields>
                       <asp:CommandField ShowEditButton="True" EditText="回复" NewText="新增" />
            <asp:BoundField DataField="实验名称"  HeaderText="实验名称" SortExpression="实验名称"  />
            <asp:BoundField DataField="关键词" HeaderText="关键词" SortExpression="关键词"  />
            <asp:BoundField DataField="问题内容"  HeaderText="问题内容" SortExpression="问题内容"   />
             <asp:BoundField DataField="回复内容"  HeaderText="回复内容 " SortExpression="回复内容"   />
        </Fields>
                 <FooterStyle BackColor="#CCCCCC" />
                 <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                 <RowStyle BackColor="White" />
                 </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuConnectionString %>" 
            SelectCommand="SELECT [实验名称], [关键词], [问题内容],[回复内容] FROM [Question] "
            UpdateCommand="UPDATE [Question] SET [回复内容] = @回复内容 WHERE 问题内容=@问题内容" >
              <UpdateParameters>
            <asp:Parameter Name="回复内容" Type="String" />
           
        </UpdateParameters>
        </asp:SqlDataSource>
        </p>
    </div>
</asp:Content>

