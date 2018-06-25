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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Login";
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int count = 0;
                conn.Open();
                string qr1 = "select count(*) from adminlog where LoginId ='" + loginid.Text + "' and Password ='" + password.Text + "'";
                SqlCommand cmd1 = new SqlCommand(qr1, conn);
                count = (int)cmd1.ExecuteScalar();
                if (count == 1)
                {
                    string dept = "", plant = "";
                    string qr = "select LoginId,Password,Name,Department,PlantCode from adminlog where LoginId ='" + loginid.Text + "' and Password ='" + password.Text + "'";
                    SqlCommand cmd = new SqlCommand(qr, conn);
                    SqlDataReader log;
                    log = cmd.ExecuteReader();
                    Session["Login"] = loginid.Text;
                    while (log.Read())
                    {
                        dept = log.GetValue(3).ToString();
                        plant = log.GetValue(4).ToString();
                    }
                    Session["Department"] = dept;
                    Session["Plant"] = plant;

                    if (dept == "HR")
                    {
                        Response.Redirect("hr.aspx");
                    }
                    else
                    {
                        Response.Redirect("dept.aspx");
                    }
                    
                }
                else
                {
                    Label1.Visible = true;
                }
                conn.Close();
            }
            catch(Exception ex)
            {
                Console.WriteLine("An error occurred: '{0}'", ex);
            }

        }
    }
}