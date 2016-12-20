﻿using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class massorer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillMassor();
            GetOneArtikel();
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

    //Fyller repeatern med massörinfo
    private void FillMassor()
    {
        repMassor.DataSource = massorList();
        repMassor.DataBind();
    }

    //Hämtar artikeln för massörer och skriver ut den
    private void GetOneArtikel()
    {
        BusinessDAL bDAL = new BusinessDAL();
        artikel art = new artikel();
        art = bDAL.getArtikelInfo(2);
        lblRubrik.Text = art.rubrik;
        litBeskrivning.Text = art.beskrivning;
    }

    //Hämtar massörinfo
    private DataTable massorList()
    {
        BusinessDAL bDal = new BusinessDAL();
        DataTable dt = new DataTable();

        dt = bDal.getMassorInfo();

        return dt;
    }
}