<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
</head>
<body>
    <center>
        <h1>File Upload to Database Demo</h1>
        <form method="post" action="/Ecommerce/FileUploadDBServlet2" enctype="multipart/form-data">
            <table border="0" cellpadding="4" id="table" align="center">
                                <tr  align="center" valign="top">
                                    <td colspan="2">
                                        <h1><em><span><strong>  Create Auction</strong></span></em></h1>
                                    </td>              
                                </tr>
                                <tr>

                                    <td id="field">Item Name :</td>
                                    <td><input type="text" class="text" name="Itemname"  /></td>
                                </tr>
                                <tr>
                                    <td id="field">Model: </td>
                                    <td><input type="text" class="username" name="model" /></td>
                                </tr>
                                <tr>
                                    <td id="field">Description:</td>
                                    <td><textarea class="username" name="Desc"  ></textarea></td>
                                </tr>
                                <tr>
                                    <td id="field">Image:</td>
                                    <td><input type="file" class="username"  name="myfile"  /></td>
                                </tr>
                                <tr>
                                    <td id="field">Minimum Price:</td>
                                    <td><input type="text" class="username"name="MinPrice"  /></td>
                                </tr>
                                <tr>
                                    <td id="field">Reserved Price:</td>
                                    <td><input type="text" class="username" name="ResPrice"  /></td>
                                </tr>
                                <tr>
                                    <td id="field">Auction Start Time :</td>
                                    <td><input type="text" class="username" name="start" placeholder="2015-10-10" /></td>
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
                                    <td id="field">Auction Status:</td>
                                    <td><input type="text" class="pass1" name="status" required="required" placeholder="status" /></td>
                                </tr>
                                <tr>
                                    <td>&nbsp </td>
                                    <td><input type="submit" name="submit" class="submits" Value="submit" /></td>
                                </tr>
                            </table>
        </form>
    </center>
</body>
</html>
