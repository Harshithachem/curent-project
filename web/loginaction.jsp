<%-- 
    Document   : caction
    Created on : Jul 13, 2015, 6:27:21 PM
    Author     : java2
--%>
<%@page import="pack.Dbconn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String user = request.getParameter("name");
    String pass = request.getParameter("pass");
   
    
            try {
                con = Dbconn.getConnection();
                st = con.createStatement();
                rs = st.executeQuery("select * from register where name='" + user + "' AND Pass='" + pass + "'");
                if (rs.next()) {
                    response.sendRedirect("userlogin.jsp?msg=success");
                    session.setAttribute("uname", rs.getString("name"));
                    session.setAttribute("upass", rs.getString("pass"));
                } else {
                    response.sendRedirect("user.jsp?umsg=success");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
         
    
%>
