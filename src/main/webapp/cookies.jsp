<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <%@include file="vendor/head.jsp"%>
    </head>
    <body>
        <%@include file="vendor/navbar.jsp"%>
        <div class="container">
            <div class="row mt-5">
                <div class="col-sm-12">
                    <h2 class="text-center">
                        <%
                            String cookieValue = (String) request.getAttribute("cookieValue");
                            out.println("Your cookie data is "+cookieValue);
                        %>
                    </h2>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-sm-6 offset-3">
                    <form action="setcookie" method="post" class="form-group">
                        <div>
                            <label>
                                COOKIE VALUE :
                            </label>
                            <input type="text" name="cookie_value" class="form-control">
                            <button class="btn btn-success mt-2">SET COOKIE</button>
                        </div>
                    </form>
                    <form action="deletecookie" method="post" class="form-group">
                        <div>
                            <button class="btn btn-danger mt-1">DELETE COOKIE</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
