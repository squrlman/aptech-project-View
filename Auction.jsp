<%-- 
    Document   : Auction
    Created on : 11-Aug-2015, 00:07:25
    Author     : ENOW
--%>


<%@page import="Epack.GetValuse"%>
<%@page import="java.sql.SQLException"%>
<%@page import="Epack.Auctions"%>
<%@page import="Epack.login"%>
<%@page import="java.sql.Date"%>
<%@page import="Epack.connection"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page</title>
    </head>
    <body>

        <%

            //connection setFields = new connection();
            GetValuse getValuse = new GetValuse();

            getValuse.setItem(request.getParameter("Itemname"));
            getValuse.setDesc(request.getParameter("Desc"));
            getValuse.setModel(request.getParameter("model"));
            getValuse.setMinPrice(Float.valueOf(request.getParameter("MinPrice")));
            getValuse.setResprice(Float.valueOf(request.getParameter("ResPrice")));
            getValuse.setStart(request.getParameter("start"));
            getValuse.setDuration(Integer.valueOf(request.getParameter("Duration")));
            getValuse.setCommission(Integer.valueOf(request.getParameter("ComRate")));
            getValuse.setStatus(request.getParameter("status"));

            Auctions pUT = new Auctions();
            String ses = (String) session.getAttribute("name");
           int callx = pUT.cREATEiTEM(ses);

            if (callx > 1) {
                request.getRequestDispatcher("UserDash.jsp").include(request, response);
                //response.sendRedirect("UserDash.jsp");
            } else {
                request.setAttribute("error", "<h2 align='center'>Please fill form correctly!</h2>");
                request.getRequestDispatcher("AuctionProduct.jsp").include(request, response);
            }
        %>  
    </body>
</html>
