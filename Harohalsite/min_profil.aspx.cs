﻿using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class min_profil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetUserData();
            FillOrdrar();
            updateMenu();
        }  
    }

    //Updaterar navigeringsmenyn beroende på ifall man är inloggad
    private void updateMenu()
    {
        if (Session.Count > 0)
        {
            foreach (MenuItem mItem in Menu.Items)
            {
                if (mItem.Text == "Logga in")
                {
                    mItem.Text = "Min Profil";
                    mItem.NavigateUrl = "min_profil.aspx";
                }
            }
        }
        else
        {
            foreach (MenuItem mItem in Menu.Items)
            {
                if (mItem.Text == "Min Profil")
                {
                    mItem.Text = "Logga In";
                    mItem.NavigateUrl = "login.aspx";
                }
            }
        }
    }

    //Fyller ut repeatern med dina ordrar
    protected void FillOrdrar()
    {
        rptBokningar.DataSource = orders();
        rptBokningar.DataBind();
    }

    //Hämtar dina ordrar
    protected DataTable orders()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getUserOrders(Session["userid"].ToString());

        foreach (DataColumn dc in dt.Columns)
        {
            dc.ReadOnly = false;
        }

        foreach (DataRow dr in dt.Rows)
        {
            if (dr["startTid"].ToString().Length == 4)
            {
                dr["startTid"] += "0";
            }
            if (dr["slutTid"].ToString().Length == 4)
            {
                dr["slutTid"] += "0";
            }
        }
        return dt;
    }

    //Hämtar användarens info och skriver ut den
    private void GetUserData()
    {
        BusinessDAL bDAL = new BusinessDAL();
        anvandare user = new anvandare();
        user = bDAL.getUserData(Session["userid"].ToString());
        litNamn.Text += user.FirstName + " " + user.LastName;
        litMail.Text += user.Epost;
        litSsn.Text += user.ssn;
    }

    //Redirectar dig till glomt_losen.aspx
    protected void btnBytLosen_Click(object sender, EventArgs e)
    {
        Response.Redirect("glomt_losen.aspx");
    }

    //Avbokar de markerade ordrarna
    protected void btnAvboka_Click(object sender, EventArgs e)
    {
        int x = 40;
        BusinessDAL bDAL = new BusinessDAL();
        foreach(RepeaterItem rptI in rptBokningar.Items)
        {
            CheckBox cbx = (CheckBox)rptI.FindControl("cbxAvboka");
            HiddenField hf = (HiddenField)rptI.FindControl("hfOrderID");

            if (cbx.Checked)
            {
                bDAL.updateOrderStatusID(x, hf.Value);
            }
        }
        FillOrdrar();
    }

    //Loggar ut den aktiva personen
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("hem.aspx");
    }
}