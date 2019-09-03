<%@ include file="uheader.jsp"%>

<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%String name=(String)session.getAttribute("name");%>

<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();


String sql="insert into votequery(query, latent,  uemail, uname) values('"+request.getParameter("query")+"','"+request.getParameter("latent")+"', '"+email+"','"+name+"')";
System.out.println(sql);
st.executeUpdate(sql);

response.sendRedirect("initiate.jsp?id=succ");


}
catch(Exception e){
	System.out.println("00000000"+e);
}
%>