<%-- 
    Document   : Rset
    Created on : 01-Apr-2012, 15:49:26
    Author     : ENOW
--%>

<%@page import="Epack.resetPassword"%>
<%@page import="Epack.login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%    
           resetPassword Rseting= new resetPassword();
           login loged= new login();
           String mail=request.getParameter("email");
           loged.setPassword(request.getParameter("password"));
           loged.setPassword2(request.getParameter("password2"));
           
           int updated=Rseting.rESET(mail, loged);
               //check if updated
             if(updated !=1)
             {
                  request.setAttribute("notReset", "<h3 align='center'>Enter Correct Email And passwords must match!</h3>");
                  request.getRequestDispatcher("reset.jsp").include(request, response);
                  
             }else
             {
                  response.sendRedirect("loginUser.jsp");
             }
        %>   
    </body>
</html>
