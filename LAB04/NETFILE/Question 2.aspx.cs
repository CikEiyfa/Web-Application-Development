using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CB15125_LAB4_Question_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblUsername0.Text = "Thank you " + txtUsername.Text + " for your interest with Fakebook! ";
        lblGender.Text = "Gender :";
        lblGender0.Text = ddlGender.SelectedItem.Text;
        lblDOB.Text = "D.O.B :";
        lblDOB0.Text = Cal.SelectedDate.ToShortDateString();
        lblProfile.Text = "Profile Picture :";
        string fileName = System.IO.Path.GetFileName(UploadProfile.PostedFile.FileName);
        UploadProfile.PostedFile.SaveAs(Server.MapPath("~/images/" + fileName));
        ImgProfile.ImageUrl = "~/images/" + fileName;
        lblInterest.Text = "Write something about your interest :";
        lblInterest0.Text = txtInterest.Text;
    }
    public void MessageBox(String msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), " Message Box", "<script Language =  'javascript'>alert ('" + msg + "')</script>");
    }

    protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlGender.Items[0].Selected)
        {
            MessageBox("Please Select !");
        }
    }
}