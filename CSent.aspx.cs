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

public partial class CSent : System.Web.UI.Page
{
    DS_CMSG.CMessage_Mst_selectDataTable CMDT = new DS_CMSG.CMessage_Mst_selectDataTable();
    DS_CMSGTableAdapters.CMessage_Mst_selectTableAdapter CMAdapter = new DS_CMSGTableAdapters.CMessage_Mst_selectTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CMDT = CMAdapter.SelectBY_CNEMR(Session["cname"].ToString());
            GridView1.DataSource = CMDT;
            GridView1.DataBind();
        
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      
    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
  int del = CMAdapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));
        CMDT = CMAdapter.SelectBY_CNEMR(Session["cname"].ToString());
        GridView1.DataSource = CMDT;
        GridView1.DataBind();
    }
}
