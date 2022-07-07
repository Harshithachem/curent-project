
<%
String name = "Puf";
    String user = request.getParameter("name");
    String pass = request.getParameter("pass");
try {
                if (user.equalsIgnoreCase(name) && pass.equalsIgnoreCase(name)) {
                    response.sendRedirect("puf.jsp?msg=success");
                } else {
                    response.sendRedirect("puf1.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
    %>