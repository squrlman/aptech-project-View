<%-- 
    Document   : Index
    Created on : 09-Aug-2015, 17:39:04
    Author     : ENOW
--%>

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
        <link rel="stylesheet" href="../css/viewItem.css" type="text/css"/>
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
                            <a href="#BuyNow.jsp" class="navprod"><span>Buy Now </span></a>
                        </li>
                        <li id="name">
                            <a href="#More.jsp" class="navprod"><span>More</span></a>
                        </li>
                    </ul>
                    <ul id="logs">
                        <li><span><a href="logOut.jsp" class="login">SignOut</a></span></li>
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
                    <div id="wrp">
                    <div id="contright">
                        <%
                          // request.
                            Views gtItm= new Views();
                            List<connection> itemList = gtItm.Vitem(1);
                            for (connection viw : itemList){
                                
                        %>
                        <table border="0" cellpadding="2">
                            <tr>
                                <td colspan="2" >
                                    <h1 >Details</h1>
                                </td>
                            </tr>
                            <tr>
                                <td>price :</td>
                                <td><%=viw.getMybidf() %></td>
                            </tr>
                             <tr>
                                <td>bid starts at :</td>
                                <td><%=viw.getStart() %></td>
                            </tr>
                             <tr>
                                <td>current bid :</td>
                                <td><%=viw.getMybidf()%></td>
                            </tr>
                             <tr>
                                 <td>&nbsp;</td>
                                 <td><a href="#">BUY NOW</a></td>
                            </tr>
                           
                        </table>
                        <hr>
                        <p>This is a 1998 Bordeuax French Wine<br>
                        The return value is the same for both forms. If the List contains the search key,
                        its index is returned. If not, the return value is (-(insertion point) - 1),
                        where the insertion point is the point at which the value would be inserted 
                        into the List, or the index of the first element greater than the value 
                        or list.size() if all elements in the List are less than the specified value.<p>
                        This admittedly ugly formula guarantees that the return value will be >= 0 if and only
                        </p>
                         <% } %>
                    </div>
                    <div id="imgleft">
                        <ul>
                            <li>
                            <span><a href="#"><img id="img1" src="../images/one.jpg"  alt="two"></a></span><br/>
                            <span class="ref"><a href="#">iphone 6s</a></span><br/>
                            <span>Available :3</span><br/><span><a href="loginUser.jsp" id="bid">Bid Now</a></span>
                        </li>
                        </ul>
                    </div>
                    </div>
                   
                </div>
            </div><!--main-->
            <div id="fot">
                <div class="mines">
                L;F,VBFSL;B;LFMBF;LDBM;LFDBM;<br>FDLMBDF;LBMD;BD;BMDF;L<br>KDKSJVNFKJVNFDKJBNFDKJB<br>NFDKJBFKJBFD
                K FVSF VKJFVBKJFB <br>KFBFKVNDPVJWRPOGJREJWNO<br>KKKKjngioerjgreoigrjknbteoibte<br>
                <div>
            </div>
        </div><!--mainpage-->
    </body>
</html>
