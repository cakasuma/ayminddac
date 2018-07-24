using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ayminddac
{
    public partial class Profile : System.Web.UI.Page
    {
        public SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                string email = Session["Email"].ToString();
                string uid = helper.getUserId(email);
                String query = $"SELECT u.*, c.* From Customers c inner join Users u ON c.CID=u.UID WHERE CID={uid}";
                SqlConnection conn = helper.getConnection();
                conn.Open();
                SqlCommand cm = new SqlCommand(query, conn);
                sdr = cm.ExecuteReader();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
            
        }
    }
}