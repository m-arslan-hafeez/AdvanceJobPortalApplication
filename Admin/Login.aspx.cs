using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "admin" && txtpass.Text == "12345")
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            lbl.Text = "Invalid Detail";
        
        }
    }
}