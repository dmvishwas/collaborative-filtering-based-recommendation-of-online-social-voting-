<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String a = request.getParameter("email");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from users where email='"+a+"' && pwd='"+b+"' ";
System.out.println(sss1);
	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{

//
		name=rs1.getString("name");
		session.setAttribute("name",name);
		session.setAttribute("email",a);
		response.sendRedirect("u_home.jsp");
		}
		else{
		response.sendRedirect("index.jsp?id=fail");

		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>