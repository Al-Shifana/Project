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
    public partial class WebForm1 : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string s = "select *from Category_tab ";
                DataSet ds = obj.Fn_ExAdapter(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }

            
        }
        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = id;
            Response.Redirect("ViewAllProduct.aspx");
        }

    }
}