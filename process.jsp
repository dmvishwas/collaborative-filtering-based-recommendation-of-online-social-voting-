

<%@ include file="aheader.jsp"%>
</div></div>
<div class="col-md-12 w3l_main_grid1_w3ls_grid w3l-news-mok">
		<h3>Nearest-Neighbor (NN)</h3>
		<div class="w3_agile_main_left_grid_w3_agileits">

<%@ page  import="java.sql.*"  import="java.util.*" import="databaseconnection.*"%>
<%
String vid=request.getParameter("id");
String email=request.getParameter("email");
String lat=request.getParameter("latent");
session.setAttribute("vid",vid);
session.setAttribute("uemail",email);
session.setAttribute("lat",lat);
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
<h1>U-G-U-V metapath</h1>
<p>Count of Pi Voting Latent Feature of v (target user) of group’s of user u (vote initiator)</p>
<br>
<table>
<tr><td><h3>Asker Group's Member<td><h3>U-G-U-V score 
<%

Set<String> set=new HashSet<String>();
try{
			Connection con = databasecon.getconnection();
			Statement st=con.createStatement();
			Statement st2=con.createStatement();
			Statement st3=con.createStatement();
			st3.executeUpdate("delete from temp");

			String sql="select * from groups where uemail='"+email+"' ";
			ResultSet rs=st.executeQuery(sql);
			ResultSet rs2=null;
		while(rs.next()){
				tmp=tmp+rs.getString("gname")+";	";
				rs2=st2.executeQuery("SELECT * from GROUPS where gname='"+rs.getString("gname")+"' and uemail!='"+email+"' ");

				while(rs2.next()){
				set.add(rs2.getString("uemail"));
					}
	
}
}
catch(Exception e){
System.out.println("11="+e);
}
//out.println(set);
try{
			Connection con = databasecon.getconnection();
			Statement st=con.createStatement();
			Statement st2=con.createStatement();

for(String usr:set){

			String sql="select count(*) from votes where email!='"+email+"' and latent='"+lat+"' and email='"+usr+"' ";
			ResultSet rs=st.executeQuery(sql);
			if(rs.next()){
			st2.executeUpdate("insert into temp values('"+vid+"','"+usr+"','"+rs.getInt(1)+"', '0','0', '0', '0') ");
			}else{
			st2.executeUpdate("insert into temp values('"+vid+"','"+usr+"','0', '0', '0', '0', '0') ");
			
			}
}
			ResultSet rs=st.executeQuery("select * from temp");
			while(rs.next()){
			%>
			<tr><td><%=rs.getString(2)%><td><%=rs.getString("p1")%>

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
	<td bgcolor="#041115"><font size="+1" color="#8ee60d">Vid: <%=vid%></font></td>
</tr>
<tr>
<%
String[] res=Details.main(vid);
%>
	<td colspan=3 bgcolor="#041115"><font size="+1" color="#8ee60d">Query: <%=res[0]%></td>
</tr>

<tr>
	<td bgcolor="#041115"><font size="+1" color="#8ee60d">User: <%=email%></td>
</tr>
<tr>
	<td bgcolor="#041115"><font size="+1" color="#8ee60d">Latent Feature: <%=lat%></td>
</tr>
<tr>
	<td bgcolor="#041115"><font size="+1" color="#8ee60d">User Groups: <%=tmp%></td>
</tr>
</table>
<br><br><a href="process2.jsp">
<img src="images/p2.png" width="511" height="78" border="0" alt="">
</a>
<%@ include file="footer.jsp"%>
