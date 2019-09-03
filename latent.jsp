<%@ include file="aheader.jsp"%>
		  <head>
<style>
table, th, td {
  border: 1px solid black;
      }
th, td {
    padding: 1px;
    text-align: left;
}
</style>
</head>

<%@ page  import="java.sql.*" import="databaseconnection.*" %>




<%
int count=1;
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from latent");
%>	
<h1>

<font size="" color=""><b>Laten Features Data</h1></h2><br><br>
                  <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
                                               %>

<table cellpadding="">

<tr><td><h3><font size="" color=""><b><b>No&nbsp;&nbsp;&nbsp;<td><h3><font size="" color=""><b><b>Latent Feature
<%while(rs.next())
	{
		%>
<tr><td><h4><%=count++%>
<td><h4><b><%=rs.getString(1)%>

<%
	}
%>	
<form method="post" action="latent2.jsp">
	

<tr><td><td><input type="text" size="60" name="st1"><input type="submit" value="   ADD  ">


                                              
											 
</table></table>
</form>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>
