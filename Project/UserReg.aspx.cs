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
    public partial class UserReg : System.Web.UI.Page
    {
        Class1 obj = new Class1();
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
            string ins = "insert into User_Reg values(" + reg_id + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "'," + TextBox4.Text + ",'" + TextBox5.Text + "','" +DropDownList1.SelectedItem+ "','" +DropDownList2.SelectedItem+ "'," + TextBox6.Text + ",'active')";
            int i = obj.fn_NonQuery(ins);
            if (i != 0)
            {
                string inslog = "insert into Login_tab values(" + reg_id + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','user','active')";
                int j = obj.fn_NonQuery(inslog);
                Label12.Text = "inserted";
            }
        }
    }
}