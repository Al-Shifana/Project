using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project
{
    public partial class Login : System.Web.UI.Page
    {
        Class1 obj = new Class1();
         private Style primaryStyle = new Style();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(Login_Id) from Login_tab where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
            string cid = obj.fn_ExScalar(str);
            int cid1 = Convert.ToInt32(cid);
            

            if (cid1 == 1)
            {
                string str1 = "select Login_Id from Login_tab where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
                string regid = obj.fn_ExScalar(str1);
                Session["userid"] = regid;
                string str2 = "select LogType from Login_tab where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
                string logtype = obj.fn_ExScalar(str2);
                if (logtype == "admin")
                {
                    
                   Response.Redirect("Admin_Homepage.aspx");

                }
                else if(logtype == "user")
                {
                    Response.Redirect("WebForm1.aspx");

                }
            }
        }
    }
}