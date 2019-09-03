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
String sql="select * from votequery where uemail='"+email+"'  and status='done' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
%>
	<header>
												<h2>View Questions & Answers</h2><br><br>
													</header>

<%
int i=0;
while(rs.next()){
String[] res=Details.main3(rs.getString(1));
%>

	<h2><%=++i%>) &nbsp;<%=rs.getString("query")%></h2><br>
<font size="+1" color="#3d9c98">Latent Feature: <%=rs.getString("latent")%>
</font>
<br><br>
<h1><font size="" color="green"><%=res[0]%>&nbsp;<i class="fa fa-thumbs-o-up" aria-hidden="true"></i></font>
<font size="" color="red"><%=res[1]%>&nbsp;<i class="fa fa-thumbs-o-down" aria-hidden="true"></i></font>

<%

}



}
catch(Exception e){
System.out.println("11="+e);
}
%>
            </table>


<%@ include file="footer.jsp"%>