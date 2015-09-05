<%-- 
    Document   : uploadProduct
    Created on : 31-Aug-2015, 11:36:19
    Author     : ENOW
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        String name = request.getParameter("Itemname");
        String mod = request.getParameter("model");
        String des = request.getParameter("Desc");
        float min = Float.valueOf(request.getParameter("MinPrice"));
        float res = Float.valueOf(request.getParameter("ResPrice"));
        String str = request.getParameter("start");
        int dur = Integer.valueOf(request.getParameter("Duration"));
        int com = Integer.valueOf(request.getParameter("ComRate"));
        String sts = request.getParameter("status");

        InputStream inputStream = null;

        // obtains the upload file part in this multipart request  
        Part filePart = request.getPart("image");
        if (filePart != null) {
            // debug messages  
            System.out.println("flprt" + filePart.getName());
            System.out.println("size" + filePart.getSize());
            System.out.println("cont" + filePart.getContentType());

            // obtains input stream of the upload file  
            inputStream = filePart.getInputStream();
        }
      
    String cnt=request.getContentType();
  
        Connection con = null;
        String message = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1994;user=sakwe;password=Sakwe@1;databaseName=ECommerceDB";
            con = DriverManager.getConnection(url);
            Statement st = con.createStatement();
            String sql = "insert into Auction_Item (Auction_id,ItemName,Item_Description,Minimum_Paid_Prcie,Reserved_Price,"
                    + "Auction_Start_Date,Auction_Duration,Commission_Rate,Auction_Status,UserId,picture) "
                    + "values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, mod);
            statement.setString(3, des);
            statement.setFloat(4, min);
            statement.setFloat(5, res);
            statement.setString(6, str);
            statement.setInt(7, dur);
            statement.setInt(8, com);
            statement.setString(9, sts);
            statement.setString(10, "claris");
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column  
                statement.setBlob(11, inputStream);
            }
            int row = statement.executeUpdate();
            if (row > 0) {
                response.sendRedirect("UserDash.jsp");
                message = "Image is uploaded successfully into the Database";
            }
        } catch (Exception ex) {
            out.println(ex);
        }
        // sets the message in request scope  
        request.setAttribute("Message", message);
        getServletContext().getRequestDispatcher("/submit.jsp").forward(
                request, response);
    
        
         %>
    </body>
</html>