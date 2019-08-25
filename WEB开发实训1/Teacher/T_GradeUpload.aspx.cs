using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Teacher_T_GradeUpload : System.Web.UI.Page
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
        string str1;
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        string sqlstr = "select 姓名 from Teach where 教工号=" + name;
        SqlCommand myCmd = new SqlCommand(sqlstr, conn);
        SqlDataReader dr = myCmd.ExecuteReader();
        if (dr.Read())
        {

            return dr["姓名"].ToString().Trim();
        }
        else
            return "0";
        dr.Close();
        conn.Close();
    }
    protected void bind()
    {
        string str2 = rebind();
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        string sqlStr = "select [实验课程编号],[实验课程名称],[学号],[学生姓名],[实验成绩] from [LibReport] where 指导教师='"+ str2 +"' ";
        SqlDataAdapter myDa = new SqlDataAdapter(sqlStr, conn);
        DataSet myDs = new DataSet();
        myDa.Fill(myDs);
        GridView1.DataSource = myDs;
        GridView1.DataBind();
        myDa.Dispose();
        myDs.Dispose();
        conn.Close();
    }
    
   
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.bind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        int i;
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open();
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            string sno = GridView1.Rows[i].Cells[0].Text.ToString();
            string sname = GridView1.Rows[i].Cells[1].Text.ToString();
            string LibNo = GridView1.Rows[i].Cells[2].Text.ToString();
            string LibName = GridView1.Rows[i].Cells[3].Text.ToString();
            string LibGrade = GridView1.Rows[i].Cells[4].Text.ToString();
            string sqlstr = "insert into LibGrade values(@学号,@学生姓名,@实验课程编号,@实验课程名称,@实验成绩)";
            SqlCommand myCmd = new SqlCommand(sqlstr, conn);
            myCmd.Parameters.Add(new SqlParameter("@学号", sno));
            myCmd.Parameters.Add(new SqlParameter("@学生姓名", sname));
            myCmd.Parameters.Add(new SqlParameter("@实验课程编号", LibNo));
            myCmd.Parameters.Add(new SqlParameter("@实验课程名称", LibName));
            //myCmd.Parameters.Add(new SqlParameter("@授课教师", '@李慧'));
            myCmd.Parameters.Add(new SqlParameter("@实验成绩", LibGrade));
            if (myCmd.ExecuteNonQuery() > 0)
                Response.Write("<script>alert('上传成功')</script>");
            else
                Response.Write("<script>alert('上传失败')</script>");
        }

        conn.Close();
    }
}