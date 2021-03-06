﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="massorer.aspx.cs" Inherits="a_massorer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Massörer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
<form id="form1" runat="server">
    <h1>Våra massörer</h1>

    <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Min Profil" Value="Min Profil" NavigateUrl="min_profil.aspx"></asp:MenuItem>           
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Artiklar" Value="Artiklar" NavigateUrl="artiklar.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Schema" Value="Schema" NavigateUrl="schema.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Nyheter" Value="Nyheter" NavigateUrl="Nyheter.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

        <asp:TextBox ID="tbSSN" runat="server" Text="Personnummer"></asp:TextBox>
        <asp:TextBox ID="tbNewBeskrivning" runat="server" Text="Beskrivning"></asp:TextBox>
        <asp:CheckBox ID="cbxWomen" runat="server" Text="Behandlar Kvinnor" />
        <asp:CheckBox ID="cbxMen" runat="server" Text="Behandlar Män" />
        <asp:Button ID="btnNewMassor" runat="server" Text="Skapa ny Massör" OnClick="btnNewMassor_Click" />

       <asp:Panel ID="panEditMassor" runat="server">
            <asp:Label ID="lblForNamn" runat="server" Text="Förnamn"></asp:Label>
            <asp:TextBox ID="tbForNamn" runat="server"></asp:TextBox>
            <asp:Label ID="lblEfterNamn" runat="server" Text="Efternamn"></asp:Label>
            <asp:TextBox ID="tbEfterNamn" runat="server"></asp:TextBox>
            <asp:Label ID="lblBeskrivning" runat="server" Text="Beskivning"></asp:Label>
            <asp:TextBox ID="tbBeskrivning" runat="server"></asp:TextBox>
            <asp:Button ID="btnUppdatera" runat="server" Text="Spara" OnClick="btnUppdatera_Click" />
        </asp:Panel>
    <asp:Panel ID="panVisaMassorLista" runat="server">
    <asp:Repeater ID="repMassorer" runat="server"  OnItemCommand="repMassorer_ItemCommand">
        <ItemTemplate>
                 <h1><%# Eval("namn") %></h1>
                 <p><%# Eval("beskrivning") %></p>
                 <asp:LinkButton ID="lbVisaMassor" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "anstalldID" )%>'>Redigera text</asp:LinkButton>                         
        </ItemTemplate>
    </asp:Repeater>
    </asp:Panel>
    <asp:Label ID="lblID" runat="server" Text="" style="display:none;"></asp:Label>
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
