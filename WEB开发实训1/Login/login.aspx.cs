using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class 母版_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str1 = txtNo.Text.ToString().Trim ();
        string str2;
        HttpCookie objCookie = new HttpCookie("myCookie",str1);
        Response.Cookies.Add(objCookie);
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        if (stu.Checked == true)
        {
            string sqlstr = "select 登录密码 from Stud where 学号=" + str1;
            SqlCommand myCmd = new SqlCommand(sqlstr, conn);
            SqlDataReader dr = myCmd.ExecuteReader();
            if (dr.Read())
            {
                str2 = dr["登录密码"].ToString().Trim ();
                if ( (str2 !=txtPsw .Text.Trim ()) )
                {
                    Response.Write("<script>alert('用户名或密码输入错误，请重新输入')</script>");
                }
                else
                {
                    Response.Redirect("../Student/StudentDefault.aspx");
                }
            }
        }
        if (manager.Checked == true)
        {
            string sqlstr = "select 登录密码 from Manger where 工号=" + str1;
            SqlCommand myCmd = new SqlCommand(sqlstr, conn);
            SqlDataReader dr = myCmd.ExecuteReader();
            if (dr.Read())
            {
                str2 = dr["登录密码"].ToString().Trim ();
                if (str2 != txtPsw.Text.Trim ())
                {
                    Response.Write("<script>alert('用户名密码输入错误，请重新输入')</script>");
                }
                else
                {
                    Response.Redirect("../Administrator/AdministratorDefault.aspx");
                }
            }
        }
        if (teach.Checked == true)
        {
            string sqlstr = "select 登录密码 from Teach where 教工号=" + str1;
            SqlCommand myCmd = new SqlCommand(sqlstr, conn);
            SqlDataReader dr = myCmd.ExecuteReader();
            if (dr.Read())
            {
                str2 = dr["登录密码"].ToString().Trim ();
                if (str2 != txtPsw.Text.Trim ())
                {
                    Response.Write("<script>alert('用户名或密码输入错误，请重新输入')</script>");
                }
                else
                {
                    Response.Redirect("../Teacher/TeacherDefault.aspx");
                }
            }
        }
    }
}