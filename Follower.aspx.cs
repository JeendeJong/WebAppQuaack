using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppQuaack
{
    public partial class Follower : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                int subjectID = Convert.ToInt32(Session["profileID"]);
                var ctx = new QuaackEntities();
                var result = (from f in ctx.follower
                              join p in ctx.profile on f.follower1 equals p.profileid
                              where f.subject == subjectID
                              select new { p.username }).ToList();

                gv_follower.DataSource = result;
                gv_follower.DataBind();
            }
            else
            {
                Response.Redirect("/Account/Login.aspx");
            }
        }
    }
}
