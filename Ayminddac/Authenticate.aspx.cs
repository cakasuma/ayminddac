using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ayminddac
{
    public partial class Authenticate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["RefUrl"] = Request.UrlReferrer.ToString();
            }
            if (Request.QueryString["login"] != null)
            {
                String email = Request.Form["email"];
                String password = Request.Form["password"];
                bool loginResult = new helper().Login(email, password);
                if (loginResult == true)
                {

                    String userRole = Session["UserRole"].ToString();
                    if (userRole.Equals("Customer"))
                    {
                        Response.Redirect("Cust_Home.aspx");
                    }
                    if (userRole.Equals("Staff"))
                    {
                        Response.Redirect("Staff_Home.aspx");

                    }
                }
                else
                {
                    object refUrl = ViewState["RefUrl"];
                    if (refUrl != null)
                        Response.Redirect((string)refUrl);
                    Response.Write("<script>alert('Login failed, incorrect username or password');</script");
                    
                }
            }
            if (Request.QueryString["register"] != null)
            {

                String email = Request.Form["email"];
                String password = Request.Form["password"];
                String userRole = "Customer";
                String name = Request.Form["name"];
                String companyname = Request.Form["comname"];
                String contact = Request.Form["contact"];
                String personincharge = Request.Form["pic"];
                bool isEmailExist = new helper().isEmailExists(email);

                if (!isEmailExist)
                {

                    String query = "INSERT INTO Users (Email, Password, UserRole) OUTPUT INSERTED.UID VALUES ('" + email + "','" + password + "','" + userRole + "')";
                    int custid = helper.registerQuery(query);
                    String regquery = $"INSERT INTO Customers(CID, Name, Company_Name, Contact, Per_I_C, Email) VALUES ({custid},'{name}','{companyname}','{contact}','{personincharge}','{email}')";
                    helper.executeQuery(regquery);
                    object refUrl = ViewState["RefUrl"];
                    if (refUrl != null)
                        Response.Redirect((string)refUrl);
                    Response.Write("<script>alert('register success');</script");
                }
                else
                {
                    object refUrl = ViewState["RefUrl"];
                    if (refUrl != null)
                        Response.Redirect((string)refUrl);
                    Response.Write("<script>alert('Login failed, incorrect username or password');</script");
                }
            }
        }
    }
}