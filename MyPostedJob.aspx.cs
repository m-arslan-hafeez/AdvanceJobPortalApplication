using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyPostedJob : System.Web.UI.Page
{
    DS_POSTJOB.POSTJOBMST_SELECTDataTable PDT = new DS_POSTJOB.POSTJOBMST_SELECTDataTable();
    DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter PAdapte = new DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            PDT = PAdapte.select_by_Cname(Session["cname"].ToString());
            drpjobtitle.DataSource = PDT;
            drpjobtitle.DataTextField = "jobtitle";
            drpjobtitle.DataValueField = "pid";
            drpjobtitle.DataBind();

            MultiView1.ActiveViewIndex = -1;
        }

    }
    protected void btnselect_Click(object sender, EventArgs e)
    {

        PDT = PAdapte.Select_By_PID(Convert.ToInt32(drpjobtitle.SelectedValue));

        lbldegree.Text = PDT.Rows[0]["degree"].ToString();
        lbldet.Text = PDT.Rows[0]["detail"].ToString();
        lblexp.Text = PDT.Rows[0]["experience"].ToString();
        lblname.Text = PDT.Rows[0]["jobtitle"].ToString();
        lblsala.Text = PDT.Rows[0]["salary"].ToString();
        lblskill.Text = PDT.Rows[0]["skill"].ToString();
        lblvan.Text = PDT.Rows[0]["vacancy"].ToString();

        ViewState["pid"] = PDT.Rows[0]["pid"].ToString();
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnremove_Click(object sender, EventArgs e)
    {

        PAdapte.Delete(Convert.ToInt32(ViewState["pid"].ToString()));
        MultiView1.ActiveViewIndex = -1;
        lbl.Text = "Job Deleted";
        PDT = PAdapte.select_by_Cname(Session["cname"].ToString());
        drpjobtitle.DataSource = PDT;
        drpjobtitle.DataTextField = "jobtitle";
        drpjobtitle.DataValueField = "pid";
        drpjobtitle.DataBind();
    }
}