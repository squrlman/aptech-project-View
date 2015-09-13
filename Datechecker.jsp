<%-- 
    Document   : dartechecker
    Created on : 09-Sep-2015, 16:38:36
    Author     : ENOW
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="Epack.DateCheck"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           // int id = Integer.valueOf(request.getParameter("itemid"));
            String itm =request.getParameter("itmname");
            DateCheck isValid = new DateCheck();
            boolean valid = isValid.findDate(itm);
            if (valid == true) {
                
                  request.getRequestDispatcher("UserDash.jsp").include(request, response);
            } else {
                request.setAttribute("errors", "<h3 align='center'>Add your credit</h3>");
                request.getRequestDispatcher("BidNow.jsp").include(request, response);
            }

        %>
    </body>
</html>
