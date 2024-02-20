using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    DS_FEED.FEEDBACK_SELECTDataTable FDT = new DS_FEED.FEEDBACK_SELECTDataTable();
    DS_FEEDTableAdapters.FEEDBACK_SELECTTableAdapter FAdapter = new DS_FEEDTableAdapters.FEEDBACK_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        FAdapter.Insert(txtname.Text, txtemail.Text, txtmobile.Text, txtfeed.Text);
        txtfeed.Text = "";
        txtemail.Text = "";
        txtmobile.Text = "";
        txtname.Text = "";
        lbl.Text = "Feedback Sent.";
    }
}