﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <header></header>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu> 

        <asp:Login ID="Login1" runat="server" Height="157px" OnAuthenticate="Login1_Authenticate" Width="302px">
        </asp:Login>
        <asp:LinkButton ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Registrera" NavigateUrl="registrera.aspx" />
        <asp:LinkButton ID="btnGlomt" runat="server" OnClick="btnGlomt_Click" Text="Glömt lösenord" NavigateUrl="glomt_losen.aspx" />
        <asp:LinkButton ID="btnMinProfil" runat="server" OnClick="btnMinProfi_Click" Text="Min Profil Test luilullululluullulu" NavigateUrl="min_profil.aspx" />
    </form>
</body>
</html>
