<%@ page  import="java.sql.*" import="java.io.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%
int i=0;
String st1=request.getParameter("st1");
%>
<%

Connection con1=databasecon.getconnection();
//System.out.println(con1);

	Statement st = con1.createStatement();
	try{
	i=st.executeUpdate("insert into latent(feature) values('"+st1+"')");
			response.sendRedirect("latent.jsp");
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("latent.jsp?m=fail");
		return;
	}
	

%>	
<%@ include file="footer.jsp"%>
