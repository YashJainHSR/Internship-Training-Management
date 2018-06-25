using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JSHL
{
    public partial class confirmdet : System.Web.UI.Page
    {
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
                Session["StartDate"] = start.Text;
                Response.Redirect("confirmletter.aspx");
            }
            else
            {
                Response.Write("Please Correct the Error");
            }
        }
    }
}