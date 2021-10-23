<%-- 
    Document   : flogin
    Created on : 19 Oct, 2021, 12:57:19 PM
    Author     : SIVASANKAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
    </head>
    <body>
        <div class="container">
	<div class="jumbotron bg-info">
		<form action="fvalidation" method="post">
                    <input type="email" placeholder="Enter your Email" name="email">
                    <input type="password" placeholder="Enter Password" name="psw">
                    <input type="submit" class="btn btn-success form-control">
		</form>
	</div>
</div>
    </body>
</html>
