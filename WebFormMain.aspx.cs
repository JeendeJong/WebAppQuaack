using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppQuaack
{
    public partial class WebFormMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tb_username_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tb_pwd_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebFormLoggedIn.aspx");
        }
    }
}