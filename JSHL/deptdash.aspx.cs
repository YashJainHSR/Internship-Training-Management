﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Net.Mail;

namespace JSHL
{
    public partial class deptdash : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "DashBoard";
            if (Session["Login"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='login.aspx';", true);
            }
            else if (Session["AppNo"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Application is not Selected');window.location ='hr.aspx';", true);
            }
            else
            {
                string Application = Session["AppNo"].ToString();
                Label1.Text = Application;
            }
        }

        protected void assign_Click(object sender, EventArgs e)
        {
            conn.Open();
            string qr = "update Departmentapproved set WorkArea = '" + area.Text + "',Trainer = '" + trainer.Text + "' where ApplicationNumber = '" + Session["AppNo"] + "'";
            SqlCommand cmd = new SqlCommand(qr, conn);
            cmd.ExecuteNonQuery();
            string qr1 = "update appstatus set Status = 'DEPT APPROVED' where ApplicationNumber = '" + Session["AppNo"] + "'";
            SqlCommand cmd1 = new SqlCommand(qr1, conn);
            cmd1.ExecuteNonQuery();
            string qr3 = "select Email from personaldetails where ApplicationNumber = '" + Session["AppNo"] + "'";
            SqlCommand cmd3 = new SqlCommand(qr3, conn);
            string email = (String)cmd3.ExecuteScalar();
            cmd.Dispose();
            cmd1.Dispose();
            conn.Close();

            MailMessage mail = new MailMessage();
            mail.Subject = "Industrial Training JSHL";
            mail.From = new MailAddress("internship@jshl.in");
            mail.To.Add("yashjain.2016@vitstudent.ac.in");
            mail.Body = "Application Number " + Session["AppNo"] + " is Approved by the " + Session["Department"] + " Department and is Assigned Area: " + area.Text + " and Trainer: " + trainer.Text + "<br><br>This is an Autogenerated Mail,Please don't Reply.<br><br>";
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            smtp.Credentials = new System.Net.NetworkCredential("internship@jshl.in", "Power@111");

            try
            {
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }

            MailMessage mail1 = new MailMessage();
            mail1.Subject = "Industrial Training JSHL";
            mail1.From = new MailAddress("internship@jshl.in");
            mail1.To.Add(email);
            mail1.Body = "Application Number " + Session["AppNo"] + " is Approved by the " + Session["Department"] + " Department and is Assigned Area: " + area.Text + " and Trainer: " + trainer.Text + "<br>You have to Report to Mrs. Uma Kaushik (HR Manager).<br><br>This is an Autogenerated Mail,Please don't Reply.<br><br>";
            mail1.IsBodyHtml = true;

            SmtpClient smtp1 = new SmtpClient("smtp.gmail.com", 587);
            smtp1.EnableSsl = true;
            smtp1.Credentials = new System.Net.NetworkCredential("internship@jshl.in", "Power@111");

            try
            {
                smtp1.Send(mail1);
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }

            var page = HttpContext.Current.CurrentHandler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Application Assigned Successfully ');window.location ='dept.aspx';", true);
        }
    }
}