<%-- 
    Document   : Index
    Created on : 09-Aug-2015, 17:39:04
    Author     : ENOW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/page.css">
        <link href="../css/hover.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="../css/popup.css" type="text/css"/>
        <link rel="stylesheet" href="../css/footer.css" type="text/css"/>
        <script src="../js/imageslide.js" ></script>
        <script type="text/javascript" src="jquery1.js"></script>
        <script type="text/javascript" src="../js/jquery1.js"></script>
        <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
        <title>Home</title> 
    </head>
    <body>
        <div id="mainpage">
            <div id="header">
                <div class="containers">
                    <span>
                        <a href="#"><img src="../images/main.png" class="logo"></a>
                    </span>
                    <div id="search">
                        <form  >
                            <input type="text" class="Sname" name="name" placeholder="product name" /> <input type="submit" name="submit" class="Ssub" Value="Search" />
                            <!-- <input type="submit" value="Search"></span>-->
                        </form>
                    </div>

                </div><!--/container-->
            </div><!--/header>-->
            <div class="nav" >
                <div id="container">
                    <ul id="navlist">
                        <li id="hname">
                            <a href="Index.jsp" class="navhome"><span>Home </span></a>
                        </li>
                        <li id="name">
                            <a href="#Auctions.jsp" class="navprod"><span>Auctions </span></a>
                        </li>
                        <li id="name">
                            <a href="BuyNowProduct.jsp" class="navprod"><span>Buy Now </span></a>
                        </li>
                        <li id="name">
                            <a href="#More.jsp" class="navprod"><span>More</span></a>
                        </li>
                    </ul>
                    <ul id="logs">
                        <li><span><a href="loginUser.jsp" class="login">Login</a></span></li>
                        <li><span><a href="SingupUser.jsp" class="login">SignUp</a></span></li>
                    </ul>
                </div>
            </div>
            <div class="main"> 
                <div class="left">
                    <div id="left-div">
                        <div class="frm" align="center">
                            <form method="post" action="SignUp.jsp" >
                                <h1><span>Search Filter</span></h1>
                                <input type="text" class="prodname" name="name" placeholder="product name" />
                                <input type="text" class="selcat" required="required" name="email" placeholder="category" />
                                <input type="text" class="selp" name="username" required="required" placeholder="price" />
                                <input type="submit" name="submit" class="submits" Value="Search" />
                            </form> 
                        </div>
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
                <div class="one" >
                    <h1 id="trends">Trending bids<span class="black">Top Deals</span></h1>
                    <ul>
                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg"  alt="one"></a></span><br/>
                            <span class="ref"><a href="#" >Body spay for men</a></span><br/>
                            <span>Available :2</span><br/><span ><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>   
                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg" id="img3"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">Body lotion</a></span><br/>
                            <span>Available :7</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>
                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg"  id="img3"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">Nike jordan</a></span><br/>
                            <span>Available :3</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>
                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg" id="img3"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">Motorola droid </a></span><br/>
                            <span>Available :3</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>
                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg" id="img3"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">Samsung Galaxy note3</a></span><br/>
                            <span>Available :3</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>
                        </br>
                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg" id="img3"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">Body lotion</a></span><br/>
                            <span>Available :7</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>
                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg" id="img3"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">Nike jordan</a></span><br/>
                            <span>Available :3</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>

                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg" id="img3"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">Motorola droid </a></span><br/>
                            <span>Available :3</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>

                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg" id="img3"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">Samsung Galaxy note3</a></span><br/>
                            <span>Available :3</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>
                        <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg" id="img3"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">iphone 6s</a></span><br/>
                            <span>Available :3</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>

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
    </body>
</html>
