<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendario.aspx.cs" Inherits="Happy_Mind.pages.calendario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Calendario</title>
  <link rel="stylesheet" type="text/css" href="../css/header.css" />
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

    body {
      margin: 0 auto;
      background-color: #201b2c;
      font-family: 'Noto Sans', sans-serif;
    }
    main {
      padding: 100px 0 50px 0;
      background-color: #201b2c;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-wrap: wrap;
    }
    #box-btn{
      width: 100%;
      display: flex;
      justify-content: center;
    }
    .btn-login {
      text-decoration: none;
      padding: 16px;
      margin-top: 20px;
      margin-bottom: 20px;
      border: none;
      border-radius: 8px;
      outline: none;
      text-transform: uppercase;
      font-weight: 800;
      letter-spacing: 3px;
      color: #2b134b;
      background: #21a5e2;
      box-shadow: 0px 10px 40px -12px #2793ec;
      cursor: pointer;
    }

    .btn-login:hover {
      color: white;
      font-size: 1.2rem;
      transition: 0.5s;
    }

    #calendar {
      width: 420px;
    }

    #calendar ul {
      list-style-type: none;
    }

    .month {
      box-sizing: border-box;
      padding: 70px 25px;
      background: hsl(260, 18%, 10%);
      text-align: center;
    }

    .month ul {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    .month ul li, #prev, #next {
      box-sizing: border-box;
      color: #9b98e7;
      font-size: 20px;
      text-transform: uppercase;
      letter-spacing: 3px;
    }

    .month #prev {
      border:none;
      background-color:transparent;
      box-sizing: border-box;
      float: left;
      padding-top: 10px;
      cursor: pointer;
    }

    .month #next {
      border:none;
      background-color:transparent;
      box-sizing: border-box;
      float: right;
      padding-top: 10px;
      cursor: pointer;
    }

    .weekdays {
      box-sizing: border-box;
      display: flex;
      justify-content: center;
      margin: 0;
      padding: 10px 0;
      background-color: #9b98e7;
    }

    .weekdays li {
      box-sizing: border-box;
      display: inline-block;
      width: 12.5%;
      color: white;
      text-align: center;
    }

    .days {
      box-sizing: border-box;
      padding: 15px 5px 10px 30px;
      background: hsl(260, 18%, 10%);
      margin: 0;
    }

    .dia{
      background-color:transparent;
      border:none;
      box-sizing: border-box;
      list-style-type: none;
      display: inline-block;
      width: 12.5%;
      font-size: 12px;
      text-align: center;
      color: #9b98e7;
      padding: 5px;
    }

    .dia:hover {
      background: #9b98e7;
      color: white;
      cursor: pointer;
    }

    .active {
      background: #9b98e7;
      border:none;
      box-sizing: border-box;
      list-style-type: none;
      display: inline-block;
      width: 12.5%;
      font-size: 12px;
      text-align: center;
      color: white;
      padding: 5px;
    }

    #frame {
      height: 500px;
      width: 268px;
      margin-left: 50px;
    }

    #voltar {
      position: absolute;
      left: 30px;
      margin-top: 15px;
      color: #1b8eec;
      text-decoration: none;
      font-size: 2em;
    }

    #voltar:hover {
      color: #ba18ec;
      transition: 1s;
    }

    @media screen and (min-width: 1100px) {
      #calendar {
        margin-right: 10%;
        width: 600px;
        height: 500px;
        font-size: 1.3rem;
      }
      .month #prev{
        font-size: 2rem;
      }
      .month #next{
        font-size: 2rem;
      }
      .month{
        padding-top: 90px;
        height: 250px;
      }
      .month li span{
        font-size: 2rem;
      }
      .weekdays{
        height: 50px;
      }
      .days{
        height: 200px;
        padding: 15px 5px 10px 40px;
      }
      .dia{
        font-size: 1.1rem;
      }
      .active{
        font-size: 1.1rem;
      }
    }

    @media screen and (max-width: 740px) {
      main {
        padding: 80px 0 0 0;
      }

      #calendar {
        margin: 0 0 50px 0;
      }
    }

    @media screen and (max-width: 686px) {
      #frame {
        margin: 0 auto;
      }
    }

    @media screen and (max-width: 440px) {
      #calendar {
        width: 100%;
      }
      .days{
        height: 165px;
        padding: 15px 15px 10px 20px;
      }
    }
  </style>
</head>
<body>
   <form runat="server">
  <a href="cadastro-consulta.aspx" id="voltar">Voltar</a>
  <main>
    <div id="calendar">
      <div class="month">
        <ul>
            <asp:Button ID="prev" runat="server" Text="&#10094;" OnClick="prev_Click" />
            <asp:Button ID="next" runat="server" Text="&#10095;" OnClick="next_Click" />
          <li>
            <asp:Label ID="mes" runat="server" Text="janeiro"></asp:Label><br/>
            <asp:Label ID="ano" style="font-size:18px" runat="server" Text="2022"></asp:Label>
          </li>
        </ul>
      </div>

      <ul class="weekdays">
        <li>Seg</li>
        <li>Ter</li>
        <li>Qua</li>
        <li>Qui</li>
        <li>Sex</li>
        <li>Sab</li>
        <li>Dom</li>
      </ul>

      <ul class="days">
          <asp:Button CssClass="dia" ID="d1" runat="server" Text="1" OnClick="d1_Click" />
          <asp:Button CssClass="dia" ID="d2" runat="server" Text="2" OnClick="d2_Click1" />
          <asp:Button CssClass="dia" ID="d3" runat="server" Text="3" OnClick="d3_Click" />
          <asp:Button CssClass="dia" ID="d4" runat="server" Text="4" OnClick="d4_Click" />
          <asp:Button CssClass="dia" ID="d5" runat="server" Text="5" OnClick="d5_Click" />
          <asp:Button CssClass="dia" ID="d6" runat="server" Text="6" OnClick="d6_Click" />
          <asp:Button CssClass="dia" ID="d7" runat="server" Text="7" OnClick="d7_Click" />
          <asp:Button CssClass="dia" ID="d8" runat="server" Text="8" OnClick="d8_Click" />
          <asp:Button CssClass="dia" ID="d9" runat="server" Text="9" OnClick="d9_Click" />
          <asp:Button CssClass="dia" ID="d10" runat="server" Text="10" OnClick="d10_Click" />
          <asp:Button CssClass="dia" ID="d11" runat="server" Text="11" OnClick="d11_Click" />
          <asp:Button CssClass="dia" ID="d12" runat="server" Text="12" OnClick="d12_Click" />
          <asp:Button CssClass="dia" ID="d13" runat="server" Text="13" OnClick="d13_Click" />
          <asp:Button CssClass="dia" ID="d14" runat="server" Text="14" OnClick="d14_Click" />
          <asp:Button CssClass="dia" ID="d15" runat="server" Text="15" OnClick="d15_Click" />
          <asp:Button CssClass="dia" ID="d16" runat="server" Text="16" OnClick="d16_Click" />
          <asp:Button CssClass="dia" ID="d17" runat="server" Text="17" OnClick="d17_Click" />
          <asp:Button CssClass="dia" ID="d18" runat="server" Text="18" OnClick="d18_Click" />
          <asp:Button CssClass="dia" ID="d19" runat="server" Text="19" OnClick="d19_Click" />
          <asp:Button CssClass="dia" ID="d20" runat="server" Text="20" OnClick="d20_Click" />
          <asp:Button CssClass="dia" ID="d21" runat="server" Text="21" OnClick="d21_Click" />
          <asp:Button CssClass="dia" ID="d22" runat="server" Text="22" OnClick="d22_Click" />
          <asp:Button CssClass="dia" ID="d23" runat="server" Text="23" OnClick="d23_Click" />
          <asp:Button CssClass="dia" ID="d24" runat="server" Text="24" OnClick="d24_Click" />
          <asp:Button CssClass="dia" ID="d25" runat="server" Text="25" OnClick="d25_Click" />
          <asp:Button CssClass="dia" ID="d26" runat="server" Text="26" OnClick="d26_Click" />
          <asp:Button CssClass="dia" ID="d27" runat="server" Text="27" OnClick="d27_Click" />
          <asp:Button CssClass="dia" ID="d28" runat="server" Text="28" OnClick="d28_Click" />
          <asp:Button CssClass="dia" ID="d29" runat="server" Text="29" OnClick="d29_Click" />
          <asp:Button CssClass="dia" ID="d30" runat="server" Text="30" OnClick="d30_Click" />
          <asp:Button CssClass="dia" ID="d31" runat="server" Text="31" OnClick="d31_Click" />
      </ul>
    </div>
    <div>
      <iframe id="frame" src="horarios.aspx" frameborder="0"></iframe>
    </div>
  </main>
  <div id="box-btn"><asp:LinkButton class="btn-login" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Marcar Consulta</asp:LinkButton></div>
  </form>
  <script src="../js/calendar.js"></script>
</body>

</html>
