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
    public partial class WebForm2 : System.Web.UI.Page
    {
        Class1 obj=new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(Login_Id) from Login_tab";
            string regid = obj.fn_ExScalar(sel);
            int reg_id = 0;
            if (regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reg_id = newregid + 1;

            }
            string ins = "insert into Admin_Reg values(" + reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "')";
                int i = obj.fn_NonQuery(ins);
                if (i != 0)
                {
                    string inslog = "insert into Login_tab values(" + reg_id + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','admin','active')";
                    int j = obj.fn_NonQuery(inslog);
                    Label8.Text = "inserted";
                }
            
        }
    }
}