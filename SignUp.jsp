<%@page import="Epack.Accounts"%>
<%@page import="java.sql.Date"%>
<%@page import="Epack.connection"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Epack.login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp</title>
    </head>
    <body>

        <%

            login getdetails = new login();
            Accounts gtmthd = new Accounts();
            // Connection con = null;
            PreparedStatement pstm = null;
            getdetails.setUsername(request.getParameter("username"));
            getdetails.setPassword(request.getParameter("password"));
            getdetails.setEmail(request.getParameter("email"));
            getdetails.setName(request.getParameter("name"));
            getdetails.setAddress(request.getParameter("address"));
            getdetails.setPassword2(request.getParameter("password2"));
            getdetails.setContact(request.getParameter("contact"));

            String Usr = getdetails.getUsername();
            String Nme = getdetails.getName();
            String Eml = getdetails.getEmail();
            String Add = getdetails.getAddress();
            String Psw = getdetails.getPassword();
            String P2 = getdetails.getPassword2();
            String Cont = getdetails.getContact();
            int inside = gtmthd.iNewUser(Usr, Nme, Eml, Add, Psw, Cont, P2);

            if (inside == 1) {

                request.getRequestDispatcher("loginUser.jsp").include(request, response);
            }

            request.getRequestDispatcher("SingupUser.jsp").include(request, response);

        %>
    </body>
</html>
