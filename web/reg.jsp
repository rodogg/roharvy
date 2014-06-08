<%--
  Created by IntelliJ IDEA.
  User: rohitkulkarni
  Date: 6/8/14
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration</title>
</head>
<body>
<form method="post" action="registration.jsp">
        <table border="1" width="30%" cellpadding="5">
            <thead>
            <tr>
                <th colspan="2">Enter Information Here</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Username</td>
                <td><input type="text" name="user" value="" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pass" value="" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit" /></td>
            </tr>
            <tr>
                <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
            </tr>
            </tbody>
        </table>
</form>
</body>
</html>