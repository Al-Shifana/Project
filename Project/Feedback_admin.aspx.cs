using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace Project
{
    public partial class Feedback_admin : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            if (!IsPostBack)
            {
                grid_bind();
            }
        }
        public void grid_bind()
        {
            string sel = "select * from Feedback_tab where Status='admin review pending'";
            DataSet ds = obj.Fn_ExAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Edit_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string s = "select * from Feedback_tab where Feedback_Id =" + id + "";
            string sel = obj.fn_ExScalar(s);
            Session["fid"] = id;
            string st = "select User_Reg.User_Name,User_Reg.Email,Feedback_tab.Reply from Feedback_tab join User_Reg on Feedback_tab.User_Id=User_Reg.User_Id ";
            SqlDataReader dr = obj.ExReader(st);
            while (dr.Read())
            {
                Label5.Text = dr["User_Name"].ToString();
                Label7.Text = dr["Email"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string up = "update Feedback_tab set Reply='" + TextBox1.Text + "' where Feedback_Id=" + Session["fid"] + "";
            int i = obj.fn_NonQuery(up);
            if (i != 0)
            {
                string upd = "update Feedback_tab set Status='Recieved by admin' where Feedback_Id=" + Session["fid"] + "";
                int upt = obj.fn_NonQuery(upd);
            }
            grid_bind();
            SendEmail2("Adam Ali", "adaliam646@gmail.com" , "wpnm gnae oknu lfvd" ,Label5.Text,Label7.Text,Label6.Text,TextBox1.Text);
        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}