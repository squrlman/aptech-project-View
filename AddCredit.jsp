<%-- 
    Document   : AddCredit
    Created on : 22-Aug-2015, 16:59:33
    Author     : ENOW
--%>

<%@page import="Epack.login"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="Epack.SearchVars"%>
<%@page import="Epack.Bidcheck"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            //session= request.getSession();
            SearchVars gtvars = new SearchVars();
            Bidcheck ADDlmt = new Bidcheck();
            login gtac= new login();
            gtvars.setNewlimit(Float.valueOf(request.getParameter("newLimit")));
            gtac.setAcctNum(Integer.valueOf(request.getParameter("Acct")));
            int acct=gtac.getAcctNum();
            float toAdd = gtvars.getNewlimit();
            String sesname =(String)session.getAttribute("name");
            int added = ADDlmt.insertNewCredit(toAdd, sesname,acct);
            
             if(added == 1)
             {
                 //response.sendRedirect("CreditLimit.jsp");
                 // JOptionPane.showMessageDialog(null, "Image Successfully Uploaded to Database");
                  request.getRequestDispatcher("UserDash.jsp").include(request, response);
             }
             else{
                     //response.sendRedirect("CreditLimit.jsp");
                  request.setAttribute("newlimerr","<h3 align='center'>enter valid amount</h3>");
                 request.getRequestDispatcher("CreditLimit.jsp").include(request, response);
             }
            
            
         %>   
    </body>
</html>
