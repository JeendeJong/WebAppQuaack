using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppQuaack
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                int profileID = Convert.ToInt32(Session["profileID"]);

                var ctx = new QuaackEntities();

                var result = (from p in ctx.profile
                              where p.profileid == profileID
                              select p).ToList();

                gv_profile.DataSource = result;
                gv_profile.DataBind();
            }
            else
            {
                Response.Redirect("/Account/Login.aspx");                
            }
        }
    }
}
