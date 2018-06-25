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
    public partial class completionletter : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EndDate"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='login.aspx';", true);

            }
            else
            {
                string App = Session["AppNo"].ToString();
                string Perf = Session["Perf"].ToString();
                string StartDate = Session["StartDate"].ToString();
                string EndDate = Session["EndDate"].ToString();
                conn.Open();
                string AppNo = "", Degree = "", college = "", city = "", state = "", Fname = "", Lname = "", stream = "", Duration = "", cref = "", gender = "";
                string qr = "SELECT educationaldetails.ApplicationNumber, educationaldetails.Degree, educationaldetails.College, educationaldetails.Cstate, educationaldetails.Ccity, personaldetails.Fname, personaldetails.Lname, fieldselected.Field, fieldselected.Period, educationaldetails.Cref, personaldetails.Gender FROM educationaldetails INNER JOIN personaldetails ON educationaldetails.ApplicationNumber = personaldetails.ApplicationNumber INNER JOIN fieldselected ON educationaldetails.ApplicationNumber = fieldselected.ApplicationNumber WHERE (educationaldetails.ApplicationNumber = @App)";

                SqlCommand cmd = new SqlCommand(qr, conn);
                cmd.Parameters.AddWithValue("@App", App);
                SqlDataReader pre;
                pre = cmd.ExecuteReader();
                while (pre.Read())
                {
                    AppNo = pre.GetValue(0).ToString();
                    Degree = pre.GetValue(1).ToString();
                    college = pre.GetValue(2).ToString();
                    state = pre.GetValue(3).ToString();
                    city = pre.GetValue(4).ToString();
                    Fname = pre.GetValue(5).ToString();
                    Lname = pre.GetValue(6).ToString();
                    stream = pre.GetValue(7).ToString();
                    Duration = pre.GetValue(8).ToString();
                    cref = pre.GetValue(9).ToString();
                    gender = pre.GetValue(10).ToString();
                }
                pre.Close();
                cmd.Dispose();
                string today = DateTime.Now.ToString("dd MMMM yyyy");
                string qr1 = "update appstatus set CompleteCert = 'Issued',CompleteCertIssDate = '" + today + "',StartDate='" + StartDate + "',EndDate ='" + EndDate + "',Performance ='" + Perf + "' where ApplicationNumber = '" + Session["AppNo"] + "'";
                SqlCommand cmd1 = new SqlCommand(qr1, conn);
                cmd1.ExecuteNonQuery();

                conn.Close();
                if (AppNo != "")
                {
                    Label2.Text = Degree;
                    Label7.Text = stream;
                    Label3.Text = college;
                    Label4.Text = state;
                    Label5.Text = city;
                    Label6.Text = Fname + " " + Lname;
                    Label9.Text = Fname[0].ToString() + Lname[0].ToString();
                    Label10.Text = StartDate + " to " + EndDate;
                    Label11.Text = DateTime.Now.ToString("yyyy");
                    Label12.Text = Perf;
                    Label13.Text = DateTime.Now.ToString("dd MMMM yyyy");


                    if (gender == "Male")
                    {
                        Label14.Text = "Mr.";
                        Label1.Text = "his";
                        Label15.Text = "He";
                        Label16.Text = "him";
                        Label17.Text = "his";
                        Label19.Text = "his";

                    }
                    else
                    {
                        Label14.Text = "Ms.";
                        Label1.Text = "her";
                        Label15.Text = "She";
                        Label16.Text = "her";
                        Label17.Text = "her";
                        Label19.Text = "her";
                    }
                    string vac = DateTime.Now.ToString("MM");
                    int numVal = Convert.ToInt32(vac);
                    if (numVal <= 7)
                    {
                        Label20.Text = "Summer";
                    }
                    else
                    {
                        Label20.Text = "Winter";
                    }
                }
                else
                {
                    var page = HttpContext.Current.CurrentHandler as Page;
                    ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Incorrect Aplication Number');window.location ='confirmdet.aspx';", true);

                }
            }
        }
    }
}