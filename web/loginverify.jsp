


<%@page import="pack.Dbconn"%>
<%@page import="org.apache.catalina.Session"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String user=request.getParameter("name");
String pass=request.getParameter("pass");
String bname=request.getParameter("bname");
String acno=request.getParameter("acno");

HttpSession session2=request.getSession(true);
 Connection con=Dbconn.getConnection();
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
  ResultSet rt=st.executeQuery("select * from register where name='"+user+"' AND bname='"+bname+"' AND acno='"+acno+"'");
  System.out.println("result set executed");
  if(rt.next()){
      String p=rt.getString("pass");
      if(p.equals(pass)){
          if(rt.getString("status").equalsIgnoreCase("yes")){
          session2.setAttribute("name",user);
           session2.setAttribute("bank",bname);
          response.sendRedirect("userlogin.jsp?msg=success");
                   }
                   else{
                out.println("your not yet Activated.....");
                   }
      }
      else{
         
          response.sendRedirect("user.jsp?umsg=failed");
      }
  }
  else{
      
      response.sendRedirect("user.jsp?msgg=failed");
   
  }
    
%>