using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class IssueBook : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        DataSet ds1 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)       /*Clear Button*/
        {
            clear();
        }



        public void clear()                                  /*Clear All the data from the screen*/
        {
           
            txtEmailId.Text = "";
            DDLBookName.SelectedIndex = 0;
            DDLUserName.SelectedIndex = 0;
            txtIssueDateTime.Text = "";
        }

        protected void btnIssueBook_Click(object sender, EventArgs e)       // Issue Book Data 
        { 
            obj.savedata("insert into tblBookIssueMaster(BookName,UserName,Emaild,BookIssueTime) " +                                 /* IssueBook Data and save it*/
                "values('" + DDLBookName.SelectedItem.ToString() + "','" + DDLUserName.SelectedItem.ToString() + "','" + txtEmailId.Text + "','" + txtIssueDateTime.Text + "')");
            Response.Write("<script language='javascript'>alert('Book Issued to User Successfully......');</script>");                /*Show Message on top*/

            clear();
        }
    }
}