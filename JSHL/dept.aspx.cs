using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace JSHL
{
    public partial class dept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Dept Login";
            if (Session["Login"] == null)
            {
                p1.Visible = false;
                p2.Visible = false;
                p3.Visible = false;
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='login.aspx';", true);

            }
            else if (Session["Department"] != null)
            {
                if (Session["Department"].ToString() == "HR")
                {
                    Response.Redirect("hr.aspx");
                }

                else
                {
                    p2.Visible = false;
                    p3.Visible = false;
                    NewApplications.Enabled = false;
                    Label1.Text = Session["Department"].ToString();
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='lightblue';";
                e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';";
                e.Row.ToolTip = "Click last column for selecting this row.";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["AppNo"] = GridView1.SelectedRow.Cells[0].Text;
            Response.Redirect("deptdash.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
            conn.Open();
            string qr = "update appstatus set Status = 'COMPLETED' where ApplicationNumber = '" + GridView2.SelectedRow.Cells[0].Text + "'";
            SqlCommand cmd = new SqlCommand(qr, conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            var page = HttpContext.Current.CurrentHandler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Application Completed ');window.location ='dept.aspx';", true);

        }

        protected void NewApplications_Click(object sender, EventArgs e)
        {
            p3.Visible = false;
            p2.Visible = false;
            p1.Visible = true;
            NewApplications.Enabled = false;
            InProgress.Enabled = true;
            Completed.Enabled = true;

        }

        protected void InProgress_Click(object sender, EventArgs e)
        {
            p3.Visible = false;
            p2.Visible = true;
            p1.Visible = false;
            NewApplications.Enabled = true;
            InProgress.Enabled = false;
            Completed.Enabled = true;
        }

        protected void Completed_Click(object sender, EventArgs e)
        {
            p3.Visible = true;
            p2.Visible = false;
            p1.Visible = false;
            NewApplications.Enabled = true;
            InProgress.Enabled = true;
            Completed.Enabled = false;
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}