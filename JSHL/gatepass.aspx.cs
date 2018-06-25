using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;


namespace JSHL
{
    public partial class gatepass : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string ApplicationNumber = Session["AppNo"].ToString();
            conn.Open();
            string status = "",photo="",l1 = "", l2 = "",l3 = "",l5 = "";
            string qr = "SELECT personaldetails.Fname, personaldetails.Lname, personaldetails.ApplicationNumber, personaldetails.Address, personaldetails.City, personaldetails.State, personaldetails.MobileNumber, personaldetails.Photo, hrapproved.Department, hrapproved.PlantCode, fieldselected.Period, appstatus.Status FROM personaldetails INNER JOIN hrapproved ON personaldetails.ApplicationNumber = hrapproved.ApplicationNumber INNER JOIN fieldselected ON personaldetails.ApplicationNumber = fieldselected.ApplicationNumber INNER JOIN appstatus ON personaldetails.ApplicationNumber = appstatus.ApplicationNumber WHERE (personaldetails.ApplicationNumber = @var)";
            SqlCommand cmd = new SqlCommand(qr, conn);
            cmd.Parameters.AddWithValue("@var", ApplicationNumber);
            SqlDataReader pre;
            pre = cmd.ExecuteReader();
            while (pre.Read())
            {
                l1 = pre.GetValue(0).ToString() + " " + pre.GetValue(1).ToString();
                l2 = pre.GetValue(3).ToString() + ", " + pre.GetValue(4).ToString() + ", " + pre.GetValue(5).ToString();
                l3 = pre.GetValue(8).ToString() + " (" + pre.GetValue(9).ToString() + ")";
                l5 = pre.GetValue(6).ToString();
                photo = pre.GetValue(7).ToString();
                status = pre.GetValue(11).ToString();
            }
            if(status=="HR APPROVED" || status=="DEPT APPROVED")
            {
                Label1.Text = l1;
                Label2.Text = l2;
                Label3.Text = l3;
                Label5.Text = l5;
                Image2.ImageUrl = photo;


                string barCode = ApplicationNumber;
                System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                using (Bitmap bitMap = new Bitmap(barCode.Length *13, 44))
                {
                    using (Graphics graphics = Graphics.FromImage(bitMap))
                    {
                        Font oFont = new Font("IDAutomationHC39M", 08);
                        PointF point = new PointF(1f, 1f);
                        SolidBrush blackBrush = new SolidBrush(Color.Black);
                        SolidBrush whiteBrush = new SolidBrush(Color.White);
                        graphics.FillRectangle(whiteBrush, 0, 0, barCode.Length*13, 44);
                        graphics.DrawString("*" + barCode + "*", oFont, blackBrush, point);
                    }
                    using (MemoryStream ms = new MemoryStream())
                    {
                        bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                        byte[] byteImage = ms.ToArray();

                        Convert.ToBase64String(byteImage);
                        imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                    }
                    plBarCode.Controls.Add(imgBarCode);
                }

            }
            else
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Not Applicable for Gate Pass');gBrowser.removeCurrentTab();", true);
            }

            
            pre.Close();
            cmd.Dispose();
            conn.Close();
        }
    }
}