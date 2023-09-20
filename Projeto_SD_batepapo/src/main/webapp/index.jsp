<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bate-Papo</title>
</head>
<body>
<center>
    <form name="form_login" method="get" action="sala.jsp">
        <table border="1">
            <tr>
                <td bgcolor="MediumSeaGreen" colspan="2" align="center">
                    <font color="white" size="+2">BATE PAPO</font>
                </td>
            </tr>

            <!-- Nome do usário -->
            <tr>
                <td bgcolor= "DarkSeaGreen">
                    NICK:
                </td>
                <td>
                    <input name="txtnick" type="text" size="100" maxlength="20">
                </td>
            </tr>
            <tr>
                <td bgcolor= "DarkSeaGreen">
                    COR:
                <td>
                    <input type="radio" name="radcor" value="blue"><font color="blue">AZUL</font>
                    <input type="radio" name="radcor" value="red"><font color="red">VERMELHO</font>
                    <input type="radio" name="radcor" value="black"><font color="black">PRETO</font>
                    <input type="radio" name="radcor" value="green"><font color="green">VERDE</font>
                </td>
            </tr>

            <tr>
                <td bgcolor= "DarkSeaGreen">
                    AVATAR:
                <td>
                    <input type="radio" name="radavatar" value="./assets/avatar1.svg"> <img type="img" src="./assets/avatar1.svg" width="40px" hight="40px">
                    <input type="radio" name="radavatar" value="./assets/avatar2.svg"> <img type="img" src="./assets/avatar2.svg" width="40px" hight="40px">
                    <input type="radio" name="radavatar" value="./assets/avatar3.jpg"> <img type="img" src="./assets/avatar3.jpg"width="40px" hight="40px">
                    <input type="radio" name="radavatar" value="./assets/avatar4.jpg"> <img type="img" src="./assets/avatar4.jpg" width="40px" hight="40px">
                </td>
            </tr>

            <tr>
                <td bgcolor="MediumSeaGreen" colspan="2" align="center">
                    <input type="submit" name="cmd" value="ENTRAR">
                </td>
            </tr>
        </table>
    </form>
</center>

</body>
</html>