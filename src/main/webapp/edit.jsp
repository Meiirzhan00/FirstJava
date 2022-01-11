<%@ page import="kz.javaee.db.Items" %>
<%@ page import="kz.javaee.db.Countries" %>
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
                <div class="col-sm-6 offset-3">
                    <%
                        Items item = (Items) request.getAttribute("item");
                        if (item != null){
                    %>
                        <%
                            String success = request.getParameter("success");
                            if (success != null){
                        %>
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            Item saved successfully !
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <%
                            }
                        %>
                        <%
                            String error = request.getParameter("error");
                            if (error != null){
                        %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            Something went wrong!
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <%
                            }
                        %>
                        <form action="edit" method="post">
                            <input type="hidden" name="id" value="<%=item.getId()%>">
                            <div class="form-group">
                                <label>
                                    NAME :
                                </label>
                                <input type="text" name="name" class="form-control" value="<%=item.getName()%>">
                            </div>
                            <div class="form-group mt-3">
                                <label>
                                    AMOUNT :
                                </label>
                                <input type="number" name="amount" class="form-control" value="<%=item.getAmount()%>">
                            </div>
                            <div class="form-group mt-3">
                                <label>
                                    PRICE :
                                </label>
                                <input type="number" name="price" class="form-control" value="<%=item.getPrice()%>">
                            </div>
                            <div class="form-group mt-3">
                                <label>
                                    MANUFACTURER :
                                </label>
                                <select class="form-control" name="manufacturer_id">
                                    <%
                                        // ArrayList<Countries> countries = (ArrayList<Countries>) request.getAttribute("countries");
                                        ArrayList<Countries> countries = (ArrayList<Countries>) request.getAttribute("countries");
                                        if (countries != null){
                                            for (Countries c : countries) {
                                    %>
                                    <option value="<%=c.getId()%>" <%if (c.getId()==item.getManufacturer().getId()) { out.println("selected");}%>>
                                        <%=c.getName() + "/" + c.getShortName()%>
                                    </option>
                                    <%
                                            }
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group mt-3">
                                <button class="btn btn-success">SAVE ITEM</button>
                                <button type="button" class="btn btn-danger float-right" data-bs-toggle="modal" data-bs-target="#deleteItemModel">
                                    DELETE ITEM
                                </button>
                            </div>
                        </form>
                        <div class="modal fade" id="deleteItemModel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="delete" method="post">
                                        <input type="hidden" name="id" value="<%=item.getId()%>">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Confirm Delete</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                            <button class="btn btn-danger">YES</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
