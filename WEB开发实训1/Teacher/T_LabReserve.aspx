<%@ Page Title="" Language="C#" MasterPageFile="~/母版/MasterPage_Teacher.master" AutoEventWireup="true" CodeFile="T_LabReserve.aspx.cs" Inherits="Teacher_T_LabReserve" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1 {
            width: 100%;
            margin-bottom: 0px;
            font-size: 36px;
            margin-left: 5px;
            color: blue;
            font-family: 黑体;
        }
        .style11
        {
            text-align: center;
            width: 650px;
            height: 400px;
            border: 1px;
            border-bottom: 1px solid blue;
            border-left: 1px solid blue;
            border-right: 1px solid blue;
            border-top: 1px solid blue;
            background-color: #F0F8FF;
            margin-left: 60px;
            margin-top: 10px;
        }
        .style2
        {
            margin-top: 10px;
            width: 300px;
            height: 50px;
            border: 1px solid Blue;
            font-size: 20px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content_body">
        <table class="style1">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="实验室预约表"></asp:Label>
                    </td>
                </tr>
            </table>
                        <table class="style11">
                            <tr>
                                <td class="style2">实验室名称：<asp:TextBox ID="txtExpername" runat="server" ></asp:TextBox>
                                    <asp:ImageButton ID="gbexname" runat="server" Height="22px" 
                                        ImageUrl="~/images/select.png" onclick="gbexname_Click" Width="23px" />
                                    <br />
                                    <asp:DropDownList ID="ExperName" runat="server" OnSelectedIndexChanged="ExperName_SelectedIndexChanged" Visible="False" AutoPostBack="True" Width="170px" Height="16px" style="margin-left: 0px" >
                                        <asp:ListItem>  </asp:ListItem>
                                        <asp:ListItem>计算机组成实验室</asp:ListItem>
                                        <asp:ListItem>精细化工实验室</asp:ListItem>
                                        <asp:ListItem>自动化实验室</asp:ListItem>
                                        <asp:ListItem>通讯实验室</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style2">
                                    实验室编号：<asp:TextBox ID="txtExperID" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    指导教师：<asp:TextBox ID="txtTeacher" runat="server" Height="16px" Width="163px"></asp:TextBox>
                                </td>
                                <td class="style2">
                                    课程名称：<asp:DropDownList ID="Coursename" runat="server" AutoPostBack="True" Width="170px" OnSelectedIndexChanged="Coursename_SelectedIndexChanged" Height="16px">
                                        <asp:ListItem>  </asp:ListItem>
                                        <asp:ListItem>C#课程设计</asp:ListItem>
                                        <asp:ListItem>精细化工实验</asp:ListItem>
                                        <asp:ListItem>自动化控制实验</asp:ListItem>
                                        <asp:ListItem>单片机课程设计</asp:ListItem>
                                    </asp:DropDownList>

                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    地点：<asp:TextBox ID="txtAddress" runat="server" AutoPostBack="True" OnTextChanged="txtAddress_TextChanged"></asp:TextBox>
                                    <asp:ImageButton ID="gbaddress" runat="server" Height="22px" 
                                        ImageUrl="~/images/select.png" onclick="gbaddress_Click" Width="23px" />
                                    <br />
                                    <asp:DropDownList ID="Address" runat="server" AutoPostBack="True" Width="170px"  Height="16px" Visible="False" OnSelectedIndexChanged="Address_SelectedIndexChanged1">
                                        <asp:ListItem>  </asp:ListItem>
                                        <asp:ListItem>玉衡楼A101</asp:ListItem>
                                        <asp:ListItem>玉衡楼B201</asp:ListItem>
                                        <asp:ListItem>开阳楼C303</asp:ListItem>
                                        <asp:ListItem>开阳楼A204</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style2">
                                    时间：<asp:TextBox 
                                        ID="TxtTime" runat="server" ></asp:TextBox>
                                    <asp:ImageButton ID="gbrili" runat="server" Height="24px" 
                                        ImageUrl="~/images/日历.jpg" onclick="gbrili_Click" Width="24px" ImageAlign="Middle" />
                                    <br />
                                    <asp:Calendar ID="Calendar1" runat="server" 
                                        onselectionchanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    专业：<asp:TextBox ID="txtMajor" runat="server" AutoPostBack="True" OnTextChanged="txtMajor_TextChanged"></asp:TextBox>
                                    <asp:ImageButton ID="gbmajor" runat="server" Height="22px" 
                                        ImageUrl="~/images/select.png" onclick="gbmajor_Click" Width="23px" />
                                    <br />
                                    <asp:DropDownList ID="Major" runat="server" AutoPostBack="True" Width="171px"  OnSelectedIndexChanged="Major_SelectedIndexChanged" Visible="False" Height="16px">
                                        <asp:ListItem>  </asp:ListItem>
                                        <asp:ListItem Value="1">计算机科学与技术</asp:ListItem>
                                        <asp:ListItem Value="2">应用化学</asp:ListItem>
                                        <asp:ListItem Value="3">通信</asp:ListItem>
                                        <asp:ListItem Value="4">自动化</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style2">
                                    班级：<asp:TextBox ID="txtClass" runat="server" AutoPostBack="True"></asp:TextBox>
                                    <asp:ImageButton ID="gbclass" runat="server" Height="22px" 
                                        ImageUrl="~/images/select.png" onclick="gbclass_Click" Width="23px" />
                                    <br />
                                    <asp:DropDownList ID="Class" runat="server" AutoPostBack="True" Width="150px" OnSelectedIndexChanged="Class_SelectedIndexChanged" Visible="False">
                                        <asp:ListItem>  </asp:ListItem>
                                        <asp:ListItem Value="2">14计一</asp:ListItem>
                                        <asp:ListItem Value="3">14计二</asp:ListItem>
                                        <asp:ListItem Value="4">14应化二</asp:ListItem>
                                        <asp:ListItem Value="5">14通一</asp:ListItem>
                                        <asp:ListItem Value="6">14应化一14通二</asp:ListItem>
                                        <asp:ListItem Value="7">14自动化一</asp:ListItem>
                                        <asp:ListItem Value="8">14自动化二</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    开始时间：<asp:TextBox ID="StartTime" 
                                        runat="server" ontextchanged="StartTime_TextChanged"></asp:TextBox>
                                    <asp:ImageButton ID="gbstartime" runat="server" Height="22px" 
                                        ImageUrl="~/images/select.png" onclick="gbstartime_Click" Width="23px" />
                                    <br />
                                    <asp:DropDownList ID="StartTime1" runat="server" Visible="False" OnSelectedIndexChanged="StartTime1_SelectedIndexChanged" AutoPostBack="True" Width="80px">
                                        <asp:ListItem>  </asp:ListItem>
                                        <asp:ListItem>上午</asp:ListItem>
                                        <asp:ListItem>下午</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="StartTime2" runat="server" Visible="False" OnSelectedIndexChanged="StartTime2_SelectedIndexChanged" AutoPostBack="True" Width="92px">
                                        <asp:ListItem>  </asp:ListItem>
                                        <asp:ListItem Value="第一节">第一节</asp:ListItem>
                                        <asp:ListItem Value="第二节">第二节</asp:ListItem>
                                        <asp:ListItem Value="第三节">第三节</asp:ListItem>
                                        <asp:ListItem Value="第四节">第四节</asp:ListItem>
                                        <asp:ListItem>第五节</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style2">
                                    结束时间：<asp:TextBox ID="EndTime" 
                                        runat="server" ontextchanged="EndTime_TextChanged"></asp:TextBox>
                                    <asp:ImageButton ID="gbendtime" runat="server" Height="22px" 
                                        ImageUrl="~/images/select.png" Width="23px" onclick="gbendtime_Click" />
                                    <br />
                                    <asp:DropDownList ID="EndTime1" runat="server" Visible="False" OnSelectedIndexChanged="EndTime1_SelectedIndexChanged" AutoPostBack="True" Width="80px">
                                        <asp:ListItem>  </asp:ListItem>
                                        <asp:ListItem>上午</asp:ListItem>
                                        <asp:ListItem>下午</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="EndTime2" runat="server" Visible="False" OnSelectedIndexChanged="EndTime2_SelectedIndexChanged" AutoPostBack="True" Width="90px" Height="16px">
                                        <asp:ListItem>  </asp:ListItem>
                                        <asp:ListItem Value="第一节">第一节</asp:ListItem>
                                        <asp:ListItem Value="第二节">第二节</asp:ListItem>
                                        <asp:ListItem Value="第三节">第三节</asp:ListItem>
                                        <asp:ListItem Value="第四节">第四节</asp:ListItem>
                                        <asp:ListItem>第五节</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        <tr>
                            <td>
                                <asp:Button ID="ok" runat="server" Text="提交" OnClick="ok_Click" Height="30px" Width="70px" BackColor="#E8E9EA" BorderColor="#CCCCCC" Font-Size="Large" />
                            </td>
                            <td>
                                <asp:Button ID="Cancel" runat="server" Text="清空" Height="30px" Width="70px" OnClick="Cancel_Click" BackColor="#E8E9EA" BorderColor="#CCCCCC" Font-Size="Large" />
                            </td>
                        </tr>
            </table>
    </div>
</asp:Content>
