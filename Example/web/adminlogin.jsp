<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
    </head>
    
    <body>
        <div class="container">
            <div class="jumbotron bg-info">
		
		<form action="validateAdmin.jsp" method="post">
			<input type="text" name="adminname" class="form-control">
			<input type="password" name="adminpsw" class="form-control">
                        <input type="submit" class="btn btn-success form-control" value="Submit">
		</form>
            </div>
        </div>
    </body>
</html>
