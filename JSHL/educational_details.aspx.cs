using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JSHL
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Educational Details";
            if (Session["Fname"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='index.aspx';", true);
            }
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Session["Degree"] != null)
            {
                degree.Text = Session["Degree"].ToString();
                status.Text = Session["Status"].ToString();
                cyear.Text = Session["Cyear"].ToString();
                cref.Text = Session["Cref"].ToString();
                college.Text = Session["College"].ToString();
                cemail.Text = Session["Cemail"].ToString();
                cstate.Text = Session["Cstate"].ToString();
                ccity.Text = Session["Ccity"].ToString();
                ssyear.Text = Session["Ssyear"].ToString();
                ssboard.Text = Session["Ssboard"].ToString();
                ssperc.Text = Session["Ssperc"].ToString();
                stream.Text = Session["Stream"].ToString();
                ssschool.Text = Session["Ssschool"].ToString();
                syear.Text = Session["Syear"].ToString();
                sboard.Text = Session["Sboard"].ToString();
                sperc.Text = Session["Sperc"].ToString();
                sschool.Text = Session["Sschool"].ToString();

            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                Session["Degree"] = degree.Text;
                Session["Status"] = status.SelectedItem.Value;
                Session["Cyear"] = cyear.Text;
                Session["Cref"] = cref.Text;
                Session["College"] = college.Text;
                Session["Cemail"] = cemail.Text;
                Session["Cstate"] = cstate.Text;
                Session["Ccity"] = ccity.Text;
                Session["Ssyear"] = ssyear.Text;
                Session["Ssboard"] = ssboard.Text;
                Session["Ssperc"] = ssperc.Text;
                Session["Stream"] = stream.Text;
                Session["Ssschool"] = ssschool.Text;
                Session["Syear"] = syear.Text;
                Session["Sboard"] = sboard.Text;
                Session["Sperc"] = sperc.Text;
                Session["Sschool"] = sschool.Text;


                Response.Redirect("skills.aspx");
            }
            
        }

    }
}