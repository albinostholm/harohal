﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="boka.aspx.cs" Inherits="boka" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Boka</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
<form id="form1" runat="server">
    <asp:HiddenField runat="server" ID="hfWeek"/>

    <h1>Boka en ny tid!</h1>

    <div style="float:left; clear:left">
        <asp:Menu ID="Menu" runat="server" orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Hem" Value="Hem" NavigateUrl="hem.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Boka" Value="Boka" NavigateUrl="boka.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Massörer" Value="Massörer" NavigateUrl="massorer.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Tjänster" Value="Tjänster" NavigateUrl="tjanster.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Om Oss" Value="Om Oss" NavigateUrl="om_oss.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Logga in" Value="Logga in" NavigateUrl="Login.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>

    <div style="clear:left">
        <asp:Repeater runat="server" ID="repMassor">
            <ItemTemplate>
                <div style="width:10%; border:1px solid black; float:left;">
                    <h2><%# Eval("namn") %></h2>
                    <p><%# Eval("beskrivning") %></p>
                    <asp:HiddenField ID="hfMassor" runat="server" Value='<%# Eval("anstalldID") %>'/>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <asp:DropDownList ID="ddlMassor" runat="server" OnSelectedIndexChanged="ddlMassor_SelectedIndexChanged"
                      AutoPostBack="true">

    </asp:DropDownList>

    <div style="clear:left">
        <asp:Repeater runat="server" ID="repTjanster">
            <ItemTemplate>
                <div style="width:10%; border:1px solid black; float:left;">
                    <h2><%# Eval("namn") %></h2>
                    <p><%# Eval("beskrivning") %></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <asp:DropDownList ID="ddlTjanst" runat="server"></asp:DropDownList>

    <div style="float:left; clear:left; padding:10px">
        <label>Vilken dag vill do boka på? </label>
        <asp:DropDownList ID="ddlDay" runat="server">
            <asp:ListItem Text="Mån" Value="Monday"></asp:ListItem>
            <asp:ListItem Text="Tis" Value="Tuesday"></asp:ListItem>
            <asp:ListItem Text="Ons" Value="Wednesday"></asp:ListItem>
            <asp:ListItem Text="Tor" Value="Thursday"></asp:ListItem>
            <asp:ListItem Text="Fre" Value="Friday"></asp:ListItem>
            <asp:ListItem Text="Lör" Value="Saturday"></asp:ListItem>
        </asp:DropDownList>
    </div>

    <div style="float:left; padding:10px">
        <label>Skriv tiden du vill börja(HH:MM): </label>
        <asp:TextBox ID="tbTime" runat="server"></asp:TextBox>
    </div>

    <div style="clear: left; position: center">
        <asp:Button ID="btnDeWeek" runat="server" OnClick="btnDeWeek_Click" Enabled="true"/>
        <asp:Label ID="lblWeek" runat="server"></asp:Label>
        <asp:Button ID="btnInWeek" runat="server" OnClick="btnInWeek_Click" Enabled="true"/>
    </div>

    <div style="float:left; clear:left">
        <DayPilot:DayPilotCalendar ID="DayPilotCalendar1" runat="server" Days="6"
                                   DataStartField="startTid"
                                   DataEndField="slutTid"
                                   DataTextField="namn"
                                   DataValueField="schemaID"
                                   style="top: 130px; left: -136px"/>
    </div>

    <div style="float:left; clear:left">
        <asp:Button ID="Button1" runat="server" Text="Boka" OnClick="btnBekrafta" style="float:left"/>
    </div>
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
