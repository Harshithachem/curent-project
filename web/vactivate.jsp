
<%@page import="pack.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String uname=request.getQueryString();

Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
 
  
  
  
  int i=st.executeUpdate("update vendor set status='yes'where name='"+uname+"'");
  
  if(i!=0){
      response.sendRedirect("vendors.jsp");
  }
   else{
      out.println("error");
   }
  
%>