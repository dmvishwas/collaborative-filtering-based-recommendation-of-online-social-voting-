
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
String tmp2="";


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
<h1>Combined Neighborhoods</h1>
<p>Hybrid Approach is the combination of UGUV, UUV(m-hop), UVUV, and UNN approaches.</p>

<br>


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


<br><br><br><br>

<table>
<tr><td><h3>User<td><h3>UGUV score<td><h3>UUV score<td><h3>UVUV score<td><h3>UNN score<td><h3>Score u 
<%
try{
			Connection con = databasecon.getconnection();
			Statement st=con.createStatement();
			
			

					st.executeUpdate("update temp set score=p1+p2+p3+p4 where email=email and vid=vid");
				
			
}
catch(Exception e){
System.out.println("1="+e);
}




//out.println(set);
try{
			Connection con = databasecon.getconnection();
			Statement st=con.createStatement();
			Statement st2=con.createStatement();
			ResultSet rs=st.executeQuery("select * from temp order by score desc");
			while(rs.next()){
			%>
			<tr><td><%=rs.getString(2)%><td><%=rs.getString("p1")%><td><%=rs.getString("p2")%>
			<td><%=rs.getString("p3")%>
			<td><%=rs.getString("p4")%>
			<td><b><%=rs.getString("score")%>

			<%}


}
catch(Exception e){
System.out.println("11="+e);
}

%>
</table>
<br><br>
<img src="images/p6.png" width="511" height="78" border="0" alt="">


<form method="post" action="process6.jsp">
<br><br><br><h2>Threshold Value</h3><br>
<input type="number" step="0.1"  min="0.0" name="tvalue">
		<input type="submit" value="Initiate Query">
	</form>	


<%@ include file="footer.jsp"%>
