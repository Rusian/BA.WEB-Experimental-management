<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Administrator.master" AutoEventWireup="true" CodeFile="A_DeviceRegulate.aspx.cs" Inherits="Administrator_A_DeviceRegulate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .h3 {
            text-align:left;
            margin-left:10px;
            margin-top:0;
            font-size:50px;
            font-family:华文行楷;
        }
        .div1 {
            margin-bottom:40px;
            padding:10px;
            height:170px;
        }
        .div2 {
            margin-bottom:40px;
            padding:10px;
            height:240px;
        }
        .content_body {
            background-image:url("../images/huax.jpg");
            background-repeat:no-repeat;
            background-size:cover;
        }

         .auto-style1 {
             text-align: right;
             margin-left: 10px;
             color: #990000;
             font-size: 36px;
             font-family: 黑体;
         }
     

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">
        <div class="div1">
         <h3 class="auto-style1"> <span>设备信息管理表</span></h3>
      <asp:GridView ID="GridView1" runat="server" align="right" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4"  
        PageSize="3"
        Width="375px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
        BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="设备编号" HeaderText="设备编号" ReadOnly="True" SortExpression="设备编号" />
            <asp:BoundField DataField="设备名称" HeaderText="设备名称" SortExpression="设备名称" />
           
             <asp:CommandField ShowSelectButton="True" SelectText="详细" />
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
    </div>
    <div class="div2">
    <asp:DetailsView ID="DetailsView1" runat="server" align="right" Height="50px" Width="377px"  
         CellPadding="4" 
        AutoGenerateRows="False" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" DataSourceID="SqlDataSource2">

        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
         <Fields>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" EditText="维修" NewText="新增" />
            <asp:BoundField DataField="设备编号"  HeaderText="设备编号" SortExpression="设备编号" ReadOnly="True" />
            <asp:BoundField DataField="设备名称" HeaderText="设备名称" SortExpression="设备名称"/>
            <asp:BoundField DataField="实验室名称"  HeaderText="实验室名称" SortExpression="实验室名称"  />
            <asp:BoundField DataField="设备数量"  HeaderText="设备数量" SortExpression="设备数量" />
            <asp:BoundField DataField="入库日期" HeaderText="入库日期" SortExpression="入库日期" />
            <asp:BoundField DataField="损坏情况" HeaderText="损坏情况" SortExpression="损坏情况" />
        </Fields>
    </asp:DetailsView>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
             ConnectionString="<%$ ConnectionStrings:StuConnectionString %>" 
             SelectCommand="SELECT [设备编号], [设备名称], [实验室名称], [设备数量], [入库日期], [损坏情况] FROM [LabEquipment]"
             DeleteCommand="DELETE FROM [LabEquipment] WHERE [设备编号] = @设备编号"
               InsertCommand="INSERT INTO [LabEquipment] ([设备编号], [设备名称], [实验室名称], [设备数量], [入库日期], [损坏情况]) VALUES (@设备编号, @设备名称, @实验室名称, @设备数量, @入库日期, @损坏情况)" 
             UpdateCommand="UPDATE [LabEquipment] SET [设备编号] = @设备编号, [设备名称] = @设备名称, [实验室名称] = @实验室名称, [设备数量] = @设备数量, [入库日期] = @入库日期,[损坏情况] = @损坏情况 WHERE [设备编号] = @设备编号" 
             >
              <DeleteParameters>
            <asp:Parameter Name="设备编号" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="设备编号" Type="String" />
            <asp:Parameter Name="设备名称" Type="String" />
            <asp:Parameter Name="实验室名称" Type="String" />
            <asp:Parameter Name="设备数量" Type="Int32" />
            <asp:Parameter Name="入库日期" Type="String" />
            <asp:Parameter Name="损坏情况" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="设备编号" Type="String" />
            <asp:Parameter Name="设备名称" Type="String" />
            <asp:Parameter Name="实验室名称" Type="String" />
            <asp:Parameter Name="设备数量" Type="Int32" />
            <asp:Parameter Name="入库日期" Type="String" />
            <asp:Parameter Name="损坏情况" Type="String" />
        </UpdateParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:StuConnectionString %>" 
             SelectCommand="SELECT [设备名称], [设备编号] FROM [LabEquipment]"></asp:SqlDataSource>
         <br />
       
       
    </div>
    </div>
</asp:Content>

