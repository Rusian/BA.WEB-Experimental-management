using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Teacher_T_QuestionReply_test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.bind();
        }
    }
    protected string rebind() 
    { 
        string name = Request.Cookies["myCookie"].Value;
        
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        string sqlstr = "select 姓名 from Teach where 教工号=" + name;
        SqlCommand myCmd = new SqlCommand(sqlstr, conn);
        SqlDataReader dr = myCmd.ExecuteReader();
        if (dr.Read())
        {
           
           return   dr["姓名"].ToString().Trim ();
        }
        else 
            return "0";
        dr .Close ();
        conn .Close ();
    }
    protected void bind()
    {    
        string str2=rebind ();
         string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
            string sqlStr = "select [学号],[学生姓名],[标题] from [Question] where 指导教师='" + str2 + "' ";
            SqlDataAdapter myDa = new SqlDataAdapter(sqlStr, conn);
            DataSet myDs = new DataSet();
            myDa.Fill(myDs);
            GridView1.DataSource = myDs;
            GridView1.DataBind();
            myDa.Dispose();
            myDs.Dispose();
        
        
        conn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DetailsView1.PageIndex = GridView1.SelectedRow.DataItemIndex;
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.bind();
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}