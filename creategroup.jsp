<%@ include file="uheader.jsp"%>

					  
					  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Group Added Successfully.'); </script>");
                                                       }
                                               %>
	                  <%
                                                       m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                                  out.println("<h2><font color=red>Group Already added..</font></h1>");
                                                       }
                                               %>

				   
<br><br><br><br>
<h2>Create Groups</h1>
<br><br>
<form method="post" action="createg1.jsp">
	<table  align="center" cellpadding=5><tr><td>

	<tr><td>  <div class="form-group">

    <input type="text" name="gname" class="form-control"  placeholder="Enter Group Name"  size="60"required />
  </div>



<tr>				<td><button type="submit" class="btn btn-default">Create</button></td>	


</tr>
</table>						

</form>
               
<%@ include file="footer.jsp"%>