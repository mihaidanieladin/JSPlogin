<%-- 
    Document   : welcome
    Created on : Feb 4, 2020, 1:56:07 AM
    Author     : mihai
--%>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    // Session cache config for browsers
    response.setHeader("Cache-control", "no-cache"); // HTTP1.1
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0
    response.setHeader("Expires", "0"); // PROXYES

    // Session verification if user is not null
    if( session.getAttribute("user") == null){
        response.sendRedirect("index.jsp");
    }
%>


<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true" user="root" password="admin"></sql:setDataSource>
<sql:query dataSource="${db}" var="rs">select * from user</sql:query>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        
        <div class="container">
            <div class="row form-row">
                <div class="col col-lg-12 bg-info text-center text-white my-5">
                    <h1 class="header-5">Hi ${user}</h1>
                    <form action="logout" method="post">
                        <input type="submit" value="Logout"/>
                    </form>
                </div>
                    
                <div class="col col-lg-12 my-5 bg-light rounded p-2">
                    <h1 class="header-2">Users List:</h1>
                    </br>
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Username</th>
                            <th scope="col">Password</th>
                          </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${rs.rows}" var="i">
                            <tr>
                              <th scope="row"><c:out value="${i.id_user}"></c:out></th>
                              <td><c:out value="${i.username}"></c:out></td>
                              <td><c:out value="${i.password}"></c:out></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                    
            </div>
        </div>  
                    
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    </body>
</html>
