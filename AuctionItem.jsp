<%-- 
    Document   : AuctionItem
    Created on : 31-Mar-2012, 16:14:50
    Author     : ENOW
--%>
<%@page import="javax.servlet.http.Part"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.io.InputStream"%>
<%@page import="Epack.Auctions"%>
<%@page import="Epack.GetValuse"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        GetValuse getValuse = new GetValuse();

        getValuse.setItem(request.getParameter("Itemname"));
        getValuse.setModel(request.getParameter("model"));
        getValuse.setDesc(request.getParameter("Desc"));
        //getValuse.setMinPrice(Float.valueOf(request.getParameter("MinPrice")));
        //getValuse.setResprice(Float.valueOf(request.getParameter("ResPrice")));
        getValuse.setMinPrice(100);
         getValuse.setResprice(300);
        getValuse.setStart(request.getParameter("start"));
       // getValuse.setDuration(Integer.valueOf(request.getParameter("Duration")));
       // getValuse.setCommission(Integer.valueOf(request.getParameter("ComRate")));
         getValuse.setCommission(20);
          getValuse.setDuration(10);
        getValuse.setStatus(request.getParameter("status"));
        
       
         //calmain method
        Auctions submit= new Auctions();
        String ses=(String)session.getAttribute("name");
        getValuse.setUserid(ses);
        int Put= submit.cREATEiTEM(getValuse);
        if (Put > 1) {
            request.getRequestDispatcher("UserDash.jsp").include(request, response);
            //response.sendRedirect("UserDash.jsp");
        } else {
            request.setAttribute("error", "<h2 align='center'>Please fill form correctly!</h2>");
            request.getRequestDispatcher("AuctionProduct.jsp").include(request, response);
        }
    %>     
</body>
</html>