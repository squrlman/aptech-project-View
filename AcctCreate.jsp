<%-- 
    Document   : AcctCreate
    Created on : 18-Aug-2015, 14:44:38
    Author     : ENOW
--%>

<%@page import="Epack.Accounts"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Epack.connection"%>
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
            
           
          login getacct =new login(); 
          getacct.setAcctNum(Integer.valueOf(request.getParameter("AcctNum")));    
          getacct.setCVV_No(Integer.valueOf(request.getParameter("Cvv")));
          getacct.setCardNum(request.getParameter("CardNo"));
          getacct.setCreditlimit(Float.valueOf(request.getParameter("creditLimit")));
          Accounts insert= new Accounts();
          //get
         int ac=getacct.getAcctNum();
         float crdl=getacct.getCreditlimit();
         int cvv=getacct.getCVV_No();
         String getsesname=(String)session.getAttribute("name");
         String crdno=getacct.getCardNum();
         //
        int ins=  insert.iSNSERTacct(ac, crdl, cvv, getsesname, crdno);
     
           if(ins ==1)
           {
               //request.setAttribute("success","<h2 style='color:rgb(234,234,234);'>your account has been created</h2>");
               response.sendRedirect("UserDash.jsp");
           }else
           {
               request.setAttribute("error","<h2 style='color:rgb(234,234,234);'>fill information correctly</h2>");
           }
        
        %>    
    </body>
</html>
