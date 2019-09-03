<%@ include file="uheader.jsp"%>

<%@ page  import="java.sql.*" import="databaseconnection.*"  import="CT.*" %>

<% String mail=request.getParameter("mail");
System.out.println("00000000"+mail);
System.out.println("00000000"+email);
%> 



<%
try{
//String f1[]=Details.main(mail);

//
String sen=mail;;
//System.out.println(f1[0]+" ..........."+f1[1]+"---"+f1[2]);
String rec=email;
//System.out.println(sen+" ...........");
System.out.println(rec+" "+sen);
Connection con = databasecon.getconnection();
Statement st=con.createStatement();


String sql="insert into friends values('"+sen+"','"+rec+"')";
st.executeUpdate(sql);

 sql="insert into friends values('"+rec+"','"+sen+"')";
System.out.println(sql);
st.executeUpdate(sql);

st.executeUpdate("update frequest set requ='accepted' where uto='"+email+"' && ufrom='"+mail+"' ");

response.sendRedirect("u_home.jsp?id=ok");


}
catch(Exception e){
	System.out.println("00000000"+e);
}
%>