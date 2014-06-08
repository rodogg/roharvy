<%--
  Created by IntelliJ IDEA.
  User: rohitkulkarni
  Date: 6/7/14
  Time: 12:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Login Page</title>

      <link rel='stylesheet' href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>

      <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
  </head>
  <body>

  <div class="login-card">
      <h1>Log-in</h1><br>
      <form method="post" action="login.jsp">
          <input type="text" name="user" placeholder="Username">
          <input type="password" name="pass" placeholder="Password">
          <input type="submit" name="login" class="login login-submit" value="login">
      </form>

      <div class="login-help">
          <a href="reg.jsp">Register</a> • <a href="#">Forgot Password</a>
      </div>
  </div>

  <!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->

  <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>

  </body>
</html>

