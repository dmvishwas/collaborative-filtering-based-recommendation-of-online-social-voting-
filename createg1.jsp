
<%@ page  import="java.sql.*" import="databaseconnection.*" import="Mail.*" %>



<%! 
	String gname;
	int i=0;
%>

<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from groups");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}
gname=request.getParameter("gname");

%>

<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();

int q= st.executeUpdate("insert into groups values('"+i+"','"+session.getAttribute("name")+"','"+session.getAttribute("email")+"','"+gname+"','admin')");


if(q>0)
{
	response.sendRedirect("creategroup.jsp?id=succ");

}
}
catch(Exception e)
{
e.printStackTrace();
response.sendRedirect("creategroup.jsp?id=fail");

	}
%>
