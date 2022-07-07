<%@page import="java.util.Random"%>
<%@page import="pack.TrippleDes"%>

<%@page import="pack.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String uname=request.getQueryString();
String bname=request.getQueryString();
String acno=request.getQueryString();

Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
Random r=new Random();
  int ran=r.nextInt();
  String mes=ran+"";
  
  int i=st.executeUpdate("update register set rcount='"+mes+"' where acno='"+acno+"' ");
  if(i!=0){
      response.sendRedirect("key.jsp?msg=success");
  }
   else{
      out.println("error");
   }
   
  
%>