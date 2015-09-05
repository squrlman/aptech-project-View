<%-- 
    Document   : logOut
    Created on : 15-Aug-2015, 17:14:53
    Author     : ENOW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
              
            session=request.getSession();
            if(session.getAttribute("name") !=null);
                 session.removeAttribute("name");
                 session.invalidate(); 
                 response.sendRedirect("Index.jsp");               
              
          //  session.removeAttribute("name");          
            %>
    </body>
</html>
