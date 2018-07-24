using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ayminddac
{
    public partial class Cust_View_Shipping : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] != null && Session["UserRole"].ToString() == "Customer")
            {
                if (Request.QueryString["view"] != null)
                {
                    string shipid = Request.QueryString["view"];
                    String query = $"SELECT s.*, pa.Name as depport, pb.Name as arrport FROM Shippings s INNER JOIN Ports pa ON s.Dep_PID=pa.PID " +
                                $"INNER JOIN Ports pb ON s.Arr_PID=pb.PID WHERE s.ShID={shipid}";
                    SqlConnection conn = helper.getConnection();
                    conn.Open();
                    SqlCommand cm = new SqlCommand(query, conn);
                    sdr = cm.ExecuteReader();
                }
                else
                {
                    Response.Redirect("Cust_Home.aspx");
                }
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}