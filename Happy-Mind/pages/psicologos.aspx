<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="psicologos.aspx.cs" Inherits="Happy_Mind.pages.psicologos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>psicólogos</title>
    <link rel="stylesheet" href="../css/psicologia.css"/>
    <link rel="stylesheet" type="text/css" href="../css/header.css"/>
    <link rel="stylesheet" type="text/css" href="../css/footer.css"/>
</head>
<body>
    <header id="header">
        <a href="../default.html" id="logo"><img src="../images/Logo2.png" alt=""/></a>
        <nav id="nav">
            <button id="btn-mobile" aria-expanded="false" 
            aria-haspopup="true" aria-label="Abrir menu" 
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
    <h1 id="banner-destaque" class="banner-psicologos">Psicólogos</h1>
    <main>
        <div class="espaco-pequeno"></div>
        <div class="limita_tamanho">
        </div>
        <div class="espaco-medio"></div>
        <div class="psicologos-wrapper">
            <div class="psicologos-wrapper plantao">
                <div class="psicologo">
                    <div class="psicologo .img">
                        <img id="imgP" src="../images/2019-11-08- Mestrado Profissional em Psicologia(1).png"/>
                    </div>
                    <div class="psicologo-nome">
                        <p>Silva de ferriea</p>
                    </div>
                    <div class="psicologo-detalhes">
                        <p><b>Estado:</b>SP</p>
                        <p><b>CRP</b>04/5588</p>
                        <p><b>Psicologia Clínica e Traumas</b></p>
                        <br/>
                        <p>
                            <a href="perfil.aspx">
                                <span class="disponivel">Disponível agora!</span>
                            </a>
                        </p>
                        <br/>
                    </div>
                    <div class="psicologo-bot">
                        <div class="bot-wrapper">
                            <p>A partir de: <b>R$60,00</b></p>
                            <br/>
                            <br/>
                            <a href="perfil.aspx">
                                <div class="botaoSabia">Sabia mais</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="psicologos-wrapper plantao">
                <div class="psicologo">
                    <div class="psicologo .img">
                        <img id="imgP" src="../images/2019-11-08- Mestrado Profissional em Psicologia(1).png">
                    </div>
                    <div class="psicologo-nome">
                        <p>Silva de ferriea</p>
                    </div>
                    <div class="psicologo-detalhes">
                        <p><b>Estado:</b>SP</p>
                        <p><b>CRP</b>04/5588</p>
                        <p><b>Psicologia Clínica e Traumas</b></p>
                        <br/>
                        <p>
                            <a href="perfil.aspx">
                                <span class="disponivel">Disponível agora!</span>
                            </a>
                        </p>
                        <br/>
                    </div>
                    <div class="psicologo-bot">
                        <div class="bot-wrapper">
                            <p>A partir de: <b>R$60,00</b></p>
                            <br/>
                            <br/>
                            <a href="perfil.aspx">
                                <div class="botaoSabia">Sabia mais</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="psicologos-wrapper plantao">
                <div class="psicologo">
                    <div class="psicologo .img">
                        <img id="imgP" src="../images/2019-11-08- Mestrado Profissional em Psicologia(1).png">
                    </div>
                    <div class="psicologo-nome">
                        <p>Silva de ferriea</p>
                    </div>
                    <div class="psicologo-detalhes">
                        <p><b>Estado:</b>SP</p>
                        <p><b>CRP</b>04/5588</p>
                        <p><b>Psicologia Clínica e Traumas</b></p>
                        <br/>
                        <p>
                            <a href="perfil.aspx">
                                <span class="disponivel">Disponível agora!</span>
                            </a>
                        </p>
                        <br/>
                    </div>
                    <div class="psicologo-bot">
                        <div class="bot-wrapper">
                            <p>A partir de: <b>R$60,00</b></p>
                            <br/>
                            <br/>
                            <a href="perfil.aspx">
                                <div class="botaoSabia">Sabia mais</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <div class="psicologo-ver-mais-centralizado">
        <button class="botaoMais">Carregar mais psicólogos</button>
    </div>
    <footer id="footer">
        <!--aviso-->
        <p id="Aviso">
            ATENÇÃO: Este portal não oferece atendimento de urgência para
            casos relacionados a crises suicidas. Nestes casos, entre em
            contato gratuitamente com o CVV (Centro de Valorização da Vida)
            pelo telefone 188 ou acesse www.cvv.org.br. Em caso de
            emergências, busque o hospital mais próximo ou ligue 192
            (SAMU).
        </p>
        <!--logotipo do footer-->
        <figure>
            <img src="../images/logo2.png" alt="logo"/>
        </figure>
        <!--e-mail-->
        <address>
            <img src="../images/E-mail.png" alt="E-mail"/>
            <a href="">Contato@HappyMind.com</a>
        </address>
        <!--whats-->
        <address>
            <img src="../images/Zap.png" alt="whatsapp"/>
            <a href="">13 99612-1231</a>
        </address>
        <!--copyright-->
        <p id="Inutil">desenvolvido por turma TI-42</p>
    </footer>

    <script src="../js/btnmobile.js"></script>
</body>

</html>
