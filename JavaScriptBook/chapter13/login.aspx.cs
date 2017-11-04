using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JavaScriptBook.chapter13
{
    public partial class login : System.Web.UI.Page
    {
        string username = "007";
        string password = "secret";
        protected void Page_Load(object sender, EventArgs e)
        {
            //string user = Request.QueryString["username"];
            //string pass = Request.QueryString["password"];
            //if (user == username && pass == password)
            //{
            //    Response.Write("pass");
            //    Response.End();
            //    return;
            //}
            //else
            //{
            //    Response.Write("fail");
            //    Response.End();
            //    return;
            //}
        }
    }
}