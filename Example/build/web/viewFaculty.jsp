<%-- 
    Document   : viewFaculty
    Created on : 17 Oct, 2021, 4:56:24 PM
    Author     : SIVASANKAR
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Faculty</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
    </head>
    <body>
        
        <% 
        try{
          String url="jdbc:mysql://localhost:3306/demo2?useSSL=false&allowPublicKeyRetrieval=true";
          String username="siva";
          String password="0000";
          String sql="select * from faculty";
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection(url,username,password);
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery(sql);
          %>
          
    <th>Email</th> : 
        <%
            while(rs.next()){
        %>
        <td>
        <%
            out.println(rs.getString("email"));
        %>
        </td>
        <%
            }
        }
        catch(Exception e)
        {
            out.print(e);
        }
        %>
                
        
    </body>
</html>
