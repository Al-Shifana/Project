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
    public partial class View_Bill : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sel= "select t1.*,t2.* from Product_tab t1 join Order_tab t2 on t1.Product_Id=t2.Product_Id where Order_Status='not paid' and User_Id=" + Session["userid"] + "";
            DataSet ds = obj.Fn_ExAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            string st = "select * from Bill_tab where User_Id=" + Session["userid"] + " and Bill_Status='unpaid'";
            SqlDataReader dr = obj.ExReader(st);
            while (dr.Read())
            {
                Label6.Text = dr["Bill_Id"].ToString();
                Label2.Text = dr["Bill_Date"].ToString();
                Label7.Text = dr["Grand_Total"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //
            string up = "select count(Order_Id)from Order_tab where User_Id=" + Session["userid"] + " and Order_Status='not paid'";
            string c = obj.fn_ExScalar(up);
            int count = Convert.ToInt32(c);
            if (count != 0)
            {
                int pro_id = 0;
                for (int i = 1; i <= count; i++)
                {
                    int pro_qty = 0, cart_qty = 0, qty = 0;
                    string stup = "select Order_tab.Product_Id,Product_tab.Product_Id,Order_tab.Quantity,Product_tab.Product_Stock from Product_tab join Order_tab on Product_tab.Product_Id=Order_tab.Product_Id where User_Id=" + Session["userid"] + " and Order_status='notpaid'";
                    SqlDataReader dr = obj.ExReader(stup);
                    while (dr.Read())
                    {
                        pro_id = Convert.ToInt32(dr["Product_Id"]);
                        pro_qty = Convert.ToInt32(dr["Product_Stock"]);
                        cart_qty = Convert.ToInt32(dr["Quantity"]);
                        break;
                    }
                    qty = pro_qty - cart_qty;
                    string stock = "update Product_tab set Product_Stock=" + qty + " where Product_Id=" + pro_id + "";
                    int stockup = obj.fn_NonQuery(stock);
                    if (qty == 0)
                    {
                        string no = "update Product_tab set Status='unavailable' where Product_Id=" + pro_id + "";
                        obj.fn_NonQuery(no);
                    }
                }
            }

            string st = "select Grand_Total from Bill_tab where Bill_Id=" +Label6.Text+ "";
            string t = obj.fn_ExScalar(st);
            int gt = Convert.ToInt32(t);

            Service_Balancecheck.ServiceClient objct = new Service_Balancecheck.ServiceClient();
            string bal = objct.balancecheck(TextBox1.Text);
            int ba = Convert.ToInt32(bal);

            if (ba > gt)
            {
                string cup = "update Order_tab set Status='unavailable',Order_Status='paid' where  User_id=" + Session["userid"] + "";
                int i = obj.fn_NonQuery(cup);

                string bup = "update Bill_tab set Bill_Status='paid'  where  User_id=" + Session["userid"] + "";
                int j = obj.fn_NonQuery(bup);

                string uac="update Account_tab set Balance_Amount="+(ba-gt)+ "where User_id=" + Session["userid"] + "";
                int k = obj.fn_NonQuery(uac);

                Label5.Text = "paid";
            }
        }
    }
}