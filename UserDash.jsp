<%-- 
    Document   : UserDash
    Created on : 09-Aug-2015, 17:47:16
    Author     : ENOW
--%>

<%@page import="Epack.connection"%>
<%@page import="java.util.List"%>
<%@page import="Epack.GetAllData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <link href="../css/hover.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="../css/footer.css" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
        <title>User Dash Board</title>
    </head>
    <body>
                           <%
                            session = request.getSession(false);
                            if (session == null) {
                                 request.getRequestDispatcher("loginUser.jsp").include(request, response);
                                  } else {
                                %>
        <div id="mainpage">
            <div id="header">
                <div class="containers">
                    <span>
                        <a href="#"><img src="../images/main.png" class="logo"></a>
                    </span>

                    <form id="search" >
                        <input type="text" class="Sname" name="name" placeholder="product name" /> <input type="submit" name="submit" class="Ssub" Value="Search" />
                    </form>


                </div><!--/container-->
            </div><!--/header>-->
            <div class="nav" >
                <div id="container">
                    <ul id="navlist">
                        <li id="hname">
                            <a href="Index.jsp" class="navhome"><span>Home </span></a>
                        </li>
                        <li id="name">
                            <a href="" class="navprod"><span>Auctions </span></a>
                        </li>
                        <li id="name">
                            <a href="BuyNowProduct.jsp" class="navprod"><span>Buy Now </span></a>
                        </li>
                        <li id="name">
                            <a href="#" class="navprod"><span>More</span></a>
                        </li>
                    </ul>

                    <div id="session">
                        <style type="text/css">
                            #session{
                                float: right;
                                margin-top: 8px;
                                margin-right: 20px;
                                color:red;
                            }
                        </style>
                        <%
                                 String name = (String) session.getAttribute("name");
                                out.println("welcome " + name);
                        %>
                    </div>
                    <ul id="logs">
                        <li><span><a href="logOut.jsp" class="signup">Sign Out</a></span></li>
                    </ul>
                </div>
            </div>
            <div class="main">
                <div class="left">

                    <div id="left-div" class="dash">
                        <h1 align="center">we are all on the left</h1>
                        <ul id="left-list">
                            <li>
                                <a href="ViewAuction.jsp" class="button1 hvr-fade "><span>View Products</span></a><!--display all ,do specific search-->
                            </li>
                            <!-- <li>
                                 <a href="PostAuction.jsp" class="button2 hvr-fade" ><span>Post product</span></a>
                             </li>
                            -->
                            <li>
                                <a href="AuctionProduct.jsp" class="button3 hvr-fade"><span>Auction Product</span></a>
                            </li>
                            <li>
                                <a href="CreditLimit.jsp" class="button4 hvr-fade"><span>Change Credit limit</span></a>
                            </li> 
                        </ul>
                    </div>
                </div>
                <div class="one" >
                    <h1 id="trends">Trending bids<span class="black">Top Deals</span></h1>
                    <ul>
                        <% 
                            String ses = (String) session.getAttribute("name");
                            GetAllData getAuc = new GetAllData();
                            List<connection> list = getAuc.GetUIsers();
                            for (connection get : list) {
                        %>
                        <li>
                            <span><a href="itemview.jsp"><img id="img1" name="ids" src="../images/one.jpg"  alt="one"></a></span><br/>                          
                            <span class="ref"><a href="#" ><%=get.getModel()%></a></span><br/>
                            <form  method="post" action="Datechecker.jsp">                           
                                    <span><%=get.getMinPrice()%></span><br/><span><a href="BidNow.jsp"  name="user">
                                    <input type="hidden" name="itmId" value="<%=get.getAcId() %>"/>
                                    <input type="hidden" name="itmname" value="<%=get.getItem()%>"/>
                                    <input type="submit"  id="bid" value="Bid Now"/>                           
                            </form>
                        </li>
                        <%  } %>
                    </ul>

                </div>
            </div><!--main-->
            <div id="footer">
                <div id="first">
                    <p id="ulo">
                        Here at <b>RataAuction</b>, we bring u the best products at the most affordable prices. sales.<br>
                        Here at <b>RataAuction</b>, we bring u the best products at the most affordable prices. sales.<br>
                    </p>
                    <ul id="ulon">
                    </ul>
                </div>
                <div id="second">
                    <span><a href="#">Report Fruad</a></span>
                    <h2>foot</h2> 
                    <p>jekaflksfnkldfndmfklefmfklffkrl
                        ihdjkenduihlejfuiehfj<br/>euifkjekfjejkfioefjioejfoefkjek</p>
                </div>
                <div id="third">
                    <h2>end</h2>
                    <p id="ulo">
                     thing that are home made depend on no body blahh blahh
                        we bring u the best products<br/>we bring u the best products</p>
                </div>
            </div>
        </div><!--mainpage-->
        <% }%>
    </body>
</html>
