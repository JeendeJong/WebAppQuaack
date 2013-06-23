using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppQuaack
{
    public partial class WebFormMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tb_emailaddress.Text = "jeen.de.jong@gmail.com";
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            if (tb_subject.Text == "")
            {
                lbl_error.Text = "Fill subject";
            }
            else
            {
                if (tb_message.Text == "")
                {
                    lbl_error.Text = "Fill message";
                }
                else
                {
                    if (tb_emailaddress.Text == "")
                    {
                        lbl_error.Text = "Fill email address";
                    }
                    else
                    {
                        lbl_error.Text = "";

                        try
                        {
                            MailMessage mail = new MailMessage("nohiteam1@gmail.com", tb_emailaddress.Text, tb_subject.Text, tb_message.Text);
                            mail.IsBodyHtml = true;
                            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                            smtp.EnableSsl = true;
                            smtp.Send(mail);
                        }

                        catch (Exception exc)
                        {
                            lbl_error.Text += " " + exc.Message;
                        }

                        finally
                        {
                            if (lbl_error.Text == "")
                            {
                                tb_subject.Text = "";
                                tb_message.Text = "";
                                tb_emailaddress.Text = "jeen.de.jong@gmail.com";
                            }
                        }
                    }
                }
            }
        }

        protected void tb_subject_TextChanged(object sender, EventArgs e)
        {
            if (tb_subject.Text == "")
            {
                lbl_error.Text = "Fill subject";
            }
            else
            {
                lbl_error.Text = "";
            }
        }

        protected void tb_message_TextChanged(object sender, EventArgs e)
        {
            if (tb_message.Text == "" )
            {
                lbl_error.Text = "Fill message";
            }
            else
            {
                lbl_error.Text = "";
            }
        }

        protected void tb_emailaddress_TextChanged(object sender, EventArgs e)
        {
            if (tb_emailaddress.Text != "")
            {
                lbl_error.Text = "";
            }
        }
    }
}
