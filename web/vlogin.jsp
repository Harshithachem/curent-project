


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

HttpSession session1=request.getSession(true);
 Connection con=Dbconn.getConnection();
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
  ResultSet rt=st.executeQuery("select * from vendor where name='"+user+"' AND bname='"+bname+"'");
  System.out.println("result set executed");
  if(rt.next()){
      String p=rt.getString("pass");
      if(p.equals(pass)){
          if(rt.getString("status").equalsIgnoreCase("yes")){
          session1.setAttribute("name",user);
          session1.setAttribute("bank",bname);
          response.sendRedirect("vhome.jsp?msg=success");
                   }
                   else{
                out.println("your not yet Activated.....");
                   }
      }
      else{
         
          response.sendRedirect("vendor.jsp?umsg=failed");
      }
  }
  else{
      
      response.sendRedirect("user.jsp?msgg=failed");
   
  }
    
%>