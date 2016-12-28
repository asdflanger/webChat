<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="slangerPruebasNoBorrar_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.socket.io/socket.io-1.4.5.js"></script>
    <script src="scripts/chat.js"></script>
    <link rel="stylesheet" href="./css/estilos.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainMenu">
            <div class="barraMenu">
                <div>
                    <img src="../imgs/available.png" class="statusIcon" />
                </div>
                <div>
                    <h3 id="User">Marcelo David Barreto Gonzalez</h3>
                </div>
                <div>
                    <img src="../imgs/downArrow.png" class="statusChange" />
                </div>
            </div>
            <div class="statusSelect">
                <div>
                    <img class="statusThumb" src="../imgs/available_thumb.png" />Disponible
                </div>
                <div>
                    <img class="statusThumb" src="../imgs/idle_thumb.png" />
                    Ausente
                </div>
                <div>
                    <img class="statusThumb" src="../imgs/away_thumb.png" />Ocupado
                </div>
                <div>
                    <img class="statusThumb" src="../imgs/disconnect_thumb.png" />Desconectado
                </div>
            </div>
            <div id="UsuariosConectados">
                <ul id="grupos">
                    <li class="groupIcon">
                        <img class="groupSelect" src="../imgs/closeGroup.png" />Central - Informatica
                    <ul class="hijos">
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/away_thumb.png" />Sebastian Langer</li>
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/available_thumb.png" />Marcos Maiz</li>
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/idle_thumb.png" />Rodrigo Zayas</li>
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/disconnect_thumb.png" />Jean Marie Luis Marcel Rene Paul</li>
                    </ul>
                    </li>
                    <li class="groupIcon">
                        <img class="groupSelect" src="../imgs/closeGroup.png" />Central - RRHH
                    <ul class="hijos">
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/away_thumb.png" />Liz Lopez</li>
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/available_thumb.png" />Zenaida Fernandez</li>
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/idle_thumb.png" />Sonia Denois</li>
                    </ul>
                    </li>
                    <li class="groupIcon">
                        <img class="groupSelect" src="../imgs/closeGroup.png" />Central - Contabilidad
                    <ul class="hijos">
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/away_thumb.png" />Lorenal Coronel</li>
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/available_thumb.png" />Mabel Salcedo</li>
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/idle_thumb.png" />Gloria Espinoza Baez</li>
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/disconnect_thumb.png" />Victor Benitez</li>
                        <li class="groupChild">
                            <img class="groupChildstatus" src="../imgs/available_thumb.png" />Lucina Sosa</li>
                    </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div id="chatWindow">
            <div class="chatMenu">
                <h3 id="activeChat">Jean Marie Luis Marcel Rene Paul</h3>
                <div id="activeStatus">Desconectado.</div>
                <img class="closeChat" src="../imgs/closeWindow.png" />
            </div>
            <div class="mainChat">
                <div id="chatMessages">
                    <div class="bubbleRecived speech-bubble">
                        <div class="arrow bottomleft"></div>
                        <div class="content"></div>
                    </div>
                    <div class="bubbleSend speech-bubble">
                        <div class="arrow bottomright"></div>
                        <div class="content"></div>
                    </div>
                </div>

            </div>
            <div id="chatOptions">
                <textarea id="message" placeholder="Escriba su mensaje aqui..."></textarea>
                <img id="sendMessage" src="../imgs/sendMessage.png" />
            </div>
        </div>
    </form>
</body>
</html>
