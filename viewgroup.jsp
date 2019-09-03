<%@ include file="uheader.jsp"%>
<style type="text/css">
	
img {
    border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    width: 250px;
	height: 250px; 
}

</style>
<%
						String gn=request.getParameter("name");
session.setAttribute("gn",gn);
						%>
						<h2>Add Users to <em><%=gn%></em> Group</h1>
<br><br>
<form method="post" action="adduser2.jsp">
	<table  align="center" cellpadding=5><tr><td>

	<tr><td>  <div class="form-group">

    <input type="text" name="user" class="form-control"  placeholder="Enter Email"  size="60"required />
  </div>
	<tr><td><button type="submit" class="btn btn-default">Search</button></td>	
</tr>
</table>						
</form>
						
							
		
<br>
<div class="w3agile-spldishes">
		<div class="spldishes-agileinfo">
			<div class="spldishes-grids">
	<div id="owl-demo" class="owl-carousel text-center agileinfo-gallery-row">
				
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
String sql="select * from Groups where gname='"+gn+"' order by position";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
%>
					<a class="item g1">
					<img class="lazyOwl"  src="view.jsp?id=<%=rs.getString("uemail")%>"  alt=""/>
						<div class="agile-dish-caption">
							<h4><%=rs.getString(2)%>  (<%=rs.getString("position")%>)</h4>
							<span><%=rs.getString("uemail")%></span>
						</div>
					</a>

<%}
}
catch(Exception e){
System.out.println("Exception Occured"+e);}


%>	

		</div>  
			<div class="clearfix"> </div>
		</div>
	</div>
	
<%@ include file="footer.jsp"%>