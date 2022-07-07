

<%@page import="javax.swing.JOptionPane"%>
<%@page import="org.apache.catalina.Session"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pack.Dbconn"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>

<%
    try{
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
  String q2="select * from register where rcount='"+key+"' AND code='"+binary+"'";
  System.out.println(q1);
  System.out.println(q2);
  ResultSet rt=st.executeQuery("select * from register where rcount='"+key+"' AND code='"+binary+"'");
  ResultSet rt1=st1.executeQuery("select * from register where rcount='"+key+"' AND code='"+binary+"'");
  System.out.println("result set executed");
  if(rt.next()){
      String p=rt.getString("rcount");
       String name=rt.getString("name");
        String bank=rt.getString("bname");
        String b=rt.getString("code");
        System.out.println("result set executed 1");
        if(rt1.next()){
           String bank1=rt.getString("bname");
           String acc=rt.getString("acno") ;
        System.out.println("result set executed 2");
     
      if(p.equals(key)){
        System.out.println("result set executed 3");
         System.out.println("rt.getString(code) : "+rt.getString("code"));
        System.out.println("binary              : "+binary); 
        System.out.println(rt.getString("code").equalsIgnoreCase(binary));
         if(!rt.getString("code").equalsIgnoreCase(binary)){
        System.out.println("result set executed 4");      
          session3.setAttribute("uname",key);
          session3.setAttribute("bank",binary);
          
          String q3="UPDATE transaction SET status='transaction done' WHERE name='"+name+"' AND bname='"+bank1+"' AND acno='"+acc+"'";
          System.out.println(q3);
          
          int i=st.executeUpdate("UPDATE transaction SET status='transaction done' WHERE name='"+name+"' AND bname='"+bank1+"' AND acno='"+acc+"'");
          System.out.println("status (i) : "+i);
   if(i!=0){
     //  out.println("<script>alert('registered')</script>");
      response.sendRedirect("transaction.jsp?msg=success");
   }
   else {
   response.sendRedirect("transaction.jsp?umsg=failed");
  }
         
}
                         
 }
     
  }
}
  else{
      
      response.sendRedirect("transaction.jsp?msg=failed");
   
  }
    
    }catch(Exception e){
        e.printStackTrace();
    }
  
%>