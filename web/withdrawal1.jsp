

<%@page import="org.apache.catalina.Session"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pack.Dbconn"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>

<%
    String name=request.getParameter("name");
    String acno=request.getParameter("acno");
    String bname=request.getParameter("bname");
    String with=request.getParameter("amount");
    
    
  
  
  
  
//   Class.forName("org.sqlite.JDBC");
//  Connection con=DriverManager.getConnection("jdbc:sqlite:/home/ibn/Desktop/Nadanapathy/NetBeansProjects/multi-autority _cloud_storage/multiauthority");
 
         
      HttpSession session4=request.getSession(true); 
     
   Connection con=Dbconn.getConnection();
     // Connection con = 
   
  Statement st=con.createStatement();
  ResultSet rt=st.executeQuery("select * from register where name='"+name+"' AND acno='"+acno+"' ");
  System.out.println("result set executed");
  if(rt.next()){
      String p=rt.getString("acno");
      if(p.equals(acno)){
          if(rt.getString("bname").equals(bname)){
          session4.setAttribute("uname",name);
          session4.setAttribute("bank",bname);
          session4.setAttribute("acc",acno);
          int i=st.executeUpdate("INSERT INTO withdrawals VALUES('"+name+"','"+acno+"','"+bname+"','"+with+"','Need to transaction')");
   
   if(i!=0){
     //  out.println("<script>alert('registered')</script>");
      response.sendRedirect("withdrawal.jsp?msg=success");
   }
   else {
   response.sendRedirect("withdrawal.jsp?umsg=failed");
  }
         
}
                         
 }
     
  }
  else{
      
      response.sendRedirect("deposit.jsp?umsg=failed");
   
  }
    

  
%>