
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%@ include file="uheader.jsp"%>

	                  <%
                                                       String message=request.getParameter("id");
                                                       
													   
													   if(message!=null && message.equalsIgnoreCase("s1"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Friend Request Sent '); </script>");
                                                       }   if(message!=null && message.equalsIgnoreCase("ok"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Operation Successfull!! '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('You participated for this vote !! '); </script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("s2"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Friend Request already Sent '); </script>");
                                                       }

			    %>


				
				<h1>Welcome <%=session.getAttribute("name")%></h3>

<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>

		</div>
	</div>
	<div class="clearfix"></div>

<div class="col-md-6 w3l_main_grid1_w3ls_grid w3l-news-mok">
		<h3>Friend Search</h3>
		<div class="w3_agile_main_left_grid_w3_agileits">
			<form action="usearch.jsp" method="post">
				<div class="agileits_w3layouts_user">
					<i class="fa fa-envelope-o" aria-hidden="true"></i>
					<input type="email" name="email" placeholder="Email" required="">
				</div>
				<input type="submit" value="Search">
				
				
			</form>
<br>
		</div>
	</div>

<div class="col-md-6 w3l_main_grid1_w3ls_grid w3l-news-mok">
		<h3>Friend Requests</h3>
		<div class="w3_agile_main_left_grid_w3_agileits">


				
				
				
<%String email1=(String)session.getAttribute("email");%>

<% String mail=request.getParameter("email");
%> 
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sql="select * from frequest where uto='"+email1+"' and requ='req' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
%>
<table align="center" >
<%
if(rs.next()){

%>
<tr><td> <img src="view.jsp?id=<%=rs.getString("ufrom")%>" alt="" width="150" height="129" >
<td> <br><h4>&nbsp;&nbsp;&nbsp;FROM :	<%=rs.getString("ufrom")%><input type="hidden" name="mail" value="<%=rs.getString("uto")%>"/><br><form method="post" action="accept.jsp">


<form method="post" action="accept.jsp">
<input type="hidden" name="mail" value="<%=rs.getString("ufrom")%>"/>

<br>
<button type="submit">Accept</button>

</form>

<tr><td>

<%
}else{
%>
<h4>No Friend Requests..</h4>
<br><br><br><br>
<%
}
}
catch(Exception e){
}
%>
</table>

				
				
				
				
				
				
				

		</div>
	</div>

<div id="" class="">
<div id="" class="">
	
<%@ include file="footer.jsp"%>