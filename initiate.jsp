<%@ include file="uheader.jsp"%>

	                  <%
                                                       String message=request.getParameter("id");
                                                       
													   
													   if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Vote Initiated Successfully '); </script>");
                                                       }

			    %>
			
										
<%
int count=1;
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from latent");
%>	
<header>
												<h2>Initiate Voting</h2><hr><br><br>
											</header>
			<form method="post" action="initiate2.jsp">

	<br><table width="50%">
<tr>
	<td><input type="text" name="query" placeholder="Your Query?" required>
<tr>
	<td><br><h3>Latent Feature<font color="black">
<select name="latent" >
<%
while(rs.next()){
%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%>

<%
}
%>
</select>
<tr><td>
<br>
 <input type="submit" value=" Query">
</td>
</tr>
</table>
</form><br><br><br><br><br>
<%@ include file="footer.jsp"%>