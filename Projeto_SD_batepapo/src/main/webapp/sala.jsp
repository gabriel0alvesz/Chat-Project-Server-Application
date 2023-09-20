<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Sala.jsp</title>
</head>
<body>
<%
//  out.print("O valor do txt_nick: " + request.getParameter("txtnick") + "<br>");
//  out.print("O valor do radcor: " + request.getParameter("radcor") + "<br>");
//    out.print(request.getParameter("txtnick"));
    session.setAttribute("txtnick", request.getParameter("txtnick"));
    session.setAttribute("radcor", request.getParameter("radcor"));
    session.setAttribute("radavatar", request.getParameter("radavatar"));
%>
    <iframe src="topo.jsp" width="100%" height="150" style="border: 3px solid black"></iframe>
    <iframe src="conversa.jsp" width="100%" height="500"></iframe>
    <iframe src="mensagens.jsp" width="100%" height="150" style="border: 3px dotted darkred"></iframe>

<%--O valor de <u>radavatar</u> é: <%out.print(request.getParameter("radavatar"));%> <br>--%>

</body>
</html>