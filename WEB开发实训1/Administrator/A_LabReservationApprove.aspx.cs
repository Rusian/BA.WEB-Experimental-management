using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Administrator_A_ClassApprove : System.Web.UI.Page
{
     protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.bind();
        }   
    }
    protected void bind()
    {
        string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
        SqlConnection conn = new SqlConnection(mycon);
        conn.Open(); ;
        string sqlStr = "SELECT [实验室名称], [预约教师], [实验地点] FROM [LabReserve]";
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
        DetailsView1.PageIndex = GridView1.SelectedRow.DataItemIndex;
    }
    protected void GridView1_PageIndexChanging(object sender, EventArgs e) 
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        this.bind();
    }
    protected void GridView1_Canceling(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        this.bind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
          CheckBox chk = (CheckBox)GridView1.Rows[e.RowIndex].FindControl("sfpz");
          string tea = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
          string Labname = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text.ToString().Trim();
            if(chk.Checked ==true )
            {
             string mycon = "Data Source=RAMONA-LIU\\SQLEXPRESS;Initial Catalog=Stu;Integrated Security=True";
             SqlConnection conn = new SqlConnection(mycon);
             conn.Open();
             string sqlStr = "update LabReserve set 审批状态='1' where 实验室名称='" + Labname+"'";
             SqlCommand myCmd = new SqlCommand(sqlStr, conn);
             myCmd.ExecuteNonQuery();
             myCmd.Dispose();
            conn.Close();
            GridView1.EditIndex = -1;
            this.bind();
            }


        
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}