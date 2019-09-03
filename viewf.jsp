


<%String email1=(String)session.getAttribute("email");
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from friends where user1='"+email+"' ";
System.out.println("***********"+sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
while(rs.next()){
String user=rs.getString("user2");
rs2=st2.executeQuery("select * from users where email='"+user+"' ");
while(rs2.next())
	{
			%>	
			<img src="view.jsp?id=<%=rs2.getString("email")%>"   style="width:258px;height:221px;"alt="" /></a>
			<%=rs2.getString("email")%>
			<%
	}
}
}
catch(Exception e){
System.out.println("11="+e);
}
%>
                </ul>

<%@ include file="ufooter.jsp"%>
