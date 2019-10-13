using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendEmailButton_Click(object sender, EventArgs e)
    {
        lbl_status.Text = SendMail("Mhlathuzeindustrial@gmail.com", DropDownListSubject.SelectedItem.Text, BodyTextBox.Text);
        lbl_status.ForeColor = System.Drawing.Color.Blue;
    }
    private string SendMail(string toAddress, string subject, string body )
    {

        if (IsValid(GmailIDText.Text) == true)
        {
            string senderId = GmailIDText.Text;
            string senderPwd = GmailPassText.Text;
            try
            {
                SmtpClient smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new System.Net.NetworkCredential(senderId, senderPwd),
                    Timeout = 30000,
                };
                MailMessage msg = new MailMessage(senderId, toAddress, subject, body);
                msg.IsBodyHtml = true;
                smtp.Send(msg);

            }
            catch (Exception ex)
            {
                return "Email address entered does not exist, email was not sent...";
            }
            return "Email sent successfully...";

        }
        else
        {
            return "Invalid email address...";
        }
        
     
    }
    public bool IsValid(string emailaddress)
    {
        try
        {
            MailAddress m = new MailAddress(emailaddress);

            return true;
        }
        catch (FormatException)
        {
            return false;
        }
    }
}