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
        int cid;
        int cqu;
        int cto;
        string cst;
        int pid;
        int uid;
        int gt = 0;

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
            Panel1.Visible = true;
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
            string mx= "select max(Cart_Id)from Cart_tab";
            string m = obj.fn_ExScalar(mx);
            int max = Convert.ToInt32(m);
            for(int i = 1; i <= max; i++)
            {
                string uids = "select * from Cart_tab where Cart_Id=" + i + " ";
                SqlDataReader dr = obj.ExReader(uids);
                
                while (dr.Read())
                {
                    cid = Convert.ToInt32(dr["Cart_ID"].ToString());
                    cqu = Convert.ToInt32(dr["Quantity"].ToString());
                    cto = Convert.ToInt32(dr["Total_Price"].ToString());
                    cst = dr["Status"].ToString();
                    pid = Convert.ToInt32(dr["Product_Id"].ToString());
                    uid = Convert.ToInt32(dr["User_Id"].ToString());
                }
                gt = gt + cto;

                string ins = "insert into Order_tab values(" + cid + "," + uid + "," + cqu + "," + cto + ",'" + cst + "')";
                int j = obj.fn_NonQuery(ins);



            }
            string bin = "insert into Bill_Tab values(" + DateTime.Now.ToString("yyyy-MM-dd") + "," + uid + "," + gt + ",'unpaid')";
            int k = obj.fn_NonQuery(bin);
            if (k == 1)
            {
                string del = "delete from Cart_Tab where User_Id=" + Session["userid"] + "";
                int l = obj.fn_NonQuery(del);
            }
            Response.Redirect("View_bill.aspx");


        }


    }
}
