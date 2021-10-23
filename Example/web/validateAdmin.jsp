<%-- 
    Document   : validateAdmin
    Created on : 17 Oct, 2021, 4:01:27 PM
    Author     : SIVASANKAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Validation</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
    </head>
    <body>
        <%
          String name=request.getParameter("adminname");
          String psw=request.getParameter("adminpsw");
          
          if(name.equals("admin") && psw.equals("admin"))
          {
        %>
              <div class="container">
                <div class="jumbotron bg-info">
                    <h1>Hello, Admin</h1>
                    <a href="viewFaculty.jsp" class="btn btn-success">VIEW ALL FACULTY</a>
                    <a href="page.html" class="btn btn-primary">UPLOAD NEW FACULTY</a>
                    <a href="facultyModify.jsp" class="btn btn-danger">MODIFY FACULTY ROWS</a>
                </div>
            </div>
        <%
          }
        %>
    </body>
</html>
