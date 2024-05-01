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
    public partial class AddCategory : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string str = "insert into Category_tab values('" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "')";
            int i = obj.fn_NonQuery(str);
            if (i == 1)
            {
                Label6.Text = "inserted";
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHomePage.aspx");
        }

    }
}