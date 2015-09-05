<%-- 
    Document   : ViewAuction
    Created on : 09-Aug-2015, 17:33:17
    Author     : ENOW
--%>
<%@page import="Packages.SearchVars"%>
<%@page import="Packages.MainSearch"%>
<%@page import="Packages.login"%>
<%@page import="Packages.biddata"%>
<%@page import="Packages.Views"%>
<%@page import="java.util.List"%>
<%@page import="Packages.connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <link rel="stylesheet" href="../css/footer.css" type="text/css"/>
        <link href="../css/hover.css" rel="stylesheet" media="all">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
        <title>View Auctions</title>

    </head>
    <body>
         <% 
            
        if (session.getAttribute("name") == null) {
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
                            <a href="#" class="navprod"><span>Buy Now </span></a>
                        </li>
                        <li id="name">
                            <a href="#" class="navprod"><span>More</span></a>
                        </li>
                    </ul>
                    <ul id="logs">       
                        <li><span><a href="logOut.jsp" class="signup">Sign Out</a></span></li>
                        <li><span><a href="UserDash.jsp" class="">Back</a></span></li>
                    </ul>
                </div>
            </div>
            <div class="main">
                <div class="left">
                    <div id="left-div">
                        <div class="frm" align="center">
                            <form method="post" action="MainSearch.jsp" >
                                <h1><span>Search Filter</span></h1>
                                <input type="text" class="prodname" name="names" placeholder="product name" />
                                <input type="text" class="selcat" name="email" placeholder="category" />
                                <input type="text" class="selp" name="price" placeholder="price" />
                                <input type="submit" name="submit" class="submits" Value="Search" />
                            </form> 
                        </div>
                    </div>
                </div>
                <div class="one" >
           
                        <ul>

                            <%                        //    login gtnme= new login();
                                //  biddata gtamt=new biddata();
                                String ses = (String) session.getAttribute("name");
                               

                                Views aucts = new Views();
                                List<connection> muacts = aucts.Vauctions(ses);
                                for (connection gt : muacts) {
                            %>
                            <li>
                                <span><a href="#"><img id="img1" src="../images/one.jpg"  alt="one"></a></span><br/>
                                <span class="ref"><a href="#" ><%=gt.getItem()%></a></span><br/>
                                <span><%=gt.getDesc()%></span><br/><span ><%=gt.getMinPrice()%></span>
                            </li>
                            <%  }%>
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
        <% } %>
    </body>
</html>
