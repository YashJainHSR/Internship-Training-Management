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
    public partial class completiondet : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='login.aspx';", true);
            }
        }

        protected void assign_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                Session["AppNo"] = app.Text;
                Session["Perf"] = perf.Text;
                Session["StartDate"] = start.Text;
                Session["EndDate"] = end.Text;
                Response.Redirect("completionletter.aspx");
            }
            else
            {
                Response.Write("Please Correct the Error");
            }
        }

        protected void app_TextChanged(object sender, EventArgs e)
        {
            start.Text = "";
            start.Enabled = true;
            Session["AppNo"] = app.Text;
            conn.Open();
            string strt = "";
            string qr = "select StartDate from appstatus where ApplicationNumber ='" + Session["AppNo"] + "'";
            SqlCommand cmd = new SqlCommand(qr, conn);
            SqlDataReader pre;
            pre = cmd.ExecuteReader();
            while (pre.Read())
            {
                strt = pre.GetValue(0).ToString();
            }
            pre.Close();
            cmd.Dispose();
            conn.Close();
            if(strt!="")
            {
                start.Text = strt;
                start.Enabled = false;
            }
        }
    }
}