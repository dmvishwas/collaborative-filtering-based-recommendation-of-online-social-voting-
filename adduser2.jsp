<%@ include file="uheader.jsp"%>
<br><br><br>
<h2>Search Results</h3>
<h4>Click to add to '<%=session.getAttribute("gn")%>' group</h3>
<br><br>
<table cellspacing="20">
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
String sql="select * from users where email like '%"+request.getParameter("user")+"%' and email!='"+session.getAttribute("email")+"'  ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
%>

<tr><td>
								<p><%=rs.getString(2)%></h4>
								<p><%=rs.getString("email")%></p>

								<p><%=rs.getString("tele")%></p>
							<a href="adduser3.jsp?email=<%=rs.getString("email")%>&&name=<%=rs.getString(2)%>"><img src="view.jsp?id=<%=rs.getString("email")%>" width="320" height="200" alt=""/></a>

<%}
}
catch(Exception e){
System.out.println("Exception Occured"+e);}


%>
</table>
			   
<%@ include file="footer.jsp"%>