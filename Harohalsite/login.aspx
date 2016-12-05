<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

<form id="login_form" runat="server">
    <header></header>
<asp:Menu ID="Menu" runat="server" orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

<<<<<<< HEAD
        <asp:Login ID="Login1" runat="server" Height="157px" OnAuthenticate="Login1_Authenticate"
=======
    <asp:Login ID="Login1" runat="server" Height="157px" onauthenticate="Login1_Authenticate"
>>>>>>> b8f645cd906b9d78bc5ccc75b6ff544ecadc9e16
               Width="302px" PasswordRequiredErrorMessage="Lösenord krävs för att logga in."
               UserNameRequiredErrorMessage="Användarnamn krävs för att logga in.">
        <HyperLinkStyle BorderStyle="Solid"/>
        <FailureTextStyle BackColor="#DBDBDB" BorderColor="Red"/>
    </asp:Login>
    <asp:LinkButton ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Registrera"
                    NavigateUrl="registrera.aspx"/>
    <asp:LinkButton ID="btnGlomt" runat="server" OnClick="btnGlomt_Click" Text="Glömt lösenord"
                    NavigateUrl="glomt_losen.aspx"/>
</form>
</body>
</html>