﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrera.aspx.cs" Inherits="registrera" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrering</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
     <link rel="stylesheet" href="css/footer.css"/>
    <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
    <div class="container">
<form id="form1" runat="server" onsubmit="">

    <div class="row">
        <div class="col-md-12 noPadding"> 
        <header><img  class="img img-responsive"src="image/header.png" alt="header" id="header" /></header>
            </div>
     </div>
    <div class="row">
                <div class="navbar navbar-default navbar" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="Default.aspx" ><img id="logo" alt="Logo" src="image/logo.png" /></a><h1 class="navbar-text">Registrering</h1>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">                       
                                <li><a href="Default.aspx">Hem</a></li>
                                <li><a href="boka.aspx">Boka</a></li>                      
                                <li><a href="massorer.aspx">Massörer</a></li>
                                <li><a href="tjanster.aspx">Tjänster</a></li>
                                <li><a href="om_oss.aspx">Om Oss</a></li>
                                <li><asp:HyperLink ID="hllogin" runat="server" NavigateUrl="Login.aspx">Logga in</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
                </div> 
            </div>
    <div class="row">
    <asp:Panel ID="panRegistrera" Visible="true" runat="server">
        <div class="row">
            <div class="col-md-8 col-md-push-2">
        <p>Email*</p>
        <asp:TextBox ID="tb_email" runat="server" CssClass="form-control"></asp:TextBox> 
        <asp:RequiredFieldValidator align="right" ID="rf_email" runat="server" ErrorMessage="Email krävs." ControlToValidate="tb_email"  CssClass="red"></asp:RequiredFieldValidator>
        <br />
            </div>
            </div>
        <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>Första och mellannamn*</p>
        <asp:TextBox ID="tb_FaMname" runat="server" CssClass="form-control"></asp:TextBox> 
        <asp:RequiredFieldValidator align="right" ID="rf_famname" runat="server" ErrorMessage="Första och mellannamn krävs." ControlToValidate="tb_famName"  CssClass="red"></asp:RequiredFieldValidator> 
        <br />
                </div>
            </div>
                    
        <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>efternamn</p>
        <asp:TextBox ID="tb_lname" runat="server" CssClass="form-control"></asp:TextBox> 
        <asp:RequiredFieldValidator align="right" ID="rf_lname" runat="server" ErrorMessage="Efternamn krävs." ControlToValidate="tb_lname"  CssClass="red"></asp:RequiredFieldValidator>
        <br />
                 </div>
            </div>
                <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>personnummer</p>
        <asp:TextBox ID="tb_ssn" runat="server" CssClass="form-control"></asp:TextBox> 
        <asp:RequiredFieldValidator align="right" ID="rf_ssn" runat="server" ErrorMessage="Personnummer krävs." ControlToValidate="tb_ssn"  CssClass="red"></asp:RequiredFieldValidator>
        <br />
                  </div>
            </div>
                <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>Lösenord</p> 
        <asp:TextBox ID="tb_pw" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rf_pw" runat="server" ErrorMessage="Lösenord krävs." ControlToValidate="tb_pw"  CssClass="red"></asp:RequiredFieldValidator>
        <asp:CompareValidator align="right" ID="cvPassword" runat="server" ErrorMessage="Lösenorden matchar inte." ControlToCompare="tb_pw" ControlToValidate="tb_repeatedPw" CssClass="red"></asp:CompareValidator>
        <br />
                      </div>
            </div>
                <div class="row ">   
            <div class="col-md-8 col-md-push-2">
        <p>Lösenord igen</p>
        <asp:TextBox ID="tb_repeatedPw" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
                    </div>
            </div>
        <div class="row">
            <div class="col-md-8 col-md-push-2">
            <asp:CheckBox ID="cb_avtal" runat="server" text="Jag accepterar avtalet."/><br />
            <asp:CheckBox ID="cb_newsletter" runat="server" text="Jag vill prenumerera på nyhetsbladet."/><br />
            <asp:CheckBox ID="cb_invoice" runat="server" text="Jag tar faktura"/><br />
            <asp:Button ID="btnRegistrera" runat="server" Text="Registrera" OnClick="btnRegistrera_Click" CssClass="btn btn-primary" />
        </asp:Panel>
    </div>    
    </div>
        </div>
</form>
    <footer class="top-buffer-lg">
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Kontakta Oss</h3>
                    <ul>
                        <li> <p>Telefon: 112</p> </li>
                        <li> <p>Fax: 3003</p> </li>
                        <li> <p>Adress: Danskvägen 47</p> </li>
                    </ul>
                     <div class="input-append newsletter-box text-center">
                                <a href="#contact" data-toggle="modal"><button class="btn  bg-gray top-buffer-sm" type="button"> Fråga Oss <i class="fa fa-long-arrow-right"> </i> </button></a>
                            </div>  
                </div>
                <div class="col-md-3 col-sm-4 col-xs-6">
                    <h3> Vi Stödjer </h3>
                    <ul>
                        <li> <a href="#"> <img src="/image/MinStoraDag.png" alt="Min Stora Dag" height="35" /></a> </li>
                        <li> <a href="#"> <img src="/image/maskrosbarn.png" alt="Maskrosbarn" height="35" /></a> </li>
                        <li> <a href="#"> <img src="/image/rosabandet.png" alt="Rosa bandet" height="35" /></a> </li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-6">
                        <h3> </h3>
                    <ul>
                        <li> <a href="#"> <img src="/image/unicef.png" alt="Unicef" height="35" /> </a> </li>
                        <li> <a href="#"> <img src="/image/SOS-BARNBYAR.png" alt="SOS Barnbyar" height="35" /> </a> </li>                        

                    </ul>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-6">
                    <h3> Öppettider </h3>
                    <ul>
                        <li> <p>Månadag-Fredag : 10:00 - 21:00</p> </li>
                        <li> <p>Lördag : 10:00 - 20:00</p> </li>
                        <li> <p>Söndag : Stängt</p> </li>

                    </ul>
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © Harohal. All rights reserved. </p>
            
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>
        <section id="modals">
    <div class="modal fade" id="contact" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form  id="contactForm" action="mailto:linusbeck@hotmail.com" method="post" enctype="text/plain">
                    <div class="modal-header">
                        <h4>Kontakta Oss</h4>
                    </div>

                    <div class="modal-body">
                            <div class="form-group top-buffer-sm">
                                <h3 for="contactForm">Namn*</h3>
                                <input class="form-control" id="contactName" rows="1" name="name"></input>
                            </div>

                            <div class="form-group top-buffer-sm">
                                <h3 for="contactForm">Email*</h3>
                                <input class="form-control" id="contactEmail" rows="1" name="email"></input>
                            </div>

                            <div class="form-group top-buffer-sm">
                                <h3 for="contactForm">Fråga*</h3>
                                <textarea class="form-control" id="contactQuestion" rows="4" name="question"></textarea>
                            </div>
                    </div>

                    <div class="modal-footer">
                        <a class="btn btn-default" data-dismiss="modal">Stäng</a>
                        <input type="submit" class="btn btn-primary" data-dismiss="modal"  value="Skicka"/>
                    </div>
                 </form>
            </div>
        </div>
    </div>

  
</section>
        </div>

    <!--Footer taken from http://bootsnipp.com/snippets/featured/e-commerce-footer-responsive -->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
