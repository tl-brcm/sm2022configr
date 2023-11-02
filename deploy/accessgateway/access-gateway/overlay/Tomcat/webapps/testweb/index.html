<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Session Contents</title>
    <style>
        table {
            width: 50%;
            margin: auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <p>This is a test page that prints out the ID token contents in the session store.</p>
    <table>
        <thead>
            <tr>
                <th>Attribute Name</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <% 
                Enumeration<String> attributeNames = session.getAttributeNames();
                while(attributeNames.hasMoreElements()){
                    String attributeName = attributeNames.nextElement();
                    Object attributeValue = session.getAttribute(attributeName);
            %>
                    <tr>
                        <td><%= attributeName %></td>
                        <td><%= attributeValue %></td>
                    </tr>
            <% 
                }
                
                // Check if id_token exists in the session
                String idToken = (String) session.getAttribute("id_token");
                if (idToken != null) {
                    byte[] decodedBytes = Base64.getDecoder().decode(idToken);
                    String decodedValue = new String(decodedBytes, StandardCharsets.UTF_8);
            %>
                    <tr>
                        <td>Decoded id_token</td>
                        <td><%= decodedValue %></td>
                    </tr>
            <% 
                }
            %>
        </tbody>
    </table>
</body>
</html>
