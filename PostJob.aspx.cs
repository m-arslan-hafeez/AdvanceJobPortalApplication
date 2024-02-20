using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PostJob : System.Web.UI.Page
{
    DS_POSTJOB.POSTJOBMST_SELECTDataTable PDT = new DS_POSTJOB.POSTJOBMST_SELECTDataTable();
    DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter PAdapte = new DS_POSTJOBTableAdapters.POSTJOBMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnpostjob_Click(object sender, EventArgs e)
    {
        PAdapte.Insert(txttile.Text, drpdegree.SelectedItem.Text, drpskill.SelectedItem.Text, txtsalary.Text, Convert.ToInt32(drpexp.SelectedItem.Text), Convert.ToInt32(txtvacancy.Text), txtdetail.Text, Session["Cname"].ToString());

        txtdetail.Text = "";
        txtsalary.Text = "";
        txttile.Text = "";
        txtvacancy.Text = "";
        drpexp.SelectedIndex = 0;
        drpdegree.SelectedIndex = 0;
        drpskill.SelectedIndex = 0;
        lbl.Text = "Job Posted..";


    }
}