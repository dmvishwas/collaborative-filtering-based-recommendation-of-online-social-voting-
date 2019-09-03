
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
<h1>UNN </h1>
<p>Set of NNs of user u in the user latent feature space, and the NNs of user u are weighted according to their similarity sim(u, v) with user u.</p>
<br>
<table>
<tr><td><h3>User<td><h3>UNN score 
<%
try{
			Connection con = databasecon.getconnection();
			Statement st=con.createStatement();
			Statement st2=con.createStatement();
			Statement st3=con.createStatement();
			ResultSet rs=null;
			ResultSet rs2=null;
			ResultSet rs3=null;
			
			
			rs=st.executeQuery("select * from temp");
			while(rs.next()){
				 tmp2="";

			int tmp=0;
		//	System.out.println("q1=======select distinct(latent) from votequery where uemail='"+email+"'	");
					rs2=st2.executeQuery("select distinct(latent) from votequery where uemail='"+email+"'	");
					while(rs2.next()){
					tmp2=tmp2+rs2.getString(1)+";	";
						rs3=st3.executeQuery("select count(*) from votes where latent='"+rs2.getString(1)+"' and email='"+rs.getString("email")+"'");

						System.out.println("select count(*) from votes where latent='"+rs2.getString(1)+"' and email='"+rs.getString("email")+"'");

						if(rs3.next()){
						tmp=tmp+rs3.getInt(1);
						}	
					st3.executeUpdate("update temp set p4='"+tmp+"' where email='"+rs.getString("email")+"'  ");
					}
				
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
			<tr><td><%=rs.getString(2)%><td><%=rs.getString("p4")%>

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
	<td colspan=3 bgcolor="#041115"><font size="+1" color="#8ee60d">Latent Feature: <%=tmp2%></td>
</tr>

	
	
	
	
</table>
<br><br><a href="process5.jsp">
<img src="images/p5.png" width="511" height="78" border="0" alt="">
</a>
<%@ include file="footer.jsp"%>
