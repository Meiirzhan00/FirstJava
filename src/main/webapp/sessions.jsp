<%@ page import="java.util.ArrayList" %>
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
                            String text = (String) request.getAttribute("text");
                            out.print(text);
                        %>
                    </h2>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-sm-6 offset-3">
                    <form action="setsession" method="post" class="form-group">
                        <div>
                            <label>
                                SESSION VALUE :
                            </label>
                            <input type="text" name="session_value" class="form-control">
                            <button class="btn btn-success mt-2">SET SESSION</button>
                        </div>
                    </form>
                    <form action="deletesession" method="post" class="form-group">
                        <div>
                            <button class="btn btn-danger mt-1">DELETE SESSION</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-sm-12">
                    <h2 class="text-center">
                        <%
                            ArrayList<String> basket = (ArrayList<String>) request.getAttribute("basketSession");
                            if (basket != null){
                                for (String bsk : basket) {

                        %>
                                    <h5 class="text-center">
                                        <%=bsk%>
                                    </h5>
                        <%
                                }
                            }
                        %>
                    </h2>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-sm-6 offset-3">
                    <form action="addtobasket" method="post" class="form-group">
                        <div>
                            <label>
                                BASKET VALUE :
                            </label>
                            <input type="text" name="basket_value" class="form-control">
                            <button class="btn btn-success mt-2">ADD BASKET</button>
                        </div>
                    </form>
                    <form action="clearbasket" method="post" class="form-group">
                        <div>
                            <button class="btn btn-danger mt-1">CLEAR BASKET</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
