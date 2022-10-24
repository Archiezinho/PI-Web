<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="Happy_Mind.pages.perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Perfil</title>
    <link rel="stylesheet" type="text/css" href="../css/header.css" />
    <style>
        body {
            margin: auto;
            text-align: justify;
            background-color: black;
        }

        main {
            height: 1000px;
            background-color: hsl(260, 18%, 10%);
            display: flex;
            justify-content: center;
        }

            main #perfil {
                display: flex;
                align-items: center;
                flex-wrap: wrap;
                justify-content: center;
                height: 100%;
                width: 100%;
                background: #2f2841;
                padding: 50px 0 30px 0;
            }

            main img {
                width: 250px;
                border-radius: 1000px;
                margin-bottom: 40px;
            }

            main div {
                text-align: left;
                width: 70%;
                padding: 0px 40px;
            }

                main div p {
                    font-size: 2.2rem;
                    color: white;
                }

            main input {
                background-color: rgba(255, 255, 255, 0.24);
                border: none;
                color: white;
                width: 80%;
                height: 30%;
                font-size: 1.2rem;
                margin-bottom: 20px;
            }

            main a {
                text-align: center;
                width: 45%;
                padding: 0.8rem;
                text-decoration: none;
                border-radius: 100px;
                font-size: 1.3rem;
                color: white;
                background-color: hsl(260, 18%, 10%, 0.7);
            }


        #a {
            color: black;
            background-color: #287ce9;
        }

            #a :hover {
                color: white;
                background-color: #287ce9;
            }

        main h1 {
            color: white;
            font-size: 2.8rem;
            text-align: center;
        }

        #description {
            overflow-y: scroll;
        }

        #i {
            display: flex;
            justify-content: center;
            align-items: flex-end;
        }

        @media screen and (Min-width: 700px) {
            main img {
                width: 270px;
            }
        }

        @media screen and (Min-width: 900px) {
            main div {
                width: 50%;
            }
        }

        @media screen and (Max-width: 900px) {
            main {
                height: 1200px;
            }
        }
    </style>
</head>
<body>
    <header id="header">
        <a href="../default.html" id="logo">
            <img src="../images/Logo2.png" alt="" /></a>
        <nav id="nav">
            <button id="btn-mobile" aria-expanded="false" aria-haspopup="true" aria-label="Abrir menu"
                aria-controls="menu">
                <span id="barras"></span>
            </button>
            <ul id="menu" role="menu">
                <li>
                    <a class="links" href="psicologos.aspx">Psicólogos</a>
                </li>
            </ul>
        </nav>
    </header>
    <main>
        <form id="perfil">
            <br />
            <br />
            <img src="../images/perfil.jpeg" alt="" />
            <div>
                <asp:Label ID="lblnome" runat="server" Text="Nome:"></asp:Label>
                <br />
                <asp:Label ID="lblespecialidade" runat="server" Text="Especialidade:"></asp:Label><br />
                 <asp:Label ID="lblnota" runat="server" Text="Nota:"></asp:Label>
            </div>


            <div id="i">
                <h1>Informações:</h1>
            </div>
           <asp:TextBox ID="description" runat="server"></asp:TextBox>
           <asp:LinkButton ID="a" runat="server" OnClick="a_Click">Marcar Consulta</asp:LinkButton>
        </form>
    </main>
    <script src="../js/btnmobile.js"></script>
</body>

</html>
