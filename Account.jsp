<%-- 
    Document   : SingupUser
    Created on : 12-Aug-2015, 12:17:27
    Author     : ENOW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/userlog1.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <link rel="stylesheet" type="text/css" href="../css/page.css" />
        <link rel="stylesheet" href="../css/footer.css" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link rel="stylesheet" type="text/css" href="../css/userlog2log.css" />
        <title>Create Account</title>
    </head>
    <body>
         <% 
                            session =request.getSession(false);
                              if (session == null) {
                                 request.getRequestDispatcher("loginUser.jsp").include(request, response);
                                  } else {
         %>
        <div id="header">
            <div class="containers">

                <span>
                    <a href="#"><img src="../images/main.png" class="logo"></a>
                </span>

              
            </div><!--/containers-->
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
                        <li><span><a href="UserDash.jsp" class="signup">Back</a></span></li>
                    </ul>
            </div>
                    
        </div>

        <div class="box">
           
            <p class="title1">Create Account</p>
            <hr class="line" />
            <form method="post" action="AcctCreate.jsp" >
                <input type="text" class="text" name="AcctNum" required="required" placeholder="Account No."/>
                <input type="text" class="username" name="CardNo" required="required" placeholder="Card number" />
                <input type="text" class="username" name="creditLimit" required="required" placeholder="withdraw amount" />
                <input type="text" class="pass1" name="Cvv" required="required" placeholder="CVV No" />
                <input type="submit" name="submit" class="submits" Value="create" />
                  
            </form>  
           
        </div>
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
        <% } %>
    </body>
</html>
