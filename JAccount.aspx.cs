using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class JAccount : System.Web.UI.Page
{
    DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
    DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        if (Page.IsPostBack == false)
        {

            JDT = JAdapter.SelectBY_UID(Convert.ToInt32(Session["JID"].ToString()));
            txtfname.Text = JDT.Rows[0]["Fname"].ToString();
            txtlname.Text = JDT.Rows[0]["lname"].ToString();
            txtcity.Text = JDT.Rows[0]["city"].ToString();
            txtadd.Text = JDT.Rows[0]["address"].ToString();
            txtpin.Text = JDT.Rows[0]["pincode"].ToString();
            txtmob.Text = JDT.Rows[0]["mobileno"].ToString();
            txtdetail.Text = JDT.Rows[0]["detail"].ToString();
            txtpassyear.Text = JDT.Rows[0]["paasyear"].ToString();

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
     int d = JAdapter.Update(Convert.ToInt32(Session["JID"].ToString()), txtfname.Text, txtlname.Text, txtcity.Text, txtadd.Text, txtpin.Text, txtmob.Text, drpdegree.SelectedItem.Text, drpskill.SelectedItem.Text, txtdetail.Text, txtpassyear.Text, drpexp.SelectedItem.Text);
     lbl.Text = "Detail Updated !!";
    }
}
