﻿using System;
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
    public partial class confirmletter : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StartDate"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='login.aspx';", true);

            }
            else
            {
                string App = Session["AppNo"].ToString();
                string StartDate = Session["StartDate"].ToString();
                conn.Open();
                string AppNo = "", Degree = "",college = "",city = "",state = "", Fname = "", Lname = "",stream = "",Duration = "",cref = "",gender = "";
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
                string qr1 = "update appstatus set ConfirmCert = 'Issued',ConfirmCertIssDate = '" + today + "',StartDate='" + StartDate + "' where ApplicationNumber = '" + Session["AppNo"] + "'";
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
                    Label8.Text = Duration;
                    Label9.Text = Fname[0].ToString() + Lname[0].ToString();
                    Label10.Text = StartDate;
                    Label11.Text = DateTime.Now.ToString("yyyy");
                    Label12.Text = Fname + " " + Lname;
                    Label13.Text = DateTime.Now.ToString("dd MMMM yyyy");
                    if (cref != "")
                    {
                        Label1.Text = cref;
                    }
                    else
                    {
                        Label1.Text = "";
                    }

                    if (gender == "Male")
                    {
                        Label14.Text = "Mr.";
                    }
                    else
                    {
                        Label14.Text = "Ms.";
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