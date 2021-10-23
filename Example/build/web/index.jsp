<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        
    </head>
  
    <body>
        <div w3-include-html="base.html"></div> 
      
        <%@ include file="base.html" %>
        <div class="container">
            <div class="jumbotron">
                <div class="jumbotron bg-info">
                    Welcome to Exam App
                </div>
            </div>
        </div>
        <%@ include file="adminlogin.jsp" %>
    </body>
</html>
