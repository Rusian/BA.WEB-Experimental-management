using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_S_ReportUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
        {
            if (cldBeginDate.Visible && cldEndDate.Visible)
            {
                cldBeginDate.Visible = false;
                cldEndDate.Visible = false;
            }
            else
            {
                cldBeginDate.Visible = true;
                cldEndDate.Visible = true;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (cldBeginDate.Visible && cldEndDate.Visible)
            {
                cldBeginDate.Visible = false;
                cldEndDate.Visible = false;
            }
            else
            {
                cldBeginDate.Visible = true;
                cldEndDate.Visible = true;
            }
        }

        protected void cldBeginDate_SelectionChanged1(object sender, EventArgs e)
        {
            txtBeginDate.Text = cldBeginDate.SelectedDate.ToString("yyyy/MN/dd");
        }

        protected void cldEndTime_SelectionChanged(object sender, EventArgs e)
        {
            txtEndDate.Text = cldEndDate.SelectedDate.ToString("yyyy/MN/dd");
            cldEndDate.Visible = false;
            cldBeginDate.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
            SqlConnection conn = new SqlConnection(mycon);
            conn.Open();
            string sqlstr = "insert into LibReport values(@实验课程编号,@实验课程名称,@学号,@学生姓名,@指导教师,@实验室地点,@开始时间,@结束时间,@实验目的,@实验原理,@实验步骤,@实验结果,@实验成绩)";
            SqlCommand myCmd = new SqlCommand(sqlstr, conn);

            myCmd.Parameters.Add(new SqlParameter("@实验课程编号", txtLibId .Text .Trim ()));
            myCmd.Parameters.Add(new SqlParameter("@实验课程名称", dolLibName .SelectedValue ));
            myCmd.Parameters.Add(new SqlParameter("@学号", Convert.ToInt32(txtid .Text )));
            myCmd.Parameters.Add(new SqlParameter("@学生姓名",txtname .Text .Trim ()));
            myCmd.Parameters.Add(new SqlParameter("@指导教师", txtteacher .Text .Trim ()));
            myCmd.Parameters.Add(new SqlParameter("@实验室地点",dopLabLoca .SelectedValue ));
            myCmd.Parameters.Add(new SqlParameter("@开始时间", txtBeginDate .Text .Trim ()));
            myCmd.Parameters.Add(new SqlParameter("@结束时间", txtEndDate.Text.Trim()));
            myCmd.Parameters.Add(new SqlParameter("@实验目的", txtAim .Text .Trim ()));
            myCmd.Parameters.Add(new SqlParameter("@实验原理", txtSource.Text.Trim()));
            myCmd.Parameters.Add(new SqlParameter("@实验步骤", txtPro .Text .Trim ()));
            myCmd.Parameters.Add(new SqlParameter("实验结果", txtRes.Text.Trim()));
            myCmd.Parameters.Add(new SqlParameter("实验成绩", dopLibGrade .SelectedValue ));
            if (myCmd.ExecuteNonQuery() > 0)
                Response.Write("<script>alert('添加成功')</script>");
            else
                Response.Write("<script>alert('添加失败')</script>");
            conn.Close();
        }


    }
