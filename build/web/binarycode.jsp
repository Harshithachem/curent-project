
<%@page import="javax.swing.JOptionPane"%>
<%@page import="pack.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
String uname=request.getQueryString();
  String ibcode ;
Connection con=Dbconn.getConnection();
Connection con1=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
  Statement st1=con1.createStatement();
  
  ResultSet rs=st.executeQuery("select * from register where name='"+uname+"'");
  if(rs.next()){
     String acc=rs.getString("acno");
         
    byte[] bytes = acc.getBytes();
       
        StringBuilder binary = new StringBuilder();
        for (byte b : bytes) {
            int val = b;
            for (int i = 0; i < 8; i++) {
                binary.append((val & 128) == 0 ? 0 : 1);
                val <<= 1;
            }
            binary.append(' ');
                   }
        ibcode = binary.toString();
                      
        /*End*/
  //String hi="123456";
  
         
        //String  binary = Integer.toBinaryString(ibcode); now run

         // JOptionPane.showMessageDialog(null, "File Key Is :"+ibcode);
    //int i=st.executeUpdate("insert into register binary values ('"+ibcode+"')");
   int i=st.executeUpdate("UPDATE register SET code = '"+ibcode+"'  WHERE name = '"+uname+"' ");
      
  if(i!=0){
      response.sendRedirect("binary.jsp");
  }
   
   else{
      out.println("error");
   }
       
                } 
  else{
    out.println("error");  
  }  
%>

