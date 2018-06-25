using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JSHL
{
    public partial class application_status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Application Status";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Application"] = applicationno.Text;
            Response.Redirect("astatus.aspx");
        }
    }
}