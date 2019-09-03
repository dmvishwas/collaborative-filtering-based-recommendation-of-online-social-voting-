
<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%@ include file="header.jsp"%>

<%
String email=request.getParameter("id");
session.setAttribute("email",email);
%>

<form  action="upload2.jsp" ENCTYPE="multipart/form-data" method="post" >   
	<table width="60%" align="center">
<tr>
<td><img src="images/photo_upload1.png" width="50" height="50" border="0" alt=""><font size="+2" color="#37c0fb"><b><h2>Upload your  Pic </font>

</tr>
  <tr>
	<td><br><input type="file" name="pic" accept="image/*"></td>
  </tr>
  <tr>
	<td><br><input type="submit" value="Upload"></td>
  </tr>
  </table>

</form>
</h2>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>