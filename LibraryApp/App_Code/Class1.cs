using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;



/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection cn = new SqlConnection();             // Add New connection to databse

    public Class1()
    {
        // To define database connection
        cn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=MyLibDB;Integrated Security=True";

        //
        // TODO: Add constructor logic here
        //
    }
    public DataSet viewdata(string str)
    {
        cn.Open();
        SqlDataAdapter adp = new SqlDataAdapter(str, cn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        return ds;
    }

    public void savedata(string str)
    {
        SqlCommand cmd = new SqlCommand(str, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }

    public string celldata(string str)
    {
        SqlCommand cmd = new SqlCommand(str, cn);
        string ch = null;
        cn.Open();
        SqlDataReader rd = null;
        rd = cmd.ExecuteReader();
        if (rd.Read() == true)
        {
            ch = rd.GetValue(0).ToString();
        }
        else
        {
            ch = "NO-DATA";
        }
        rd.Close();
        cn.Close();
        return ch;
    }
    public string checkdata(string str)
    {
        SqlCommand cmd = new SqlCommand(str, cn);
        string ch = null;
        cn.Open();
        SqlDataReader rd = null;
        rd = cmd.ExecuteReader();
        if (rd.Read() == true)
        {
            ch = "Y";
        }
        else
        {
            ch = "N";
        }
        rd.Close();
        cn.Close();
        return ch;
    }
}