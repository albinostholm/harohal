﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="massorer.aspx.cs" Inherits="a_massorer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Massörer</title>
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

       <asp:Panel ID="panEditMassor" runat="server">
            <asp:Label ID="lblForNamn" runat="server" Text="Namn"></asp:Label>
            <asp:TextBox ID="tbForNamn" runat="server" OnTextChanged="tbNamn_TextChanged"></asp:TextBox>
            <asp:Label ID="lblEfterNamn" runat="server" Text="Namn"></asp:Label>
            <asp:TextBox ID="tbEfterNamn" runat="server" OnTextChanged="tbNamn_TextChanged"></asp:TextBox>
            <asp:Label ID="lblBeskrivning" runat="server" Text="Beskivning"></asp:Label>
            <asp:TextBox ID="tbBeskrivning" runat="server" OnTextChanged="tbBeskrivning_TextChanged"></asp:TextBox>
            <asp:Button ID="btnUppdatera" runat="server" Text="Spara" OnClick="btnUppdatera_Click" />
        </asp:Panel>
    <asp:Panel ID="panVisaMassorLista" runat="server">
    <asp:Repeater ID="repMassorer" runat="server"  OnItemCommand="repMassorer_ItemCommand">
        <ItemTemplate>

             <div style="display:block; float:left;width:60%; padding:1em; border:1px solid black; margin-bottom:1.5%; ">
                 <h1><%# Eval("namn") %></h1>
                 <p><%# Eval("beskrivning") %></p>
                 <asp:LinkButton ID="lbVisaMassor" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "anstalldID" )%>'>Redigera text</asp:LinkButton>
             </div>                             
        </ItemTemplate>
    </asp:Repeater>
    </asp:Panel>
    <asp:Label ID="lblRCtest" runat="server" Text="" style="display:none;"></asp:Label>
</form>
</body>
</html>
