<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" %>
<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Thank You!!')</script>");
	}
 %>

<%

try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
//Statement st2=con.createStatement();
String sql="select * from votemap where user='"+email+"'  and status='non' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
%>
	<header>
												<h2>Vote Recommendations </h2><br><br><br>
													</header>

<%
int i=0;
while(rs.next()){
%>

	<h2><%=++i%>) &nbsp;<%String[] que=Details.main(rs.getString(1));%>
<font size="" color=""><%=que[0]%>
</font></h2><br>
<font size="+1" color="#6dc7c2"><b>Latent Feature: <%=que[3]%>
<font size="+1" color="#dc0e85"><b>Vote Initiated by: <%=que[2]%>
</font><br><br>
<a href="response.jsp?vid=<%=rs.getString(1)%>&&ans=L"><h1><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>&nbsp;&nbsp;&nbsp;
<a href="response.jsp?vid=<%=rs.getString(1)%>&&ans=D"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a>
</h1>


<%

}



}
catch(Exception e){
System.out.println("11="+e);
}
%>
            </table>


<%@ include file="footer.jsp"%>