<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>

<%
int id=1;
Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();
		
	String sss = "select count(*) from users ";
	ResultSet r=ss.executeQuery(sss);
	if(r.next())
	{
		id=r.getInt(1);

		id++;
	}
	

%>

<% 


ResultSet rs=null;

PreparedStatement ps=null;

	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");	
	String tele = request.getParameter("tele");




       try
                {	  

Connection con=databasecon.getconnection();
ps=con.prepareStatement("INSERT INTO users(uid,name,pwd,email,tele)VALUES(?,?,?,?,?)");
			
		ps.setInt(1,id);
		ps.setString(2,name);
		ps.setString(3,pwd);
		ps.setString(4,email);
		ps.setString(5,tele);

		int s = ps.executeUpdate();

response.sendRedirect("uploadpic.jsp?id="+email);

}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
