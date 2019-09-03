<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ include file="uheader.jsp"%>

<%
	String mail=request.getParameter("mail");
%> 


<%
try{

if(mail.equals(email))
{
	System.out.println(10/0);
}


Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String s="select * from frequest where ufrom='"+mail+"' && uto='"+email+"' ";
System.out.println(s);
ResultSet rs=st.executeQuery(s);
if(rs.next())
{
	System.out.println(10/0);
}
else{String sql="insert into frequest value ('"+email+"','"+mail+"','req')";
System.out.println(sql);
st.executeUpdate(sql);
response.sendRedirect("u_home.jsp?id=s1");
}
}
catch(Exception e)
{
	System.out.println("ss"+e);
response.sendRedirect("u_home.jsp?id=s2");
}
%>
