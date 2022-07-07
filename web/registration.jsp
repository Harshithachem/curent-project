


<%@page import="pack.Dbconn"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>

<%
    String name1=request.getParameter("name");
    String pass1=request.getParameter("pass");
    String rpass=request.getParameter("repass");
    String gender1=request.getParameter("gender");
    String dob1=request.getParameter("dob");
    String bname=request.getParameter("bank");
    String branch1=request.getParameter("branch");
    String cno1=request.getParameter("cno");
  
  
  
  try{
//   Class.forName("org.sqlite.JDBC");
//  Connection con=DriverManager.getConnection("jdbc:sqlite:/home/ibn/Desktop/Nadanapathy/NetBeansProjects/multi-autority _cloud_storage/multiauthority");
 
         
//       
     
   Connection con=Dbconn.getConnection();
     // Connection con = 
   
  Statement st=con.createStatement();
  int i=st.executeUpdate("INSERT INTO vendor VALUES('"+name1+"','"+pass1+"','"+rpass+"','"+gender1+"','"+dob1+"','"+bname+"','"+branch1+"','"+cno1+"','NO')");
   
   if(i!=0){
     //  out.println("<script>alert('registered')</script>");
      response.sendRedirect("vendor.jsp?msg=success");
   }
   else {
   response.sendRedirect("vreg.jsp?msgg=failed");
  }
  con.close();
  }
  catch(Exception e){
      out.println(e.getMessage());
  }
%>