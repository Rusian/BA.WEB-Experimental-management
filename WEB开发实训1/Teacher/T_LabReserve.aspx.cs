using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Teacher_T_LabReserve : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public SqlConnection GetConnection()
    {
        string myStr = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection myConn = new SqlConnection(myStr);
        return myConn;
    }
    protected void gbexname_Click(object sender, ImageClickEventArgs e)
    {
        ExperName.Visible = true;
    }
    //实验室名字以及编号
    protected void ExperName_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ExperName.SelectedItem.Text != " ")
            txtExpername.Text = ExperName.SelectedItem.Text.ToString();
        ExperName.Visible = false;

        SqlConnection myConn = GetConnection();
        myConn.Open();
        if (ExperName.SelectedValue != null)
        {
            String str = txtExpername.Text;
            string sqlStr = "select 实验室编号 from Lab where 实验室名称='" + str + "'";
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);

            SqlDataReader dr = myCmd.ExecuteReader();//产生DataReader对象
            if (dr.Read())
            {
                txtExperID.Text = dr["实验室编号"].ToString();
            }
            else
            {
                Response.Write("<script>alert('没有找到相关记录！')</script>");
            }
            myConn.Close();
        }
    }
    //时间
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TxtTime.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
        Calendar1.Visible = false;
    }
    protected void Address_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void Major_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtMajor.Text = Major.SelectedItem.Text.ToString();
        Major.Visible = false;
    }
    protected void Class_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Class.SelectedItem.Text != " ")
            txtClass.Text = Class.SelectedItem.Text.ToString();
        Class.Visible = false;
    }
    protected void gbaddress_Click(object sender, ImageClickEventArgs e)
    {
        Address.Visible = true;
    }
    protected void gbrili_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void gbclass_Click(object sender, ImageClickEventArgs e)
    {
        Class.Visible = true;
    }
    protected void gbmajor_Click(object sender, ImageClickEventArgs e)
    {
        Major.Visible = true;
    }
    protected void gbstartime_Click(object sender, ImageClickEventArgs e)
    {
        StartTime1.Visible = true;
        StartTime2.Visible = true;
    }
    protected void gbendtime_Click(object sender, ImageClickEventArgs e)
    {
        EndTime1.Visible = true;
        EndTime2.Visible = true;
    }
    protected void StartTime_TextChanged(object sender, EventArgs e)
    {
        if (StartTime1.SelectedItem.Text != " ")
            StartTime.Text = StartTime1.SelectedItem.ToString();
    }

    protected void EndTime_TextChanged(object sender, EventArgs e)
    {
        EndTime.Text = EndTime1.SelectedValue.ToString() + EndTime2.SelectedValue.ToString();
        EndTime1.Visible = false;
        EndTime2.Visible = false;
    }
    protected void StartTime1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (StartTime1.SelectedItem.Text != " ")
            StartTime.Text = StartTime1.SelectedItem.ToString();
    }
    protected void StartTime2_SelectedIndexChanged(object sender, EventArgs e)
    {
        StartTime.Text = StartTime1.SelectedItem.ToString() + " " + StartTime2.SelectedItem.ToString();
        StartTime1.Visible = false;
        StartTime2.Visible = false;
    }
    protected void EndTime1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (EndTime1.SelectedItem.Text != " ")
            EndTime.Text = EndTime1.SelectedItem.ToString();
    }
    protected void EndTime2_SelectedIndexChanged(object sender, EventArgs e)
    {
        EndTime.Text = EndTime1.SelectedItem.ToString() + " " + EndTime2.SelectedItem.ToString();
        EndTime1.Visible = false;
        EndTime2.Visible = false;
    }
    protected void ok_Click(object sender, EventArgs e)
    {
        SqlConnection myConn = GetConnection();
        myConn.Open();
        String strname = txtExpername.Text;
        String strid = txtExperID.Text;
        String strteacher = txtTeacher.Text;
        String straddress = txtAddress.Text;
        String strtime = TxtTime.Text;
        String strmajor = txtMajor.Text;
        String strclass = txtClass.Text;
        String stsrtime = StartTime.Text;
        String endtime = EndTime.Text;
        string LibName = Coursename.SelectedValue;
       
        string sqlStr = "insert into  LabReserve values ('" + strname + "','" + strid + "','" + LibName + "','" + strteacher + "','" + straddress + "','" + strtime + "','" + strmajor + "','" + strclass + "','" + strtime + "','" + endtime + "',0)";
        SqlCommand myCmd1 = new SqlCommand(sqlStr, myConn);
        //myCmd.CommandType=CommandType.Text;
        //myCmd.CommandText=sqlStr;
        //myCmd.Parameters.Add(new);
        int n=myCmd1.ExecuteNonQuery();
        if (n > 0)
        {
            Response.Write("<script>alert('添加成功')</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败')</script>");
        }
        myConn.Close();

    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Coursename.SelectedValue="";
        txtExpername.Text = " ";
        txtExperID.Text = " ";
        txtTeacher.Text = "";
        txtAddress.Text = " ";
        TxtTime.Text = " ";
        txtMajor.Text = " ";
        txtClass.Text = " ";
        StartTime.Text = " ";
        EndTime.Text = " ";
        
    }



    protected void Coursename_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtAddress_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Address_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtAddress.Text = Address.SelectedItem.Text.ToString();
        Address.Visible = false;
    }
    protected void txtMajor_TextChanged(object sender, EventArgs e)
    {

    }
}