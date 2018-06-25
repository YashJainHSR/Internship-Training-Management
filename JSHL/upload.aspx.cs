using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace JSHL
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "File Upload";
            if (Session["Skills"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='index.aspx';", true);
            }

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Session["PhotoFile"] != null)
            {
                HttpPostedFile letter = (HttpPostedFile)Session["PhotoFile"];
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (letter.HasFile)
            {
                try
                {
                    if (letter.PostedFile.ContentType.ToLower() == "image/jpeg" || letter.PostedFile.ContentType.ToLower() == "application/pdf" || letter.PostedFile.ContentType.ToLower() == "image/jpg" || letter.PostedFile.ContentType.ToLower() == "image/png")
                    {
                        if (letter.PostedFile.ContentLength < 2097152)
                        {
                            Session["PhotoFile"] = letter.PostedFile;
                            string filename = Path.GetFileName(letter.FileName);
                            Label1.Text = "File uploaded!";
                            Session["filename"] = filename;
                            var page = HttpContext.Current.CurrentHandler as Page;
                            ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('File Successfully Uploaded');window.location ='verify.aspx';", true);
                        }
                        else
                            Label1.Text = "The file has to be less than 2 MB !";
                    }
                    else
                        Label1.Text = "Only jpeg/jpg/png/pdf files are accepted!";
                }
                catch (Exception ex)
                {
                    Label1.Text = " The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            else
            {
                Label1.Text = "Please Upload the File!";
            }
        }
    }
}