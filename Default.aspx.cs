using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppQuaack
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                QuaackEntities ctx = new QuaackEntities();
                var queryResult =
                    from r in ctx.profile
                    where r.username == User.Identity.Name
                    select r;
                foreach (var item in queryResult)
                {
                    int profileID = item.profileid;
                    Session["profileID"] = profileID;
                }
            }
            else
            {
                Response.Redirect("/Account/Login.aspx");
            }
        }
    }
}
