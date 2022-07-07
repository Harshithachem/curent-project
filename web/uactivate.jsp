
<%@page import="pack.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
  if (request.getParameter("msg1") != null) {%>
        <script>alert('card no will be updated by PUF ');</script>
        <%}
String acno=request.getQueryString();

Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
 
  
  
  
  int i=st.executeUpdate("update register set user='yes' where acno='"+acno+"'");
  
  if(i!=0){
      response.sendRedirect("uactivate.jsp?msg=success");
  }
   else{
      response.sendRedirect("uactivate.jsp?msg1=success");
   }
  
%>