﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ErCinema.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="Nome">Nome</label>
                        <asp:TextBox ID="Nome" placeholder="Inserisci il tuo nome" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group mt-3">
                        <label for="Cognome">Cognome</label>
                        <asp:TextBox ID="Cognome" placeholder="Inserisci il tuo cognome" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>


                    <div class="form-group mt-3">
                        <label for="DropDownList2">Seleziona la sala</label>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="200px">
                            <asp:ListItem Value="Nord" Text="Sala Nord" id="nord" />
                            <asp:ListItem Value="Est" Text="Sala Est" id="est" />
                            <asp:ListItem Value="Sud" Text="Sala Sud" id="sud" />
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-md-6">
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <asp:Button ID="Button1" CssClass="btn btn-success mt-3" runat="server" Text="Prenota" OnClick="Button1_Click" />
                    <div class="m-3">
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-check-input" Text="Biglietto ridotto" />
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
