using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 母版_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.Cookies["myCookie"].Value;
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        string sqlstr = "select 姓名 from Manger where 工号=" + name;
        SqlCommand myCmd = new SqlCommand(sqlstr, conn);
        SqlDataReader dr = myCmd.ExecuteReader();
        if (dr.Read())
        {
            user_name.Text = dr["姓名"].ToString();
        }
    }
}
