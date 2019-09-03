<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" %>
<%
    String vid=request.getParameter("vid");
    String ans=request.getParameter("ans");
 %>
<%String[] res=Details.main(vid);%>
<%

try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
//Statement st2=con.createStatement();
st.executeUpdate("insert into votes values ('"+vid+"','"+email+"','"+res[3]+"','"+ans+"','"+res[1]+"')");
st.executeUpdate("update  votemap set status='done' where vid='"+vid+"' and user='"+email+"' ");
response.sendRedirect("Recommendation.jsp?id=succ");
}
catch(Exception e){

System.out.println("11="+e);
response.sendRedirect("u_home.jsp?id=fail");

}
%>
