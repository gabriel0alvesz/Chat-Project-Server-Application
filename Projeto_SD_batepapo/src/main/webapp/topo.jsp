<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Topo</title>
</head>
<body>
    <img src="<%=session.getAttribute("radavatar")%>" width="60px" height="60px">
    <font color="<%=session.getAttribute("radcor")%>" size="5">
        <%=session.getAttribute("txtnick")%>
    </font>
</body>
</html>