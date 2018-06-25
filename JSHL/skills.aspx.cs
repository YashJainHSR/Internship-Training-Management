using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JSHL
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Skills";
            if (Session["Degree"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='index.aspx';", true);
            }
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Session["Skills"] != null)
            {
                skill.Text = Session["Skills"].ToString();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                Session["Skills"] = skill.Text;
               

                Response.Redirect("upload.aspx");
            }
            else
            {
                Response.Write("Please Correct the Error");
            }
            
        }
    }
}