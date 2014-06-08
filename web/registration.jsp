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
        rs = st.executeQuery("select * from users where user='"+ username +"'");
        if (rs.next()) {
            //session.setAttribute("user", username);
            out.println("User Already Exists");
            //    session.setAttribute("userid", userid);
            //    //out.println("welcome " + userid);
            out.println("<a href='reg.jsp'>Try Again</a>");
        } else {
            int i = st.executeUpdate("insert into users (user, pass) values ('" + username + "','" + password + "')");
            if (i > 0) {
                //session.setAttribute("userid", user);out.println("User Already Exists");
                //    session.setAttribute("userid", userid);
                //    //out.println("welcome " + userid);
                out.println("<a href='index.jsp'>Welcome new user, click here to login</a>");

                //response.sendRedirect("welcome.jsp");
                // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
            } else {
                out.println("Didnt work?");
                //response.sendRedirect("index.jsp");
            }

        }
    }
    catch (Exception E) {
        out.println("Exception::> " + E.toString());

    }

%>