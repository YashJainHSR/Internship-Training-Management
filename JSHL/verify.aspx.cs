using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.IO;

namespace JSHL
{
    public partial class verify : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Verification";
            if (Session["filename"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='index.aspx';", true);
            }
            else
            {

                string field = Session["Field"].ToString();
                string fname = Session["Fname"].ToString();
                string lname = Session["Lname"].ToString();
                string email = Session["Email"].ToString();
                string dob = Session["Dob"].ToString();
                string gender = Session["Gender"].ToString();
                string address = Session["Address"].ToString();
                string state = Session["State"].ToString();
                string city = Session["City"].ToString();
                string mobile = Session["Mobile"].ToString();
                string degree = Session["Degree"].ToString();
                string status = Session["Status"].ToString();
                string cyear = Session["Cyear"].ToString();
                string cref = Session["Cref"].ToString();
                string college = Session["College"].ToString();
                string cemail = Session["Cemail"].ToString();
                string cstate = Session["Cstate"].ToString();
                string ccity = Session["Ccity"].ToString();
                string ssyear = Session["Ssyear"].ToString();
                string ssboard = Session["Ssboard"].ToString();
                string ssperc = Session["Ssperc"].ToString();
                string stream = Session["Stream"].ToString();
                string ssschool = Session["Ssschool"].ToString();
                string syear = Session["Syear"].ToString();
                string sboard = Session["Sboard"].ToString();
                string sperc = Session["Sperc"].ToString();
                string sschool = Session["Sschool"].ToString();
                string skills = Session["Skills"].ToString();
                string document = Session["filename"].ToString();
                string Url = Session["Imageloc"].ToString();

                string ename = Session["EmpName"].ToString();
                string eid = Session["EmpId"].ToString();
                string emob = Session["EmpMob"].ToString();


                Label1.Text = fname;
                Label2.Text = lname;
                Label3.Text = email;
                Label4.Text = dob;
                Label5.Text = gender;
                Label6.Text = ename + "/" + eid + "/" + emob;
                Label7.Text = address + ", " + city + ", " + state;
                Label8.Text = mobile;
                Label9.Text = degree;
                Label10.Text = college;
                Label11.Text = status;
                Label12.Text = cyear;
                Label13.Text = cemail;
                Label14.Text = skills;
                Label15.Text = document;
                Label16.Text = cref;
                Image1.ImageUrl = Url;
            }





        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string prefix = DateTime.Now.ToString("yyyyMM");
            string dir = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath;

            string field = Session["Field"].ToString();
            string fname = Session["Fname"].ToString();
            string lname = Session["Lname"].ToString();
            string email = Session["Email"].ToString();
            string dob = Session["Dob"].ToString();
            string gender = Session["Gender"].ToString();
            string address = Session["Address"].ToString();
            string state = Session["State"].ToString();
            string city = Session["City"].ToString();
            string mobile = Session["Mobile"].ToString();
            string degree = Session["Degree"].ToString();
            string status = Session["Status"].ToString();
            string cyear = Session["Cyear"].ToString();
            string cref = Session["Cref"].ToString();
            string college = Session["College"].ToString();
            string cemail = Session["Cemail"].ToString();
            string cstate = Session["Cstate"].ToString();
            string ccity = Session["Ccity"].ToString();
            string ssyear = Session["Ssyear"].ToString();
            string ssboard = Session["Ssboard"].ToString();
            string ssperc = Session["Ssperc"].ToString();
            string stream = Session["Stream"].ToString();
            string ssschool = Session["Ssschool"].ToString();
            string syear = Session["Syear"].ToString();
            string sboard = Session["Sboard"].ToString();
            string sperc = Session["Sperc"].ToString();
            string sschool = Session["Sschool"].ToString();
            string skills = Session["Skills"].ToString();
            string ename = Session["EmpName"].ToString();
            string eid = Session["EmpId"].ToString();
            string emob = Session["EmpMob"].ToString();







            conn.Open();
            string qr = "insert into fieldselected OUTPUT Inserted.ApplicationNumber select ('" + prefix + "' + format(cast((select isnull(MAX(REPLACE(ApplicationNumber,'" + prefix + "','')),0) + 1 from fieldselected where LEFT(ApplicationNumber,6)='" + prefix + "') as int),'0000','en-US')), '" + Session["Field"] + "','" + Session["Period"] + "'";
            SqlCommand cmd = new SqlCommand(qr, conn);
            Session["AppNo"] = cmd.ExecuteScalar();

            HttpPostedFile photo = (HttpPostedFile)Session["Photo"];
            string photoname = Path.GetFileName(photo.FileName);
            string loc = @"~/Uploads/" + Session["AppNo"] + "/";
            Directory.CreateDirectory(Server.MapPath(loc));
            photo.SaveAs(Server.MapPath("~/Uploads/" + Session["AppNo"] + "/") + photoname);
            string photoloc = "~/Uploads/" + Session["AppNo"] + "/" + photoname.ToString();

            HttpPostedFile letter = (HttpPostedFile)Session["PhotoFile"];
            string filename = Path.GetFileName(letter.FileName);
            string location = @"~/Uploads/" + Session["AppNo"] + "/";
            Directory.CreateDirectory(Server.MapPath(location));
            letter.SaveAs(Server.MapPath("~/Uploads/"+Session["AppNo"]+"/") + filename);
            string image = "~/Uploads/"+ Session["AppNo"] + "/" + filename.ToString();



            string qr1 = "insert into personaldetails values('" + Session["AppNo"] + "','" + fname + "','" + lname + "','" + email + "','" + dob + "','" + gender + "','" + address + "','" + city + "','" + state + "','" + mobile + "','" + ename + "','" + eid + "','" + emob + "','" + photoloc + "')";
            SqlCommand cmd1 = new SqlCommand(qr1, conn);
            cmd1.ExecuteNonQuery();
            string qr2 = "insert into educationaldetails values('" + Session["AppNo"] + "','" + degree + "','" + status + "','" + cyear + "','" + college + "','" + cemail + "','" + cstate + "','" + ccity + "','" + ssyear + "','" + ssboard + "','" + ssperc + "','" + stream + "','" + ssschool + "','" + syear + "','" + sboard + "','" + sperc + "','" + sschool + "','" + skills + "','" + cref + "')";
            SqlCommand cmd2 = new SqlCommand(qr2, conn);
            cmd2.ExecuteNonQuery();
            string qr3 = "insert into DocumentUpload values('" + Session["AppNo"] + "','" + image + "')";
            SqlCommand cmd3 = new SqlCommand(qr3, conn);
            cmd3.ExecuteNonQuery();
            string qr4 = "insert into appstatus values('" + Session["AppNo"] + "','SUBMITTED','Not Issued','NA','Not Issued','NA','','','')";
            SqlCommand cmd4 = new SqlCommand(qr4, conn);
            cmd4.ExecuteNonQuery();
            string qr5 = "insert into hrapproved values('" + Session["AppNo"] + "','Not Approved','Not Approved')";
            SqlCommand cmd5 = new SqlCommand(qr5, conn);
            cmd5.ExecuteNonQuery();
            string qr6 = "insert into Departmentapproved values('" + Session["AppNo"] + "','Not Approved','Not Approved')";
            SqlCommand cmd6 = new SqlCommand(qr6, conn);
            cmd6.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            Session["verify"] = "Verified";

            MailMessage mail = new MailMessage();
            mail.Subject = "Industrial Training/Internship JSHL";
            mail.From = new MailAddress("Mailid");
            mail.To.Add(email);
            mail.Body = fname + " " + lname + ", your Application is Submitted for Industrial Training/Internship at JSHL.<br>Your Application Number is " + Session["AppNo"] + "<br>For Further information/query contact Mrs. Uma Kaushik (HR Manager)<br><br>This is an Autogenerated Mail,Please don't Reply.<br><br>";
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            smtp.Credentials = new System.Net.NetworkCredential("Mailid", "Password");

            try
            {
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }

            MailMessage mail1 = new MailMessage();
            Attachment doc = new Attachment(Server.MapPath(image));
            
            mail1.Subject = "Industrial Training JSHL (" + Session["AppNo"] + ")";
            mail1.From = new MailAddress("Mailid");
            mail1.To.Add("yashjain.2016@vitstudent.ac.in");
            mail1.Body = "A New Application is Submitted with Application Number: " + Session["AppNo"] + " (" + fname + " " + lname + ") <br>To Process the application <a href=\"" + dir + "login.aspx\"><u>Click Here</u></a><br><br>This is an Autogenerated Mail,Please don't Reply.<br><br>";
            mail1.IsBodyHtml = true;
            mail1.Attachments.Add(doc);
            SmtpClient smtp1 = new SmtpClient("smtp.gmail.com", 587);
            smtp1.EnableSsl = true;
            smtp1.Credentials = new System.Net.NetworkCredential("Mailid", "Password");

            try
            {
                smtp1.Send(mail1);
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }

            var page = HttpContext.Current.CurrentHandler as Page;
            ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Application Submitted Successfully ');window.location ='application_submitted.aspx';", true);
        }
    }
}
