using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class View_SingleProduct : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select * from Product_tab where Product_Id=" + Session["uid1"] + "";
                SqlDataReader dr = obj.ExReader(sel);
                while (dr.Read())
                {

                    Image1.ImageUrl = dr["Product_Image"].ToString();
                    Label1.Text = dr["Product_Name"].ToString();
                    Label2.Text = dr["Product_Price"].ToString();
                    Label3.Text = dr["Product_Description"].ToString();
                    Label4.Text = dr["Product_Stock"].ToString();

                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select max(Cart_Id) from Cart_tab";
            string cartid = obj.fn_ExScalar(s);
            int cart_id = 0;
            if (cartid == "")
            {
                cart_id = 1;
            }
            else
            {
                int cart = Convert.ToInt32(cartid);
                cart_id = cart + 1;
            }
            string h = "select Product_Price,Status from Product_tab where Product_Id='" + Session["uid1"] + "'";
            string u = obj.fn_ExScalar(h);
            int q = Convert.ToInt32(TextBox1.Text);
            int p = Convert.ToInt32(u);
            int t_price = q * p;
            string d = "insert into Cart_tab values(" + cart_id + "," + Session["uid1"] + "," + Session["userid"] + "," + TextBox1.Text + "," + t_price + ",'available')";
            int i = obj.fn_NonQuery(d);
            if (i == 1)
            {
                Label8.Visible = true;
                Label8.Text = "Added to Cart";
            }
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Cart.aspx");
        }
    }
}