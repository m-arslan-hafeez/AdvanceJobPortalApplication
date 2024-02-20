using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Company : System.Web.UI.Page
{
    DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
    DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

        CoDT = CoAdapter.SELECTCOMMP();
        GridView1.DataSource = CoDT;
        GridView1.DataBind();
    }
}