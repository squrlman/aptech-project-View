<%-- 
    Document   : PostBid
    Created on : 10-Aug-2015, 18:22:13
    Author     : ENOW
--%>

<%@page import="Packages.Bidcheck"%>
<%@page import="Packages.biddata"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            biddata bdta = new biddata();
            //get bid amt frm user

            bdta.setAmount(Float.valueOf(request.getParameter("amount")));
            int id = Integer.valueOf(request.getParameter("itemid"));
            String Iname = request.getParameter("itemname");
            Bidcheck mainbid = new Bidcheck();
            //get userid from session
            String sesname = (String) session.getAttribute("name");
            float mybids = bdta.getAmount();
            int acctck = mainbid.getUser(sesname);

            //check if account is forun
            if (acctck == -1) {
                request.getRequestDispatcher("Account.jsp").include(request, response);
                //response.sendRedirect("Account.jsp");
            } else {
                boolean nbid = mainbid.Bidcheck(mybids);
                //if number if valid ie greater than 0.0
                if (nbid == true) {
                    int ready = mainbid.getToCheck(mybids, id);

                    if (ready == 1)//if price is greater than min price allow to bid
                    {
                        //then insert bid 
                        mainbid.insertBid(mybids, sesname, Iname);
                        response.sendRedirect("UserDash.jsp");
                    } else if (ready == 2) {
                        //if bid <rprice and bid < minprice 
                        //increase ur bid
                        request.setAttribute("lessbid", "<h2 align='center'>increase Bid Please</h2>");
                        request.getRequestDispatcher("BidNow.jsp").include(request, response);
                        // response.sendRedirect("BidNow.jsp");
                    } else //if min price >climit and climit is zero and minprice is  zero
                    {
                        //increase credit
                        request.setAttribute("nocrdt", "<h3 align='center'>Add your credit</h3>");
                        request.getRequestDispatcher("CreditLimit.jsp").include(request, response);
                        //response.sendRedirect("CreditLimit.jsp");
                    }

                } else {
                    //if amt <0.0 create account
                    response.sendRedirect("SignupUser.jsp");
                }
            }
        %>   
    </body>
</html>
