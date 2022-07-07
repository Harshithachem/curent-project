

<%@page import="javax.swing.JOptionPane"%>
<%@page import="org.apache.catalina.Session"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pack.Dbconn"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>

<%
    String key=request.getParameter("key");
    String binary=request.getParameter("binary");
    
   // JOptionPane.showMessageDialog(null, "File Key Is :"+key);
   
  
  
  
  
//   Class.forName("org.sqlite.JDBC");
//  Connection con=DriverManager.getConnection("jdbc:sqlite:/home/ibn/Desktop/Nadanapathy/NetBeansProjects/multi-autority _cloud_storage/multiauthority");
 
         
      HttpSession session3=request.getSession(true); 
     
   Connection con=Dbconn.getConnection();
     // Connection con = 
   
  Statement st=con.createStatement();
  Statement st1=con.createStatement();
  
  String q1="select * from register where rcount='"+key+"' AND code='"+binary+"'";
  System.out.println(q1);
  
  ResultSet rt=st.executeQuery("select * from register where rcount='"+key+"' AND code='"+binary+"'");
 
  System.out.println("result set executed");
  if(rt.next()){
     String p=rt.getString("rcount");
     String name=rt.getString("name");
     String b=rt.getString("code");
     String bank=rt.getString("bname");
     String acc=rt.getString("acno");
     
     System.out.println("P value : "+p);
     System.out.println("Key value : "+key);
        if(p.equals(key)){
        
         if(!rt.getString("code").equals(binary)){
              
          session3.setAttribute("uname",key);
          session3.setAttribute("bank",binary);
         
   
          int i=st.executeUpdate("UPDATE withdrawals SET status='transaction done' WHERE name='"+name+"' AND bname='"+bank+"' AND acno='"+acc+"'");
  
   if(i!=0){
     //  out.println("<script>alert('registered')</script>");
      response.sendRedirect("wtransaction.jsp?msg=success");
   }
   else {
   response.sendRedirect("wtransaction.jsp?umsg=failed");
  }
         
}
                         
 }
     
  }
  else{
      
      response.sendRedirect("wtransaction.jsp?msg=failed");
   
  }
    

  
%>