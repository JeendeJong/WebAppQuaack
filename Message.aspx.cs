using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppQuaack
{
    public partial class Message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                int sendID = Convert.ToInt32(Session["profileID"]);

                var ctx = new QuaackEntities();

                var result = (from l in ctx.message
                              where l.sender == sendID
                              select new { l.message1, l.messdatetime }).ToList();

                gv_message.DataSource = result;
                gv_message.DataBind();
            }
            else
            {
                Response.Redirect("/Account/Login.aspx");
            }
        }
    }
}
