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
    public partial class View_Cart : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
            }
           
        }
        public void grid_bind()
        {
            string s = "select * from Cart_tab";
            DataSet ds = obj.Fn_ExAdapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int cid = Convert.ToInt32(e.CommandArgument);
            Session["cartid"] = cid;
            string s = "delete from Cart_tab where Cart_Id=" + Session["cartid"] + "";
            int i = obj.fn_NonQuery(s);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Your item is removed from the Cart";
            }
            grid_bind();
        }

        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {
            int id1 = Convert.ToInt32(e.CommandArgument);
            Session["uid1"] = id1;
            Label2.Visible = true;
            TextBox1.Visible = true;
            string s = "select * from Cart_tab";
            SqlDataReader dr = obj.ExReader(s);
            while (dr.Read())
            {
                TextBox1.Text = dr["Quantity"].ToString();
                
            }
            
          
            
        }
        //view cart button
        protected void Button2_Click(object sender, EventArgs e)
        {
            string sel = "select Product_Price from Product_tab where Product_Id=" + Session["uid1"] + "";
            string st = obj.fn_ExScalar(sel);
            int q = Convert.ToInt32(TextBox1.Text);
            int p = Convert.ToInt32(st);
            int t_price = q * p;

            string upd = "update Cart_tab set Quantity=" + TextBox1.Text + ",Total_Price  = " + t_price + "where Product_Id =" + Session["uid1"] + "";
            int u = obj.fn_NonQuery(upd);
            grid_bind();
        }

        //confirm button
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        
    }
}
