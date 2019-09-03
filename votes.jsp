
<%@ include file="aheader.jsp"%>
		  <head>
<style>
table, th, td {
  border: 1px solid black;
}
th, td {
    padding: 1px;
    text-align: left;
}
</style>
</head>

<%@ page  import="java.sql.*" import="databaseconnection.*"%>


<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
//Statement st2=con.createStatement();
String sql="select * from votequery where status='new' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
%>
	<header>
												<h2>Vote Requests</h2><br><br>
													</header>

<table>
<tr><td><H3>Vid</h4><td><H3>Query<td><H3>Latent Feature</h4><td><H3>Asker</h4><td><H3>Action</h4>
<%
while(rs.next()){
%>
<tr><td><H4><%=rs.getString(1)%><td><H4><%=rs.getString(2)%><td><H4><%=rs.getString(3)%></u><td><H4><%=rs.getString(5)%><td><a href="process.jsp?id=<%=rs.getString(1)%>&&email=<%=rs.getString(4)%>&&latent=<%=rs.getString("latent")%>"><H4>Process</a>

<%

}



}
catch(Exception e){
System.out.println("11="+e);
}
%>
            </table>

<br><br><br><br>
<%@ include file="footer.jsp"%>
