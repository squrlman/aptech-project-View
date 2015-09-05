<%-- 
    Document   : PostAuction
    Created on : 09-Aug-2015, 17:42:04
    Author     : ENOW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../css/page.css">
<script type="text/javascript" src="../js/jquery1.js"></script>
<link href="../css/hover.css" rel="stylesheet" media="all">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
<!--
  <script type="text/javascript">
  $(document).ready(function () {
    $("#showdiv").click(function () {
       $("#hiddendiv").show();             
    });
  });
  $(document).ready(function () {
    $("#showdiv2").click(function () {
       $("#hiddendiv2").show();             
    });
  });
  function setVisibility(id, visibility) {
document.getElementById(id).style.display = visibility;
}
</script>
-->
<script type="text/javascript">
/*
function show_div(div_id)
    {
      if (false ==$(div_id).is(':visible')) {
     $(div_id).show(250);
      }
   else
    {
       $(div_id).hide(250);
    }
  }

function show_div2(div_id2)
    {
 if (false ==$(div_id2).is(':visible')) {
  $(div_id2).show(250);
     /* jquery('#div_id').replaceWith(jquery('#div_id2')
    }
 else
 {
  $(div_id2).hide(250);
  }
}
*/
$(document).ready(function () {
        $('a').on('click', function(){
          var target = $(this).attr('rel');
           $("#"+target).show(250).siblings("div").hide(250);
        });
  });
  </script>
  <title>Post Auction</title>
    </head>
    <body>
         <% 
            session =request.getSession(false); 
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
      <span><input type="text" name="searchfiled"> <input type="submit" value="Search"></span>
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
  <h1>we are all on the left</h1>
  <div id="left-div">
    
    <ul id="left-list">
           <li>
                <a href="javascript: void(0)" class="button1 hvr-fade" rel="form2div"><span>Modify Bid</span></a><!--display all ,do specific search-->
             </li>
             <li>
                <a href="javascript: void(0)" class="button2 hvr-fade" rel="form1div" ><span>Post Bid</span></a>
             </li>
             <li>
                <a href="#" class="button3 hvr-fade" rel="form3div"><span>Delete Bid</span></a>
             </li>
    </ul>
  </div>
</div>
   <div class="one" >
      <!--<button class="button" onclick="$('#target').toggle();">Click to toggle!</button>-->
<div id="form2div" style="display:none" align="center">
   <FORM id="target" action="modifybid.jsp" method="post" enctype="multipart/form-data">
       <table border="0" cellpadding="4" id="table" align="center">
           <tr align="center" valign="top">
               <td colspan="2">
               <h1 id="fh1"><em><span><strong>Modify Your Bid</strong></span></em></h1>
               </td>              
           </tr>
           <tr>
             <td id="field">Name :</td>
             <td><input type="text" name="name"></td>
           </tr>
           <tr>
             <td id="field">Age : </td>
             <td><input type="text" name="name"></td>
           </tr>
           <tr>
              <td id="field">Gender:
               <td><input type="text" name="name"/></td>
           </tr>
           <tr>
             <td>&nbsp </td>
             <td><input type="submit" name="name" id="sub" value="submit"></td>
           </tr>
       </table>
    </FORM>
</div>
<div id="form1div" style="display:none" align="center">
   <FORM id="target" action="#postbid.jsp" methos="post" enctype="multipart/form-data">
       <table border="0" cellpadding="4" id="table" align="center">
           <tr  align="center" valign="top">
               <td colspan="2">
               <h1><em><span><strong>Post Bid</strong></span></em></h1>
               </td>              
           </tr>
           <tr>
             <td id="field">Item Name :</td>
             <td><input type="text"name="Item"></td>
           </tr>
           <tr>
             <td id="field">Category : </td>
             <td><input type="text" name="Cat"></td>
           </tr>
           <tr>
              <td id="field">Description:</td>
               <td><input type="text" name="Desc"/></td>
           </tr>
           <tr>
             <td id="field">Reserved Price:</td>
             <td><input type="text"name="ResPrice"></td>
           </tr>
           <tr>
             <td id="field">Bid Price :</td>
             <td><input type="text"name="Bidprice"></td>
           </tr>
           <tr>
             <td id="field">Commission Rate :</td>
             <td><input type="text"name="CRate"></td>
           </tr>
           <tr>
             <td>&nbsp </td>
             <td><input type="submit" name="submit" id="sub"  value="submit"></td>
           </tr>
       </table>
    </FORM>
</div>
<div id="form3div" style="display:none" align="center">
   <FORM id="target" action="#deletbidt.jsp" methos="post">
       <table border="0" cellpadding="4" id="table" align="center">
           <tr  align="center" valign="top">
               <td colspan="2">
               <h1><em><span><strong>Delete Bid</strong></span></em></h1>
               </td>              
           </tr>
           <tr>
             <td id="field">Item Name :</td>
             <td><input type="text"name="name"></td>
           </tr>
           <tr>
             <td id="field">Category : </td>
             <td><input type="text" name="category"></td>
           </tr>
           <tr>
              <td id="field">Description:</td>
               <td><input type="text" name="description"/></td>
           </tr>
           <tr>
             <td id="field">Reserved Price:</td>
             <td><input type="text" name="Rprice"></td>
           </tr>
           <tr>
             <td id="field">Bid Price :</td>
             <td><input type="text"name="Bprice"></td>
           </tr>
           <tr>
             <td id="field">Commission Rate :</td>
             <td><input type="text"name="C0"></td>
           </tr>
           <tr>
             <td>&nbsp </td>
             <td><input type="submit" name="name" id="sub"  value="submit"></td>
           </tr>
       </table>
    </FORM>
</div>
<div id="themain" style="display:block">
  <h1 align="center">my present div</h1>
  <p align="center">display result of delet bid here</p>
</div>
   </div>
</div><!--main-->
<div id="footer">
<h2>foot</h2> 
<p>jekaflksfnkldfndmfklefmfklffkrl</p><br/>
<p>ihdjkenduihlejfuiehfjeuifkjekfjejkfioefjioejfoefkjek</p>
</div>
</div><!--mainpage-->
<% } %>
</body>
</html>
