using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class JLogin : System.Web.UI.MasterPage
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        JDT = JAdapter.SelectBY_UID(Convert.ToInt32(Session["JID"].ToString()));
        Image2.ImageUrl = JDT.Rows[0]["Photo"].ToString();
        lblname.Text = JDT.Rows[0]["fname"].ToString() + " " + JDT.Rows[0]["lname"].ToString();

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["JID"] = null;
        Session["jemail"] = null;
        Response.Redirect("Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        lblname.Text = "";
        if (drpskill.SelectedIndex == 0 || drpdegree.SelectedIndex == 0)
        {
            lblresult.Text = "Invalid Search";
        }
        else
        {
            Session["CL"] = txtcanme.Text + "%";
            Session["DL"] = drpdegree.SelectedItem.Text;
            Session["SL"] = drpskill.SelectedItem.Text;
            Response.Redirect("JLogin.aspx");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["CL"] = null;
        Response.Redirect("JLogin.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("JApplied.aspx");
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/profile/") + FileUpload1.FileName);            
            JAdapter.JobSheeker_Mst_IMAGE_UPDATE(Convert.ToInt32(Session["jid"].ToString()), "~/profile/" + FileUpload1.FileName);
            //Image2.ImageUrl = JDT.Rows[0]["Photo"].ToString();
            Response.Redirect("Jlogin.aspx");
        }
    }
}
