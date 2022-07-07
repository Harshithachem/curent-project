
<%
String name = "Attacker";
    String user = request.getParameter("name");
    String pass = request.getParameter("pass");
try {
                if (user.equalsIgnoreCase(name) && pass.equalsIgnoreCase(name)) {
                    response.sendRedirect("attackpage.jsp?msg=success");
                } else {
                    response.sendRedirect("attacker.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
    %>