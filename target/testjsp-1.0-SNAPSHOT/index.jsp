<%-- 
    Document   : index
    Created on : Feb 4, 2020, 1:52:16 AM
    Author     : mihai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <h1 class="header-5">LOGIN</h1>
                </div>
                <div class="col col-lg-12 my-5 bg-light rounded p-2">
                    <form action="next" method="post">
                        <div class="row">
                            <div class="col col-lg12 pw-5">
                                <input type="text" name="username" placeholder="Username" class="form-control text-center my-2" required/>
                                <input type="password" name="password" placeholder="Password" class="form-control text-center" required/>
                                <div>
                                <div class="col col-lg-12 text-center p-5">
                                <input type="submit" class="btn btn-success" value="Enter"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    </body>
</html>
