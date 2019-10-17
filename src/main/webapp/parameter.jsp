<%-- 
    Document   : random
    Created on : Sep 23, 2018, 8:44:44 PM
    Author     : lendle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String color = request.getParameter("color");//從 request.getParameter("...") 取得 color 參數
        // 額外：若 user 沒輸入參數，就隨機抓顏色
        if (color == null) {
            String[] colors = new String[]{"red", "green", "yello", "blue", "purple", "gray"};
            int index = ((int) (Math.random() * 1000) % 6);
            color = colors[index];
        }
    %>
    <!--
    利用 
    這個寫法，產生 bgcolor 屬性的內容
    -->
    <body bgcolor="<%=color %>">
        <h1>Hello World!</h1>
    </body>
</html>
