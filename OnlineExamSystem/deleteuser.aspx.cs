﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class deleteuser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    HttpCookie ad;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if(ad==null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void duser_click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.;AttachDbFileName=|DataDirectory|\\myDB2.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        qry = "delete from login where username='" + userlist.Text + "'";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();

        //Response.Redirect("deleteuser.aspx");
        Response.Write("<script>alert('User deleted Successfully')</script>");
    }
}