
<%@ include file="aheader.jsp"%>
</div></div>
<div class="col-md-12 w3l_main_grid1_w3ls_grid w3l-news-mok">
		<h3>Nearest-Neighbor (NN)</h3>
		<div class="w3_agile_main_left_grid_w3_agileits">
<%@ page  import="java.sql.*"  import="java.util.*" import="databaseconnection.*"%>
<%
String vid=(String)session.getAttribute("vid");
String email=(String)session.getAttribute("uemail");
String lat=(String)session.getAttribute("lat");

String tmp="";

%>
		  
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
<h1>U-V-U-V metapath.</h1>
<p>Find the set of users who have participated, take count of the voting’s participated vote initiator’s previous voting’s.  </p>
<br>
<table>
<tr><td><h3>User<td><h3>U-V-U-V score 
<%

try{
			Connection con = databasecon.getconnection();
			Statement st=con.createStatement();
			Statement st2=con.createStatement();
			Statement st3=con.createStatement();
			st3.executeUpdate("delete from temp2");

			String sql="select * from temp  ";
			ResultSet rs=st.executeQuery(sql);
			ResultSet rs2=null;
		while(rs.next()){
			
				rs2=st2.executeQuery("select count(*) from votes where asker='"+email+"' and email='"+rs.getString("email")+"'");
				rs2.next();
				st3.executeUpdate("update temp set p3='"+rs2.getInt(1)+"' where email='"+rs.getString("email")+"'  ");

		}
}
catch(Exception e){
System.out.println("1="+e);
}




//out.println(set);
try{
			Connection con = databasecon.getconnection();
			Statement st=con.createStatement();
			Statement st2=con.createStatement();
			ResultSet rs=st.executeQuery("select * from temp");
			while(rs.next()){
			%>
			<tr><td><%=rs.getString(2)%><td><%=rs.getString("p3")%>

			<%}


}
catch(Exception e){
System.out.println("11="+e);
}

%>

</table>
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
<br><br><a href="process4.jsp">
<img src="images/p4.png" width="511" height="78" border="0" alt="">
</a>
<%@ include file="footer.jsp"%>
