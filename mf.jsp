<%@ include file="uheader.jsp"%>
</div></div>
<div class="col-md-12 w3l_main_grid1_w3ls_grid w3l-news-mok">
		<h3>Matrix factorization (MF)</h3>
		<div class="w3_agile_main_left_grid_w3_agileits">

<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" %>
<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Thank You!!')</script>");
	}
 %>

<%

try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
st2.executeUpdate("delete from mf");
String sql="select * from votequery where uemail!='"+email+"' ";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
while(rs.next()){
int cc=0;
rs2=st2.executeQuery("select count(*) from  votes where email='"+email+"' and latent='"+rs.getString("latent")+"'	");
rs2.next();
cc=rs2.getInt(1);
rs2=st2.executeQuery("select count(*) from  votes where vid='"+rs.getString("vid")+"' ");
rs2.next();
cc=cc+rs2.getInt(1);
st2.executeUpdate("insert into mf values ('"+rs.getString(1)+"','"+cc+"') ");
}
%>







<%
rs=st.executeQuery("select * from mf order by score desc");
int i=0;
while(rs.next()){
%>

	<h2><%=++i%>) &nbsp;<%String[] que=Details.main(rs.getString(1));%> 
<font size="" color=""><%=que[0]%>
<font size="3" color="">[ MF Score: <%=rs.getString("score")%>]</h5><br></font>
<font size="+1" color="#2e9694"><b>Latent Feature: <%=que[3]%>
<font size="+1" color="#e81756"><b>Vote Initiated by: <%=que[2]%>
</font><br><br>
<a href="response.jsp?vid=<%=rs.getString(1)%>&&ans=L"><h1><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>&nbsp;&nbsp;&nbsp;
<a href="response.jsp?vid=<%=rs.getString(1)%>&&ans=D"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a>
</h1>
<br><br>

<%

}



}
catch(Exception e){
System.out.println("11="+e);
}
%>
            </table>


<%@ include file="footer.jsp"%>