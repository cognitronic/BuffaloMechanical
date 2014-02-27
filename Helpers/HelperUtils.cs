using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography.X509Certificates;
using System.Configuration;
using System.Net.Security;
using System.Net;

namespace Buffac.Helpers
{
    public static class HelperUtils
    {
        public static bool SendEmail(string to, string from, string cc, string bcc, string subject, string body, bool enablessl)
        {
            System.Net.Mail.SmtpClient cl = new System.Net.Mail.SmtpClient();
            cl.Host = ConfigurationManager.AppSettings["SmtpHost"];
            cl.UseDefaultCredentials = false;
            cl.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["SmtpUsername"], ConfigurationManager.AppSettings["SmtpPassword"]);
            cl.EnableSsl = enablessl;
            cl.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            try
            {

                System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage(from, to, subject, body);

                // CC and BCC optional
                if (!string.IsNullOrEmpty(cc))
                {
                    string[] ccArray = cc.Split(',');
                    foreach (string sCC in ccArray)
                    {
                        msg.CC.Add(sCC);
                    }
                }

                // You can specify Address directly as string
                if (!string.IsNullOrEmpty(bcc))
                {
                    string[] bccArray = bcc.Split(',');
                    foreach (string sBCC in bccArray)
                    {
                        msg.Bcc.Add(sBCC);
                    }
                }
                msg.IsBodyHtml = true;
                ServicePointManager.ServerCertificateValidationCallback = delegate(object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };

                cl.Send(msg);
            }

            catch (Exception ex)
            {
                throw ex;
            }
            return true;
        }

        public static string EmailHTMLStart()
        {
            string s = @"<html><head>
<style type='text/css'>
            html {-webkit-text-size-adjust:none;}
            body {background-color: #1ea2db; padding:0; margin:0; width:100%; margin:0 auto; font-size: 12px; font-family: arial;}
            *[class].tdwrap{display: inline-block !important;}
            *[class].vspacer{ margin-left: 50px; }
            *[class].responsive-50per{ width: 50% !important; }
            @media all and (max-width: 590px){
              *[class].responsive{width:320px !important;}
              *[class].responsive-spacer table{width: 20px !important; }
              *[class].vspacer{ margin-top: 10px !important; margin-bottom: 15px !important; margin-left: 0 !important; }
              *[class].res-font16{font-size:16px !important;}
              *[class].res-font12{font-size:12px !important;}
              *[class].res-font18{font-size:18px !important;}
              *[class].res-font18 span{font-size: 18px !important;}
              *[class].responsive-50per{ width: 100% !important;}
              *[class].responsive-spacer70{ width: 70px !important; }
              *[class].hideIMG{ height: 0px !important; width: 0px !important; }
              *[class].res-width25{ width: 25px !important; };
              *[class].res-padding{ width: 0 !important; }
              *[class].res-padding table{ width: 0 !important; }
              *[class].cellpadding-none{ width: 0px !important; }
              *[class].cellpadding-none table{ border: collapse !important; }
              *[class].cellpadding-none table td{ padding: 0 !important; }
              *[class].display-none{ display: none !important; }
            }
            @media only screen and (max-device-width: 480px) {
              p[class=anet-digest-activity],
              span[class=anet-digest-count],
              td[class=anet-digest-right-rail] {
                display:none;
              }
            }
            
          </style>
        </head>
        <body style='background-image: none; background-color: #1ea2db; color: black; '><br />
<table width='750px' border='0' align='center' cellspacing='0' cellpadding='0' bgcolor='#ffffff' style=' padding: 20px 50px;'>
  <tbody><tr><td style='color: #1ea2db; margin: 20px; font-family: arial; font-size: 1.5em;'>
";
            return s;
        }

        public static string EmailHTMLEnd()
        {
            string s = @"
                </td>
              </tr>
                <tr>
			                <td>
				                <table style=' width: 300px;'>
					                <tr>
						                <td>
<a href='" + ConfigurationManager.AppSettings["BaseUrl"] + @"'><img src='" + ConfigurationManager.AppSettings["NotificationLogo"] + @"' height='183' width='179' alt='HR River Logo' border='0'></a>
</td>
            </tr>
				</table>
			</td>
		</tbody>
		</table>
		<table width='750px' border='0' align='center' cellspacing='0' cellpadding='0' bgcolor='#1ea2db' style=' padding: 20px 20px; color: #ffffff; font-family: arial; font-size: 1.5em;'>
  <tbody><tr><td style=''>
			&nbsp;&nbsp;1101 Doker Drive
			</td>
			<td>
				Suite D
						</td>
						<td>
						Modesto, CA 95351
						</td>
						<td>
						209.229.2220
						</td>
					</tr>
				</table>
			</td>
		</tbody>
		</table>
	
 </BODY>
</HTML>";
            return s;
        }

    }
}