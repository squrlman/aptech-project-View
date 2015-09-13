<%-- 
    Document   : CreditLimit
    Created on : 09-Aug-2015, 17:30:41
    Author     : ENOW
--%>

<%@page import="Epack.SearchVars"%>
<%@page import="java.util.List"%>
<%@page import="Epack.connection"%>
<%@page import="Epack.Views"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <link href="../css/hover.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="../css/footer.css" type="text/css"/>
        <script type="text/javascript" src="../js/jquery1.js"></script>
        <link rel="stylesheet" type="text/css" href="../css/userlog1.css">
        <link rel="stylesheet" type="text/css" href="../css/userlog2log.css" />
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
        <title>Credit Limit</title>
    </head>
    <body>
         <% 
          //  session =request.getSession(false); 
        if (session.getAttribute("name") == null) {
                                 request.getRequestDispatcher("loginUser.jsp").include(request, response);
                                 %>
                                <%  } else {
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
            <script type="text/javascript">
                /*
                 function show_div(formlimit,mymain)
                 {
                 if (false === $(formlimit).is(':visible')) {
                 $(formlimit).show(250);
                 // $(current).hide(250);
                 
                 $(mymain).hide(250);
                 }else  
                 {
                 $(mymain).show(250);
                 
                 $(formlimit).hide(250);
                 //   $(current).hide(250);
                 
                 }
                 }
                 */
                $(document).ready(function () {
                    $('a').on('click', function () {
                        var target = $(this).attr('rel');
                        $("#" + target).show(250).siblings("div").hide(250);
                    });
                });
            </script>
            <div class="main">
                <div class="left">
                    <h1>we are all on the left</h1>
                    <div id="left-div">

                        <ul id="left-list">
                            <li>
                                <a href="#" class="button1 hvr-fade" rel="formlimit" ><span>Update Limit</span></a><!--display all ,do specific search-->
                            </li>
                            <li>
                                <a href="#" class="button2 hvr-fade" rel="formlimit2" ><span>View current limit</span></a>
                            </li>
                            <li>
                                <a href="#" class="button3 hvr-fade" rel="formlimit3"><span>View Transactions</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="one" >
                    <div id="formlimit" style="display:none">
                        <form id="target" action="AddCredit.jsp" method="post">
                            <div style="color: rgb(234,234,234)">${nocrdt}</div>
                            <div style="color: rgb(234,234,234)">${newlimerr}</div>
                            <table border="0" cellpadding="4" id="table" align="center">
                                <tr   valign="top">
                                    <td colspan="2">
                                        <h1><em><span><strong> Update Limit</strong></span></em></h1>
                                    </td>              
                                </tr>
                                <tr>

                                    <td id="field">New Limit :</td>
                                    <td><input type="text" class="text" name="newLimit" placeholder="amount" /></td>
                                </tr>
                                <tr>

                                    <td id="field">AccountNo :</td>
                                    <td><input type="text" class="text" name="Acct" placeholder="Account num" /></td>
                                </tr>
                                <tr>
                                    <td>&nbsp </td>
                                    <td><input type="submit" name="uplmt" class="submits" Value="update" /></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <div id="formlimit2" style="display:none">                         
                        <table border="0" cellpadding="4" id="table" align="center">

                            <tr  align="center" valign="top">
                                <th colspan="2">
                            <h1><em><span><strong> Your Current Credit</strong></span></em></h1>
                            </th>              
                            </tr>
                            <tr>
                                <th>Account Number</th>
                                <th>Credit Limit</th>
                            </tr>
                            <%

                                String ses = (String) session.getAttribute("name");

                                Views crdt = new Views();
                                List<SearchVars> mcrdts = crdt.VcurrentCdtLimit(ses);
                             // int size= mcrdts.size(); gets the number of values in the list as an integer
                              
                                for (SearchVars getcdt : mcrdts) {
                            %>
                            <tr>
                                <td><%=getcdt.getAccnt()%></td>
                                <td><%=getcdt.getNewlimit()%></td>

                            </tr>
                            <% } %>
                        </table>

                    </div>
                    <div id="formlimit3" style="display:none">                         
                        <table border="0" cellpadding="4" id="table" align="center">

                            <tr  align="center" valign="top">
                                <th colspan="2">
                            <h1><em><span><strong> Your Transactions</strong></span></em></h1>
                            </th>              
                            </tr>
                            <tr>
                                <th> Item Bought</th>
                                <th> Price</th>
                            </tr>
                            <%
                                //String sess = (String) session.getAttribute("name");

                                Views vtran = new Views();
                                List<SearchVars> mtran = vtran.Vtansactions(ses);
                                for (SearchVars gettran : mtran) {
                            %>
                            <tr>
                                <td><%=gettran.getTranName()%></td>
                                <td><%=gettran.getTransprc()%></td>
                            </tr>
                            <% }%>
                        </table>

                    </div>
                    <div id="mymain" style="display:block">
                        hjnfdsjfndkjsfndsjkfdskjfdsjkfdskjf
                        dfdsfdsfdsfds
                    </div>
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
