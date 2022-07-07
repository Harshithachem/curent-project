



<%@page import="pack.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String acno=request.getQueryString();
 
            //String name,bank;
           // HttpSession session2 = request.getSession(true);
            //name = (String) session2.getAttribute("name");
            //bank = (String) session2.getAttribute("bank");
                    
  Connection con=Dbconn.getConnection();
  
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
  Random r=new Random();
  int ran=r.nextInt();
  String mes=ran+"";
  
  int i=st.executeUpdate("update register set reador='yes',acno='"+mes+"' where acno='"+acno+"'");
  if(i!=0){
      response.sendRedirect("reador.jsp?msg=success");
  }
   else{
      out.println("error");
   }
  
%>