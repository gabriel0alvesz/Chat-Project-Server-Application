<%@ page import="java.io.FileReader"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="Pacotes.rmi_interface" %>
<%@ page import="java.rmi.Naming" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Conversa</title>
    <meta http-equiv="refresh" content="3;conversa.jsp">
</head>
<body>
    <%
       try {
           rmi_interface obj_leitura = (rmi_interface) Naming.lookup("rmi://127.0.0.1:7777/servidor_chat");

           String let_obj = obj_leitura.RecuperaMSG();
           out.print(let_obj);
       }catch (Exception e){
           out.print("Erro: " + e.getMessage());
       }

//        FileReader reader = new FileReader("/Users/gabrielalves/IdeaProjects/Projeto_SD_batepapo/src/main/webapp/chat.txt");
//        BufferedReader buffer = new BufferedReader(reader);
//
//        while (buffer.ready()){
//            out.print(buffer.readLine());
//        }
//
//        buffer.close();
    %>
</body>
</html>
