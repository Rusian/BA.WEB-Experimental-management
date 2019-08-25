using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Teacher_T_PasswordChange : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected String bind()
    {
        string name = Request.Cookies["myCookie"].Value;
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        string sqlstr = "select 登录密码 from Stud where 学号='"+name+"'" ;
        SqlCommand myCmd = new SqlCommand(sqlstr, conn);
        SqlDataReader dr = myCmd.ExecuteReader();
        if (dr.Read())
        {

            return dr["登录密码"].ToString().Trim ();
            
        }
        else
            return "0";
        
        conn.Close();
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string name = Request.Cookies["myCookie"].Value;
        String str;
        str = bind();
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        if (txtPsw1.Text == "")
            lbl1.Visible = true;
        else
            lbl1.Visible = false;
        if (txtPsw2.Text == "")
            lbl2.Visible = true;
        else
            lbl2.Visible = false;
        if (txtPsw3.Text == "")
            lbl3.Visible = true;
        else
            lbl3.Visible = false;
        if ((lbl1.Visible == false) && (lbl2.Visible == false) && (lbl3.Visible == false))
        {

            if (txtPsw2.Text.Trim() != txtPsw3.Text.Trim())
            {
                Response.Write("<script>alert('两次密码输入不一致，请重新输入')</script>");
            }
            else if (txtPsw1.Text.Trim() == str)
            {

                string newPsw = txtPsw3.Text.ToString().Trim();
                string sqlstr = "update Stud set 登录密码='" + newPsw + "'" + " where 学号='" + name + "'";
                SqlCommand myCmd = new SqlCommand(sqlstr, conn);
                myCmd.ExecuteNonQuery();
                myCmd.Dispose();
                conn.Close();
                Response.Write("<script>alert('密码修改成功')</script>");
                txtPsw1.Text = "";
                txtPsw2.Text = "";
                txtPsw3.Text = "";

            }

        }
    }
}