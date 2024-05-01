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
    public partial class ViewProduct : System.Web.UI.Page
    {
         Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select *from Product_tab where Category_Id=" + Session["uid"] + "";
                DataSet ds = obj.Fn_ExAdapter(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
           
        }

       

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id1 = Convert.ToInt32(e.CommandArgument);
            Session["uid1"] = id1;
            Response.Redirect("ViewSingleProduct.aspx");
        }
       

        
    }
}