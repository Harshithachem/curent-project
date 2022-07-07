
<%
String name = "Frodo";
    String user = request.getParameter("name");
    String pass = request.getParameter("pass");
try {
                if (user.equalsIgnoreCase(name) && pass.equalsIgnoreCase(name)) {
                    response.sendRedirect("hfrodo.jsp?msg=success");
                } else {
                    response.sendRedirect("frodo1.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
    %>