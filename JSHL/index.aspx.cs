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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Page.Title = "Apply for Training";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                Session["Period"] = period.Text;
                if (field.SelectedItem.Value == "Others")
                {
                    Session["Field"] = stream.Text;
                }
                else
                {
                    Session["Field"] = field.SelectedItem.Value;
                }

                Response.Redirect("personal_detail.aspx");
            }
            else
            {
                Response.Write("Please Correct the Error");
            }
        }

        protected void field_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            stream.Visible = false;
            stream.Text = "Not Applicable";
            if (field.SelectedItem.Value=="Others")
            {
                
                stream.Visible = true;
                stream.Text = "";
            }
        }
    }
}