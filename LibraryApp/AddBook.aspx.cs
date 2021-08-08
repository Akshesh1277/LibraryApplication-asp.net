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
    public partial class AddBook : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        DataSet ds1 = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnInsert_Click(object sender, EventArgs e)                  // Insert Button Method
        {
            obj.savedata("insert into tblBookMaster(BookName,Quantity,AuthorName) values('" + txtBookName.Text + "','" + txtBookQuantity.Text + "','" + txtBookAuthor.Text + "')");


            // To Bind Data with Grid view
            SqlDataSource1.DataBind();
            GridView1.DataBind();

            Response.Write("<script language='javascript'>alert('New Book Added Successfully......');</script>");

            clear();
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)                      // Update Button Method
        {
            obj.savedata("update tblBookMaster set BookName='" + txtBookName.Text + "',Quantity='" + txtBookQuantity.Text + "',AuthorName='" + txtBookAuthor.Text + "' where BookId='" + txtBookID.Text + "'");
    
            SqlDataSource1.DataBind();
            GridView1.DataBind();

            Response.Write("<script language='javascript'>alert('Book Details Updated Successfully......');</script>");

            clear();
        }

        protected void BtnDelete_Click(object sender, EventArgs e)                      // Delete button Method
        {
            obj.savedata("delete from tblBookMaster where BookId='" + txtBookID.Text + "'");
            SqlDataSource1.DataBind();
            GridView1.DataBind();

            Response.Write("<script language='javascript'>alert('Book Details Deleted Successfully......');</script>");

            clear();
        }

        protected void BtnClear_Click(object sender, EventArgs e)           /*Clear Button*/
        {
            clear();
        }

        public void clear()                                          /*Clear All the data from the screen*/
        {
            txtBookID.Text = "";
            txtBookName.Text = "";
            txtBookQuantity.Text = "";
            txtBookAuthor.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)               // Show Data In grid Layout
        {
            txtBookID.Text = GridView1.SelectedRow.Cells[1].Text;
            txtBookName.Text = GridView1.SelectedRow.Cells[2].Text;
            txtBookQuantity.Text = GridView1.SelectedRow.Cells[3].Text;
            txtBookAuthor.Text = GridView1.SelectedRow.Cells[4].Text;
        }

      
    }
}