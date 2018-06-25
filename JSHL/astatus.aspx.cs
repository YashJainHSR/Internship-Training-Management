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
    public partial class astatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Application Status";
            if (Session["Application"] == null)
            {
                var page = HttpContext.Current.CurrentHandler as Page;
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Session is Over/Logged Out');window.location ='application_status.aspx';", true);
            }
            else
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["IndustrialTrainingConnectionString"].ConnectionString);
                string appno = Session["Application"].ToString();
                Label5.Text = "Application Number: " + appno + "";
                conn.Open();
                string status = "";
                string qr = "select ApplicationNumber,Status from appstatus where ApplicationNumber='" + Session["Application"] + "'";
                SqlCommand cmd = new SqlCommand(qr, conn);
                SqlDataReader sta;
                sta = cmd.ExecuteReader();
                if (!sta.HasRows)
                {
                    var page = HttpContext.Current.CurrentHandler as Page;
                    ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", "alert('Incorrect Application Number');window.location ='application_status.aspx';", true);
                }
                while (sta.Read())
                {
                    status = sta.GetValue(1).ToString();
                }
                sta.Close();
                cmd.Dispose();
                conn.Close();
                if (status == "SUBMITTED")
                {
                    Submitted.Attributes["class"] = "active";
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    Label4.Visible = false;

                }
                else if (status == "HR APPROVED")
                {
                    Submitted.Attributes["class"] = "active";
                    ApprovedByHR.Attributes["class"] = "active";
                    conn.Open();
                    string dept = "",plant = "";
                    string qr1 = "select ApplicationNumber,PlantCode,Department from hrapproved where ApplicationNumber='" + Session["Application"] + "'";
                    SqlCommand cmd1 = new SqlCommand(qr1, conn);
                    SqlDataReader sta1;
                    sta1 = cmd1.ExecuteReader();
                    while (sta1.Read())
                    {
                        plant = sta1.GetValue(1).ToString();
                        dept = sta1.GetValue(2).ToString();
                    }
                    sta1.Close();
                    cmd1.Dispose();
                    conn.Close();
                    Label1.Text = "Deparment Assigned: " + dept + " ";
                    Label2.Text = "Plant Code: " + plant + " ";
                    Label1.Visible = true;
                    Label2.Visible = true;
                    Label3.Visible = false;
                    Label4.Visible = false;

                }
                else if (status == "DEPT APPROVED")
                {
                    Submitted.Attributes["class"] = "active";
                    ApprovedByHR.Attributes["class"] = "active";
                    ApprovedByDept.Attributes["class"] = "active";
                    conn.Open();
                    string dept = "", plant = "";
                    string qr1 = "select ApplicationNumber,PlantCode,Department from hrapproved where ApplicationNumber='" + Session["Application"] + "'";
                    SqlCommand cmd1 = new SqlCommand(qr1, conn);
                    SqlDataReader sta1;
                    sta1 = cmd1.ExecuteReader();
                    while (sta1.Read())
                    {
                        plant = sta1.GetValue(1).ToString();
                        dept = sta1.GetValue(2).ToString();
                    }
                    sta1.Close();
                    cmd1.Dispose();
                    string area = "", trainer = "";
                    string qr2 = "select ApplicationNumber,WorkArea,Trainer from Departmentapproved where ApplicationNumber='" + Session["Application"] + "'";
                    SqlCommand cmd2 = new SqlCommand(qr2, conn);
                    SqlDataReader sta2;
                    sta2 = cmd2.ExecuteReader();
                    while (sta2.Read())
                    {
                        area = sta2.GetValue(1).ToString();
                        trainer = sta2.GetValue(2).ToString();
                    }
                    sta2.Close();
                    cmd2.Dispose();
                    conn.Close();
                    Label1.Text = "Deparment Assigned: " + dept + " ";
                    Label2.Text = "Plant Code: " + plant + " ";
                    Label3.Text = "Work Area: " + area + " ";
                    Label4.Text = "Trainer Name: " + trainer + " ";
                    Label1.Visible = true;
                    Label2.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = true;

                }
                else if (status == "COMPLETED")
                {
                    Submitted.Attributes["class"] = "active";
                    ApprovedByHR.Attributes["class"] = "active";
                    ApprovedByDept.Attributes["class"] = "active";
                    Completed.Attributes["class"] = "active";
                    conn.Open();

                    string dept = "", plant = "";
                    string qr1 = "select ApplicationNumber,PlantCode,Department from hrapproved where ApplicationNumber='" + Session["Application"] + "'";
                    SqlCommand cmd1 = new SqlCommand(qr1, conn);
                    SqlDataReader sta1;
                    sta1 = cmd1.ExecuteReader();
                    while (sta1.Read())
                    {
                        plant = sta1.GetValue(1).ToString();
                        dept = sta1.GetValue(2).ToString();
                    }
                    sta1.Close();
                    cmd1.Dispose();
                    string area = "", trainer = "";
                    string qr2 = "select ApplicationNumber,WorkArea,Trainer from Departmentapproved where ApplicationNumber='" + Session["Application"] + "'";
                    SqlCommand cmd2 = new SqlCommand(qr2, conn);
                    SqlDataReader sta2;
                    sta2 = cmd2.ExecuteReader();
                    while (sta2.Read())
                    {
                        area = sta2.GetValue(1).ToString();
                        trainer = sta2.GetValue(2).ToString();
                    }
                    sta2.Close();
                    cmd2.Dispose();
                    conn.Close();
                    Label1.Text = "Deparment Assigned: " + dept + " ";
                    Label2.Text = "Plant Code: " + plant + " ";
                    Label3.Text = "Work Area: " + area + " ";
                    Label4.Text = "Trainer Name: " + trainer + " ";
                    Label1.Visible = true;
                    Label2.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = true;

                }
            }
        }

        protected void another_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("application_status.aspx");
        }
    }
}