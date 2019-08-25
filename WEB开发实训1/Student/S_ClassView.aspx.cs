using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_S_ClassView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.Cookies["myCookie"].Value;
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open(); ;
        string sqlStr = "SELECT [实验课程名称],[实验室地点], [节数], [周次], [星期],[授课教师] FROM [SLibCourse] where [学号]=" + name;
        SqlDataAdapter myDa = new SqlDataAdapter(sqlStr, conn);
        DataSet myDs = new DataSet();
        myDa.Fill(myDs);
        GridView1.DataSource = myDs;
        //   GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
        myDa.Dispose();
        myDs.Dispose();
        conn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}