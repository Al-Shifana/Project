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
    public partial class Account_Details : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string d = "insert into Account_tab values("+TextBox1.Text+",'" + TextBox2.Text + "'," + TextBox3.Text + "," + Session["userid"] + ")";
            int i = obj.fn_NonQuery(d);
            if (i == 1)
            {
                Label4.Visible = true;
                Label4.Text = "Account details added";
            }
        }
    }
}