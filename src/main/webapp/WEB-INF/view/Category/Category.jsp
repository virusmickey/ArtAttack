<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Art Attack</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>

<jsp:include page="../CommonHeader.jsp"></jsp:include>

<div class="col-md-12">
            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h1 class="panel-title" style="font-size:30px"><b>Categories</b></h1>
                  </div>
                  <div class="col col-xs-6 text-right">
                    <a href="admin_manage_add_categories" class="btn btn-success">Add Category</a>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list" style="text-align:center">
                  <thead>
                    <tr>
                        <th style="text-align:center">ID</th>
                        <th style="text-align:center">Name</th>
                        <th style="text-align:center">Description</th>
                        <th style="text-align:center"><em class="fa fa-cog"></em></th>
                    </tr> 
                  </thead>
                  <tbody>
                  	<c:forEach var="categories" items="${displayCategories }">
                          <tr>
                            <td>${categories.id }</td>
                            <td>${categories.name }</td>
                            <td>${categories.description }</td>
                            <td align="center">
                              <a href="admin_manage_edit_categories?id=${categories.id }" class="btn btn-default"><em class="fa fa-pencil"></em></a>
                              <a href="admin_manage_delete_categories?id=${categories.id }" class="btn btn-danger"><em class="fa fa-trash"></em></a>
                            </td>
                          </tr>
                	</c:forEach>
                 </tbody>
        </table>
     </div>
  </div>
</div>
<jsp:include page="../CommonFooter.jsp"></jsp:include>

</body>
</html>