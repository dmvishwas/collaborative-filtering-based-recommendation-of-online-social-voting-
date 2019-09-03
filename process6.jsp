
<%@ include file="aheader.jsp"%>

</div></div>
<div class="col-md-12 w3l_main_grid1_w3ls_grid w3l-news-mok">
		<h3>Nearest-Neighbor (NN)</h3>
		<div class="w3_agile_main_left_grid_w3_agileits">

<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*"  %>

	  <head>
<style>
table, th, td {
  border: 1px solid ;
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head>
<%
String vid=(String)session.getAttribute("vid");
String email=(String)session.getAttribute("uemail");
String lat=(String)session.getAttribute("lat");
String tmp2="";

%>

<h1>Query is forwarded to:</h3>
<br><br>

<table width="100%">
<tr>
	<td colspan=3 bgcolor="#041115"><font size="+1" color="#8ee60d">Vid: <%=vid%></font></td>
</tr>
<tr>
<%
String[] res=Details.main(vid);
%>
	<td colspan=3 bgcolor="#041115"><font size="+1" color="#8ee60d">Query: <%=res[0]%></td>
</tr>

<tr>
	<td colspan=3 bgcolor="#041115"><font size="+1" color="#8ee60d">User: <%=email%></td>
</tr>
<tr>
	<td colspan=3 bgcolor="#041115"><font size="+1" color="#8ee60d">Latent Feature: <%=lat%></td>
</tr>

	
	
	
	
</table>
<br><br>
<table>
<tr><td><h3>User (v)<td><h3>Vote Id <td><h3>Score<td><h3>Action

<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();

st2.executeUpdate("update votequery set status='done' where vid ='"+vid+"' ");


String sql="select * from temp where score >='"+request.getParameter("tvalue")+"'  order by score desc";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
while(rs.next()){	
	%>
	<tr><td><%=rs.getString(2)%><td><%=vid%>
	<td><%=rs.getString("score")%><td>Forwarded

		
<%
st2.executeUpdate("insert into votemap values ('"+vid+"','"+email+"','"+rs.getString(2)+"','non')");

}


}

catch(Exception e){
System.out.println("11="+e);
}
%>
</table>

<%@ include file="footer.jsp"%>
