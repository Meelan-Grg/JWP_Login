<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	    <div class="container">
        <header>Login Form</header>
        <form method="post" action="LoginServlet">
            <div class="input-field">
                <input type="text" required name="username">
                <label> Username</label>
            </div>
            <div class="input-field">
                <input class="pswrd" type="password" required name="password">
                <span class="show">SHOW</span>
                <label>Password</label>

            </div>
            <div class="button">
                <div class="inner"></div>
                <input type="submit" value="Login">
            </div>
        </form>
</div>
</body>
</html>