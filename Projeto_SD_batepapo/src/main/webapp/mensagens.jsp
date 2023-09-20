<%@ page import="java.io.FileWriter"%>
<%@ page import="Pacotes.rmi_interface"%>
<%@ page import="java.rmi.Naming" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Mensagem</title>
</head>
<body>
<%-- action nulo aponta o proprio arquivo. boa prática mostrar para onde vai!--%>
    <form name="form_mensagem" method="POST" action="mensagens.jsp">
        <b>Mensagem</b>
        <input type="text" name="txtmsg" maxlength="200" size="210">
        <input type="submit" name="btnenviasr" value="ENVIAR">
    </form>
</body>
<%

    if (request.getParameter("txtmsg")!=null){

        try {
            rmi_interface objRmi = (rmi_interface)Naming.lookup("rmi://127.0.0.1:7777/servidor_chat");

            String msg_rmi = session.getAttribute("nick") + "Fala: " + request.getParameter("txtmsg");

            boolean teste = objRmi.GravaMSG(msg_rmi);
            out.print(teste);
        }catch (Exception e){
            out.print("Erro: " + e.getMessage());
        }
    }

%>
</body>
</html>