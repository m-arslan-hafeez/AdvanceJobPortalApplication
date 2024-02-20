using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewCompany : System.Web.UI.Page
{
    DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
    DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        CoAdapter.Insert(txtname.Text, txtadd.Text, txtcity.Text, txtpin.Text, txtcontactperson.Text, txtmobile.Text, txtdetail.Text, txttype.Text, txtuname.Text, txtupass.Text);
        lbldone.Text = "Registration Done";

       txtname.Text="";
        txtadd.Text="";
        txtcity.Text=""; 
        txtpin.Text=""; 
        txtcontactperson.Text="";
        txtmobile.Text="";
        txtdetail.Text="";
        txttype.Text="";
        txtuname.Text="";
    }
}