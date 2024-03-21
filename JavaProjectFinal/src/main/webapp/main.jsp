<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Welcome</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 800px;
      margin: 50px auto;
      background-color: #fff;
      padding: 20px;
      border: 1px solid #ddd;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      margin-bottom: 30px;
    }

    p {
      font-size: 18px;
      line-height: 1.5;
      margin-bottom: 20px;
    }

    a {
      color: #4CAF50;
      text-decoration: none;
      margin-top: 20px;
      display: block;
      text-align: center;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
	<%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
    %>
	  <div class="container">
	    <h1>Welcome to the Member Area <%= username %>!</h1>
	    <p>Thank you for logging in. Here you can access exclusive content and features.</p>
	    <p>To get started, click on the link below:</p>
	    <a href="Logout.java">Logout</a>
	  </div>
	  
	  <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>