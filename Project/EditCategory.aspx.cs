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
    public partial class EditCategory : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
              grid_bind();
            
        }
        public void grid_bind()
        {
            string s = "select * from Category_tab";
            DataSet ds = obj.Fn_ExAdapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }



        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            int id = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = id;
            string sel = "select * from Category_tab where Category_Id=" + id + "";
            SqlDataReader dr = obj.ExReader(sel);
            while (dr.Read())
            {
                TextBox1.Text = dr["Category_Name"].ToString();
                Image1.ImageUrl = dr["Category_Image"].ToString();
                TextBox2.Text = dr["Category_Description"].ToString();
                TextBox3.Text = dr["Category_Status"].ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string update = "update Category_tab set Category_Name='" + TextBox1.Text + "',Category_Image='" + p + "',Category_Description='" + TextBox2.Text + "',Category_Status='" + DropDownList1.SelectedItem.Text + "'where Category_Id=" + Session["uid"] + "";
            int i = obj.fn_NonQuery(update);
            if (i == 1)
            {
                Label6.Text = "Updated";
                
            }
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int id1 = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = id1;
            string str = "select Category_Status from Category_tab where Category_Id=" + id1 + "";
            string s = obj.fn_ExScalar(str);
            if (s == "Available")
            {
                string upd= "update Category_tab set Category_Status='Unavailable' where Category_Id=" + id1 + "";
                int u = obj.fn_NonQuery(upd);
                grid_bind();
            }
            else
            {
                string up = "update Category_tab set Category_Status='Unavailable' where Category_Id=" + id1 + "";
                int d = obj.fn_NonQuery(up);
                grid_bind();
            }
        }
    }
}