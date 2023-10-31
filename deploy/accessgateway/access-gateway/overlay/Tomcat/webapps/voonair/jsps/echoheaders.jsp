<%@ page import="java.util.*" %>
<html>
<head>
    <title>Display HTTP Request Headers</title>
</head>
<body>
    <h1>HTTP Request Headers</h1>
    <table border="1">
        <tr>
            <th>Header Name</th>
            <th>Header Value</th>
        </tr>
        <%
            Enumeration<String> headerNames = request.getHeaderNames();
            while(headerNames.hasMoreElements()) {
                String headerName = headerNames.nextElement();
                String headerValue = request.getHeader(headerName);
        %>
        <tr>
            <td><%= headerName %></td>
            <td><%= headerValue %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>