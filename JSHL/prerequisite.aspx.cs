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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Prerequisite";
            if (Session["Field"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='index.aspx';", true);
            }
            else
            {
                string var = Session["Field"].ToString();
                conn.Open();
                string prerequisite = "", who = "";
                string qr = "select id,field,prerequisite,who from field where field='" + var + "'";
                SqlCommand cmd = new SqlCommand(qr, conn);
                SqlDataReader pre;
                pre = cmd.ExecuteReader();
                while (pre.Read())
                {
                    prerequisite = pre.GetValue(2).ToString();
                    who = pre.GetValue(3).ToString();
                }

                Label1.Text = prerequisite;
                Label2.Text = who;
                pre.Close();
                cmd.Dispose();
                conn.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("personal_detail.aspx");
        }
    }
}