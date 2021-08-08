using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// namespaces for sql database conncetion
using System.Data.SqlClient;
using System.Data;


namespace WebApplication1
{
    public partial class RegUser : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        DataSet ds1 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Registerbtn_Click(object sender, EventArgs e)        // To register User to Library 
        {
            obj.savedata("insert into tblUserMaster(UserName,Password,EmailId) values('" + TxtUserName.Text + "','" + TxtUserPassword.Text + "','" + TxtEmailId.Text + "')");
            Response.Write("<script language='javascript'>alert('New User Registered Successfully......');</script>");

            clear();
        }
        protected void Clearbtn_Click(object sender, EventArgs e)     /*Clear Button*/
        {
            clear();
        }

        public void clear()                              /*Clear All the data from the screen*/
        {
            TxtUserName.Text = "";
            TxtUserPassword.Text = "";
            TxtEmailId.Text = "";
        }

        
    }
}