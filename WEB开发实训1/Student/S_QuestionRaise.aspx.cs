using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_S_QuestionRaise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        string sqlstr = "insert into Question values(@标题,@学号,@学生姓名,@指导教师,@实验名称,@关键词,@问题内容,@回复内容)";
        SqlCommand myCmd = new SqlCommand(sqlstr, conn);
        myCmd.Parameters.Add(new SqlParameter("@标题", txtTitle.Text.Trim()));
        myCmd.Parameters.Add(new SqlParameter("@学号", txtID.Text.Trim ()));
        myCmd.Parameters.Add(new SqlParameter("@学生姓名", txtName.Text.Trim()));
        myCmd.Parameters.Add(new SqlParameter("@指导教师", dopTea.SelectedValue));
        myCmd.Parameters.Add(new SqlParameter("@实验名称", dopLibName.SelectedValue));
        myCmd.Parameters.Add(new SqlParameter("@关键词", txtKey.Text.Trim()));
        myCmd.Parameters.Add(new SqlParameter("@问题内容", txtCon.Text.Trim()));
        myCmd.Parameters.Add(new SqlParameter("@回复内容", Label5.Text.Trim()));
        if (myCmd.ExecuteNonQuery() > 0)
            Response.Write("<script>alert('添加成功')</script>");
        else
            Response.Write("<script>alert('添加失败')</script>");
        conn.Close();
    }
}