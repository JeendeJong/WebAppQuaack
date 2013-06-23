using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppQuaack
{
    public partial class CheckMe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string value = Request.QueryString["id"];

            if (value != null)
            {
                int myval = int.Parse(value);

                var ctx = new QuaackEntities();

                var q = (from i in ctx.profile where i.profileid == myval select i).FirstOrDefault();

                if (q != null)
                {
                    //                    if (q.verficationpendingdatetime.Value > (int)(DateTime.Now.Subtract)
                    {
                        q.verificationpending = false;
                        ctx.SaveChanges();

                        lbl_message.Text = "Uw registratie is gelukt";
                    }
                }
                else
                {
                    lbl_message.Text = "Uw registratie is niet gelukt";
                }
            }



        }
    }
}