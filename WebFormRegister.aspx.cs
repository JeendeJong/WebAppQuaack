using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppQuaack
{
    public partial class WebFormRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            lbl_error.Text = "";

/*            string DataBaseString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Settings\Ron\Mijn documenten\Visual Studio 2008\WebSites\ToolRent_1D 4\App_Data\ToolRent.mdb;Persist Security Info=False";
            string SQL_Insert = "INSERT INTO Gereedschappen (Gereedschappen, Verhuurbedrag) VALUES (" +
                              "'" + tb_gereedschap.Text + "', " +
                              "'" + tb_verhuurbedrag.Text + "')";

             OleDbConnection DataBaseConnection = new OleDbConnection(DataBaseString);
*/
            try
            {
//                DataBaseConnection.Open();
//                OleDbCommand command = new OleDbCommand(SQL_Insert, DataBaseConnection);
//                command.ExecuteNonQuery();
            }

            catch (Exception exc)
            {
                lbl_error.Text += " " + exc.Message;
            }

            finally
            {
  //              DataBaseConnection.Close();
            }

            Response.Redirect("~/WebFormMain.aspx");
        }
    }
}