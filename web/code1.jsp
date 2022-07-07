
<%@page import="pack.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    int number=5564;

 int binary[] = new int[25];
        int index = 0;
        while(number > 0){
            binary[index++] = number%2;
            number = number/2;
        }
        for(int i = index-1;i >= 0;i--){
            try
            {
Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
 
  
  
   int j=st.executeUpdate("insert into register(binary) values(binary[i])");
  if(j!=0){
      response.sendRedirect("coin1.jsp?msg=success");
  }
   else{
      out.println("error");
   }
            }
  catch(Exception ex)
            {
                ex.printStackTrace();
            }
             }
%>