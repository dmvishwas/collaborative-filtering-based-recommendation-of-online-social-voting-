
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
<h1>U-U-V metapath</h1>
<p>Voting count of U’s followers/friends with in m-hops with same latent features. (1-hop Direct friend, 2- hop Indirect friend).  </p>
<br>
<table>
<tr><td><h3>Asker Friends<td><h3>U-U-V score 
<%

Set<String> set=new HashSet<String>();
try{
			Connection con = databasecon.getconnection();
			Statement st=con.createStatement();
			Statement st2=con.createStatement();
			Statement st3=con.createStatement();
			st3.executeUpdate("delete from temp2");

			String sql="select * from friends where user1='"+email+"' ";
			ResultSet rs=st.executeQuery(sql);
			ResultSet rs2=null;
		while(rs.next()){
			
				st3.executeUpdate("insert into temp2 values('"+rs.getString("user2")+"', '1')  ");

		}
	
		rs=st.executeQuery(sql);
		while(rs.next()){
	
				rs2=st2.executeQuery("SELECT * from friends where user1='"+rs.getString("user2")+"' and user2!='"+email+"' ");
			
				while(rs2.next()){

				try{ st3.executeUpdate("insert into temp2 values('"+rs2.getString("user2")+"', '0.1')  ");} catch(Exception e){
				//System.out.println("SELECT * from friends where user1='"+rs.getString("user2")+"' and user2!='"+email+"' "+e);
				}

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
			Statement st3=con.createStatement();

			String sql="select * from temp2 ";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){

			 sql="select count(*) from votes where  latent='"+lat+"' and email='"+rs.getString(1)+"' ";
			System.out.println("sql1==="+sql);

			ResultSet rs2=st2.executeQuery(sql);
			if(rs2.next()){
			try{
				st3.executeUpdate("insert into temp values('"+vid+"','"+rs.getString(1)+"', '0','"+rs.getDouble(2)*rs2.getDouble(1)+"','0', '0', '0') "); }
				catch(Exception e){
				st3.executeUpdate("update temp set p2='"+rs.getDouble(2)*rs2.getDouble(1)+"' where email='"+rs.getString(1)+"' ");
				System.out.println("update temp set p2='"+rs.getDouble(2)*rs2.getDouble(1)+"' where email='"+rs.getString(1)+"'");	
				}
			}
			
			}
			 rs=st.executeQuery("select * from temp");
			while(rs.next()){
			%>
			<tr><td><%=rs.getString(2)%><td><%=rs.getString("p2")%>

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
<tr>
	<td bgcolor="#041115"><font size="+1" color="#8ee60d">User Friends:<td bgcolor="#041115"><font size="+1" color="#8ee60d">
	<%
	try{
			Connection con = databasecon.getconnection();
			Statement st=con.createStatement();
			
			String sql="select * from temp2 where score=1 ";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
			out.println(rs.getString(1)+"		(1-hop)<br>");
			}
			 sql="select * from temp2 where score!=1 ";
			 rs=st.executeQuery(sql);
			while(rs.next()){
			out.println(rs.getString(1)+"		(2-hop)<br>");
			}
			
			}
			catch(Exception e){
				System.out.println("22="+e);
			}
			
	%>
	
	
	
	
	<%=tmp%></td>
</tr>
</table>
<br><br><a href="process3.jsp">
<img src="images/p3.png" width="511" height="78" border="0" alt="">
</a>
<%@ include file="footer.jsp"%>
