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
    public partial class EditProduct : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_bind();
        }
        public void grid_bind()
        {
            string s = "select * from Product_tab";
            DataSet ds = obj.Fn_ExAdapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        
        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            int id = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = id;
            string sel = "select * from Product_tab where Product_Id=" + id + "";
            SqlDataReader dr = obj.ExReader(sel);
            while (dr.Read())
            {
                TextBox1.Text = dr["Product_Name"].ToString();
                Image1.ImageUrl = dr["Product_Image"].ToString();
                TextBox2.Text = dr["Product_Price"].ToString();
                TextBox3.Text = dr["Product_Description"].ToString();
                TextBox4.Text = dr["Product_Stock"].ToString();
                TextBox5.Text = dr["Status"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string update = "update Product_tab set Product_Name='" + TextBox1.Text + "',Product_Image='" + p + "',Product_Price='" + TextBox2.Text + "',Product_Description='" + TextBox3.Text + "',Product_Stock='" + TextBox4.Text + "',Status='" + DropDownList1.SelectedItem.Text + "'where Product_Id=" + Session["uid"] + "";
            int i = obj.fn_NonQuery(update);
            if (i == 1)
            {
                Label7.Text = "Updated";

            }
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int id1 = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = id1;
            string str = "select Status from Product_tab where Product_Id=" + id1 + "";
            string s = obj.fn_ExScalar(str);
            if (s == "Available")
            {
                string upd = "update Product_tab set Status='Unavailable' where Product_Id=" + id1 + "";
                int u = obj.fn_NonQuery(upd);
                grid_bind();
            }
            else
            {
                string up = "update Product_tab set Status='Unavailable' where Product_Id=" + id1 + "";
                int d = obj.fn_NonQuery(up);
                grid_bind();
            }
        }
    }
}