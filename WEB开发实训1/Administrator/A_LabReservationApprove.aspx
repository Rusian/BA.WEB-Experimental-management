<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Administrator.master" AutoEventWireup="true" CodeFile="A_LabReservationApprove.aspx.cs" Inherits="Administrator_A_ClassApprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body" id="labreserve">
        <br />
        <asp:GridView ID="GridView1" runat="server" align="center" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        PageSize="7" OnRowCancelingEdit ="GridView1_Canceling"
        Width="450px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  onpageindexchanging="GridView1_PageIndexChanging"  OnRowEditing="GridView1_RowEditing"   OnRowUpdating="GridView1_RowUpdating" ForeColor="#222222" GridLines="None" style="text-align: center">
          <AlternatingRowStyle BackColor="White" />
              <EditRowStyle BackColor="#7C6F57" />
              <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" />
              <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#F8FAFA" />
              <SortedAscendingHeaderStyle BackColor="#246B61" />
              <SortedDescendingCellStyle BackColor="#D4DFE1" />
              <SortedDescendingHeaderStyle BackColor="#15524A" />
         <Columns>
              <asp:BoundField DataField="实验室名称" HeaderText="实验室名称" SortExpression="实验室名称"  />
            <asp:BoundField DataField="预约教师" HeaderText="预约教师" SortExpression="预约教师"  />
             <asp:BoundField DataField="实验地点" HeaderText="实验地点" SortExpression="实验地点"/>
             
                 <asp:TemplateField HeaderText="是否批准">
                     <ItemStyle Width="90px"/>
                    <ItemTemplate>
                        <asp:CheckBox ID="sfpz" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                   <asp:CommandField ShowSelectButton="True" SelectText="详细" />
               <asp:CommandField ButtonType="Link" HeaderText="操作" ShowEditButton="True" />
        </Columns>
        </asp:GridView>
           <asp:DetailsView ID="DetailsView1" runat="server" align="center" Height="50px" Width="377px"  
         CellPadding="4" 
        AutoGenerateRows="False" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" style="text-align: center ;width:180px;" DataSourceID="SqlDataSource1" OnPageIndexChanging="DetailsView1_PageIndexChanging"  >
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <Fields>
            <asp:BoundField DataField="开始时间" HeaderText="开始时间" SortExpression="开始时间"  />
             <asp:BoundField DataField="结束时间" HeaderText="结束时间" SortExpression="结束时间" />
               <asp:BoundField DataField="实验班级" HeaderText="实验班级" SortExpression="实验班级" />
            <asp:BoundField DataField="实验时间" HeaderText="实验时间" SortExpression="实验时间"  />
             <asp:CheckBoxField DataField="审批状态" HeaderText="审批状态" SortExpression="审批状态" />
            
             
        </Fields>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:DetailsView>
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuConnectionString3 %>" SelectCommand="SELECT  [实验时间],[实验班级],[开始时间], [结束时间], [审批状态] FROM [LabReserve]"></asp:SqlDataSource>
   
    </div>
</asp:Content>

