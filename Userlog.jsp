
<%@page import="Packages.login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%@page import="java.sql.Date"%>
        <%@page import="Packages.connection"%>
        <%@page import="java.time.LocalDate"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.Statement"%>
       

        <%
            connection getcon = new connection();
            getcon.connect();
            login getdata = new login();
            
            //String uname = getdata.getUsername()(request.getParameter("username"));
            getdata.setUsername(request.getParameter("username"));
            getdata.setPassword(request.getParameter("password"));
            

            String sql = "select * from Users where UserId='" + getdata.getUsername() + "' and passwrd='" + getdata.getPassword() + "'";
            Statement stmts = getcon.connect().createStatement();
            ResultSet rs = stmts.executeQuery(sql);
            
            String uname = "";
            String pass = "";
            if (rs.next()) {
                 uname = rs.getString("UserId");
                 pass = rs.getString("passwrd");
            }
                if (getdata.getUsername().equals(uname) && getdata.getPassword().equals(pass)) {
                    //is valid
                      //  boolean ses= session.isNew();
                      //  ses=true;
                        session =request.getSession();
                        session.setAttribute("name",uname);                   
                      // long setimes= session.getCreationTime();
                       
                     response.sendRedirect("UserDash.jsp");
                }else if(!getdata.getUsername().equals(uname) && !getdata.getPassword().equals(pass)){
                    request.setAttribute("error","<h2 align='center'>User not found Create acct!</h2>");
                   request.getRequestDispatcher("loginUser.jsp").include(request, response);
                } 
                else if(getdata.getUsername() =="" ) {
                    request.setAttribute("error","<h2 align='center'>Plese Enter username</h2>");
                   request.getRequestDispatcher("loginUser.jsp").include(request, response);
                }else if(getdata.getPassword() ==""){
                    request.setAttribute("error","<h2 align='center'>Enter  password</h2>");
                   request.getRequestDispatcher("loginUser.jsp").include(request, response);               
                }
          
        %>
</body>
</html>
