using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JSHL
{
    public partial class gatepassapp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["AppNo"] = Request.QueryString["ApplicationNumber"].ToString();
            Response.Redirect("gatepass.aspx");
        }
    }
}