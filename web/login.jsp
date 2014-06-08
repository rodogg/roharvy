<%--
  Created by IntelliJ IDEA.
  User: rohitkulkarni
  Date: 6/8/14
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%
    try {
        // Read username and password from the login form
        String username = request.getParameter("user");
        String password = request.getParameter("pass");

        // Connect to mysql database
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindb",
                "root", "");

        // Make a query to the database
        Statement st = con.createStatement();
        ResultSet rs;
        rs = st.executeQuery("select * from users where user='"+ username +"' and pass='"+ password +"'");
        if (rs.next()) {
            //session.setAttribute("user", username);
            out.println("WELCOME USER!");
            //    session.setAttribute("userid", userid);
            //    //out.println("welcome " + userid);
            out.println("<a href='index.jsp'>Log out</a>");
        } else {
            out.println("WRONG INFO");
            out.println("<a href='index.jsp'>Retry</a>");
        }
    }
    catch (Exception E) {
        out.println("Exception::> " + E.toString());

    }

%>