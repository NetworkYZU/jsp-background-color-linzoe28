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
        <meta http-equiv="refresh" content="1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" integrity="sha256-46qynGAkLSFpVbEBog43gvNhfrOj+BmwXdxFgVK/Kvc=" crossorigin="anonymous" />
    </head>
    <%
        String [] colors=new String[]{"LightSalmon", "LightSteelBlue", "LightPink", "Thistle", "Khaki"};
        String [] icons=new String[]{"fa-balance-scale","fa-balance-scale-left","fa-balance-scale-right"};
        int index=((int)(Math.random()*1000)%5);
        String color=colors[index];
        String icon=icons[(int)((Math.random()*1000)%icons.length)];
    %>
    <!--
    利用 
    這個寫法，產生 bgcolor 屬性的內容
    -->
    <body bgColor="<%=color %>">
        <h1><%=color %></h1><span class="fa <%=icon%>"></span>
    </body>
</html>
