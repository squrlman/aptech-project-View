<%-- 
    Document   : AuctionProduct
    Created on : 09-Aug-2015, 17:27:11
    Author     : ENOW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <link rel="stylesheet" type="text/css" href="../css/userlog1.css">
        <link rel="stylesheet" type="text/css" href="../css/userlog2log.css" />
        <script src="../js/imageslide.js" ></script>
        <link rel="stylesheet" href="../css/footer.css" type="text/css"/>
        <script type="text/javascript" src="../js/jquery1.js"></script>
        <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
        <link href="../css/hover.css" rel="stylesheet" media="all">
        <script type="text/javascript" src="../js/jquery1.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
        <script type="text/javascript">

            //$(document).ready(function () {
            //  $('a').on('click', function ()
            //   {
            //        var target = $(this).attr('rel');
            //        $("#" + target).show(250).siblings("div").hide(250);

            //    });
            // });
            function show_div(form1div, themain)
            {
                if (false === $(form1div).is(':visible')) {
                    $(form1div).show(250);
                    $(themain).hide(250);
                }
                else
                {
                    $(form1div).hide(250);
                    $(themain).show(250);
                }
            }
        </script>
        <title>Auction product</title>
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

                    <div id="left-div" class="dash">
                        <h1>we are all on the left</h1>
                        <ul id="left-list">

                            <li>
                                <a href="#" class="button1 hvr-fade " onclick="show_div(form1div, themain)" rel="form1div"><span>Create Auction</span></a><!--display all ,do specific search-->
                            </li>

                            <!--<li>
                            <!--    <a href="#" class="button2 hvr-fade" rel="form2div"><span>Update Auction</span></a>
                           < </li>
                            <!--   <li>
                                   <a href="#" class="button3 hvr-fade" rel="form3div"><span>Delete Auction</span></a>
                               </li>-->
                        </ul>
                    </div>
                    <div id="mage">
                        <a href="javascript:slidelink()"><img src="logo.png" id="slide" width=100 height=56 /></a>
                        <script type="text/javascript">

                            //variable that will increment through the images
                            var step = 0
                            var whichimage = 0

                            function slideit() {
                                //if browser does not support the image object, exit.
                                if (!document.images)
                                    return;
                                document.getElementById('slide').src = slideimages[step].src;
                                whichimage = step;
                                if (step < 2)
                                    step++;
                                else
                                    step = 0;
                                //call function "slideit()" every 2.5 seconds
                                setTimeout("slideit()", 2500);
                            }

                            function slidelink() {
                                if (whichimage == 0)
                                    window.location = "link1.htm";
                                else if (whichimage == 1)
                                    window.location = "link2.htm";
                                else if (whichimage == 2)
                                    window.location = "link3.htm";
                            }

                            slideit();
                        </script>
                    </div>
                </div>
                <div id="one"  >

                    <div id="form1div" style="display:none" align="center" >
                        <form id="target" action="AuctionItem.jsp" method="post" enctype="multipart/form-data">
                            <div style="color: rgb(234,234,234)">${error}</div>
                            <table border="0" cellpadding="4" id="table" align="center">
                                <tr  align="center" valign="top">
                                    <td colspan="2">
                                        <h1><em><span><strong>  Create Auction</strong></span></em></h1>
                                    </td>              
                                </tr>
                                <tr>

                                    <td id="field">Item Name :</td>
                                    <td><input type="text" class="text" name="Itemname" placeholder="Item name" required="required" /></td>
                                </tr>
                                <tr>
                                    <td id="field">Model: </td>
                                    <td><input type="text" class="username" required="required" name="model" placeholder="model" /></td>
                                </tr>
                                <tr>
                                    <td id="field">Description:</td>
                                    <td><textarea class="username" required="required" name="Desc" placeholder="description" ></textarea></td>
                                </tr>
                                <tr>
                                    <td id="field">Image:</td>
                                    <td><input type="file" class="username"  name="myfile"  /></td>
                                </tr>
                                <tr>
                                    <td id="field">Minimum Price:</td>
                                    <td><input type="text" class="username" required="required" name="MinPrice" placeholder="min price" /></td>
                                </tr>
                                <tr>
                                    <td id="field">Reserved Price:</td>
                                    <td><input type="text" class="username" required="required" name="ResPrice" placeholder="res price" /></td>
                                </tr>
                                <tr>
                                    <td id="field">Auction Start Time :</td>
                                    <td><input type="text" class="username" required="required" name="start" placeholder="2015-10-10" /></td>
                                </tr>
                                <tr>
                                    <td id="field">Duration :</td>
                                    <td><input type="text" class="username" required="required" name="Duration" placeholder="2days" /></td>
                                </tr>
                                <tr>
                                    <td id="field">Commission Rate :</td>
                                    <td><input type="text" class="username" required="required" name="ComRate" placeholder="20%" /></td>
                                </tr>
                                
                                <tr>
                                    <td>&nbsp </td>
                                    <td><input type="submit" name="submit" class="submits" Value="submit" /></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <!--
            
                    -->
                    <div id="themain" style="display:block">
                        <h1 align="center">my present div</h1>
                        <p align="center">display result of delete bid here</p>
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
        <% }%>
    </body>
</html>
