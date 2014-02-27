using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using Buffac.Helpers;

namespace Buffac
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendMessage(object o, EventArgs e)
        {
            var sb = new StringBuilder();
            sb.Append("First Name: ");
            sb.Append(name.Text);
            sb.Append("<br /><br />Email Adress: ");
            sb.Append(email.Text);
            sb.Append("<br /><br />Message: ");
            sb.Append(message.Text);
            try
            {
                HelperUtils.SendEmail(ConfigurationManager.AppSettings["MessageRecipients"], "onlinequotes@buffac.com", "", "briana@ravenartmedia.com", "Online Quote Request", sb.ToString(), false);




                name.Text = "";
                email.Text = "";
                message.Text = "";
            }
            catch (Exception ex)
            {
                //lblMessage.Text = "We're sorry but your online request cannot be processed right now.  Try again or call during business hours.  Thank you!";
            }
        }
    }
}