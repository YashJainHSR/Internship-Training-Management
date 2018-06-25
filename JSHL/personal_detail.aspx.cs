using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace JSHL
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Personal Details";
            err.Text = "Only Jpg,Jpeg,Png format accepted.";
            if (Session["Field"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='index.aspx';", true);
            }
                
            
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Session["Fname"] != null)
            {
                fname.Text = Session["Fname"].ToString();
                lname.Text = Session["Lname"].ToString();
                email.Text = Session["Email"].ToString();
                dob.Text = Session["Dob"].ToString();
                gender.Text = Session["Gender"].ToString();
                address.Text = Session["Address"].ToString();
                state.Text = Session["State"].ToString();
                city.Text = Session["City"].ToString();
                mobile.Text = Session["Mobile"].ToString();
                ename.Text = Session["EmpName"].ToString();
                eid.Text = Session["EmpId"].ToString();
                emob.Text = Session["EmpMob"].ToString();
                HttpPostedFile photo = (HttpPostedFile)Session["Photo"];
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Page.Validate( );
            if (Page.IsValid)
            {
                Session["Fname"] = fname.Text;
                Session["Lname"] = lname.Text;
                Session["Email"] = email.Text;
                Session["Dob"] = dob.Text;
                Session["Gender"] = gender.SelectedItem.Value;
                Session["Address"] = address.Text;
                Session["State"] = state.Text;
                Session["City"] = city.Text;
                Session["Mobile"] = mobile.Text;
                Session["EmpName"] = ename.Text;
                Session["EmpId"] = eid.Text;
                Session["EmpMob"] = emob.Text;



                if (photo.HasFile)
                {
                    try
                    {
                        if (photo.PostedFile.ContentType.ToLower() == "image/jpeg" || photo.PostedFile.ContentType.ToLower() == "image/jpg" || photo.PostedFile.ContentType.ToLower() == "image/png")
                        {
                            if (photo.PostedFile.ContentLength < 2097152)
                            {
                                Session["Photo"] = photo.PostedFile;
                                string filename = Path.GetFileName(photo.FileName);
                                photo.SaveAs(Server.MapPath("~/Uploads/") + filename);
                                err.Text = "File uploaded!";
                                string image = "~/Uploads/" + filename.ToString();
                                Session["Imageloc"] = image;
                                Session["file_name"] = filename;
                            }
                            else
                                err.Text = "The file has to be less than 2 MB !";
                        }
                        else
                            err.Text = "Only jpeg/jpg/png files are accepted!";
                    }
                    catch (Exception ex)
                    {
                        err.Text = " The file could not be uploaded. The following error occured: " + ex.Message;
                    }
                }
                else
                {
                    err.Text = "Please Upload the File!";
                }
                Response.Redirect("educational_details.aspx");
            }
            else
            {
                Response.Write("Please Correct the Error");
            }
        }
        
    }
}