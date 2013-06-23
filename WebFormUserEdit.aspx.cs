using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppQuaack
{
    public partial class WebFormUserEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebFormUsers.aspx");
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebFormUsers.aspx");
        }
    }
}