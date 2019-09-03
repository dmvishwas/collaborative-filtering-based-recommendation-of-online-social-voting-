
<%@ page  import="java.sql.*" import="databaseconnection.*" import="Mail.*" %>

<%
int i=0;
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from groups");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}

int q= st.executeUpdate("insert into groups values('"+i+"','"+request.getParameter("name")+"','"+request.getParameter("email")+"','"+session.getAttribute("gn")+"','user')");


if(q>0)
{
response.sendRedirect("viewgroup.jsp?name="+session.getAttribute("gn"));

}
}
catch(Exception e)
{
e.printStackTrace();
response.sendRedirect("adduser.jsp?id=fail");


	}
%>
