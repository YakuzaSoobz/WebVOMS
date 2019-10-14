using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   
       
            /*String temp = "";
            try
            {
                temp = Session["Subject"].ToString();
            }
        catch(Exception)
            {

            }
            if (temp.Equals("Request Quote"))
            {
                DropDownListSubject.SelectedIndex = 0;
            }
            else if (temp.Equals("Query"))
            {
                DropDownListSubject.SelectedIndex = 1;
            }
            else if (temp.Equals("Feedback"))
            {
                DropDownListSubject.SelectedIndex = 2;
            }
            else
            {
                DropDownListSubject.SelectedIndex = 0;
            }
        try
            {
            BodyTextBox.Text = Session["Message"].ToString();
            GmailIDText.Text = Session["Email"].ToString();
            GmailPassText.Text = Session["Pass"].ToString();
            }
        catch (Exception)
        {

        }
        string script = "alert(\"Please make sure you are registered first before contacting us!)\");";
        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        */}
    
    protected void SendEmailButton_Click(object sender, EventArgs e)
    {
        /*int count = 0;
        try 
        {
            SqlConnection conn = new SqlConnection("Server=146.230.177.46\\ist3;Database=group16;User ID=group16;Password=78fgg");
            conn.Open();
            string checkuser = "Select count(*) from Customer where Cust_Email='" + GmailIDText.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();

            if (temp >= 1)
            {

            }
            else
            {
                count++;
            }

        }
        catch(Exception ex)
        {

        }


        if (count != 0)
        {
            */
            string bodymsg = BodyTextBox.Text + "            [" + DropDownListSubject.Text + " was sent by " + GmailIDText.Text + "]";
            lbl_status.Text = SendMail("Mhlathuzeindustrial@gmail.com", DropDownListSubject.Text, bodymsg);
            lbl_status.ForeColor = System.Drawing.Color.Blue;

           /* Session["Subject"] = "";
            Session["Message"] = "";
            Session["Email"] = "";
            Session["Pass"] = "";
            
           // Response.Redirect("~/Default.aspx");
        }
        else
        {
            Session["Subject"] = DropDownListSubject.SelectedValue.ToString();
            Session["Message"] = BodyTextBox.Text;
            Session["Email"] = GmailIDText.Text;
            Session["Pass"] = GmailPassText.Text;
            Session["Reason"] = "Yes";
          //  string script = "alert(\"Please register an account first\");";
          //  ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            Session["Contact"] = "T";
            Response.Redirect("~/Registration.aspx");
            
            string script = "alert(\"Please register an account first\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }*/
        }
    private string SendMail(string toAddress, string subject, string body )
    {

         if (IsValid("Mhlathuzeindustrial@gmail.com") == true && IsValid(GmailIDText.Text) == true)
        {
            //string senderId = GmailIDText.Text;
                string senderId = "Mhlathuzeindustrial@gmail.com";
            //string senderPwd = GmailPassText.Text;
                string senderPwd = "Ashika123";
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
            return "Invalid user email address...";
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
        catch (ArgumentException)
        {
            string script = "alert(\"Cannot send.Please try a valid Gmail\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            return false;
        }
        catch (Exception)
        {
            string script = "alert(\"Oops, an error occured while trying send the email :( Please make sure you are using a valid Gmail!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            return false;
        }
       
    }
}