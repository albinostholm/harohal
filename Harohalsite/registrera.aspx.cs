﻿using System;

public partial class registrera : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            hllogin.NavigateUrl = "login.aspx";
            hllogin.Text = "Logga in";
        }
        else
        {
            hllogin.NavigateUrl = "min_profil.aspx";
            hllogin.Text = "Min Profil";
        }
    }

    //Lägger in en ny användare i databasen ifall allt går igenom validering
    protected void btnRegistrera_Click(object sender, EventArgs e)
    {

        string newUserId;
        BusinessDAL bd = new BusinessDAL();
        anvandare anv = new anvandare();

        anv.FirstName = tb_FaMname.Text.ToString();
        anv.LastName = tb_lname.Text.ToString();
        anv.Epost = tb_email.Text.ToString();
        anv.ssn = tb_ssn.Text.ToString();
        anv.Password = tb_pw.Text.ToString();
        anv.newsletter = cb_newsletter.Text.ToString();
        if (cvPassword.IsValid && cb_avtal.Checked)
        {
            newUserId = bd.CreateUser(anv);
            Response.Redirect("login.aspx");
        }
    }

}
 