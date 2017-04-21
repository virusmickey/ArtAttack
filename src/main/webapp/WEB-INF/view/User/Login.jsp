<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Art Attack</title>
</head>
<body>
<jsp:include page="../CommonHeader.jsp"></jsp:include>
<center>
<div class="page-header"><h1><strong>LOGIN HERE</strong></h1></div>
${wrongCredentials }
<c:url var="actionurl" value="j_spring_security_check" />
<form:form id="signin" role="form" action="${actionurl }" method="post">
    <div class="input-group col-sm-6">
          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                 <form:input id="id" path="id" type="text" name="id" class="form-control" placeholder="User ID"/>                                        
     </div>
	<br>
     <div class="input-group col-sm-6">
           <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                  <form:input id="password" type="password" path="password" name="password" class="form-control" placeholder="Password"/>                                        
     </div>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<br>
     <center><button type="submit" class="btn btn-primary">Login</button></center>
</form:form>
</center>

<!--<form class="form-horizontal" name='loginForm' action="<c:url value='j_spring_security_check' />" method="post">
 <div class="form-group">
      <label class="control-label col-sm-2" for="username">User ID:</label>
      <div class="col-sm-10">
         <input type="text" name="id" id="id" placeholder="Enter your unique User ID">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password">User Password:</label>
      <div class="col-sm-10">
         <input type="password" id="password" name="password" placeholder="Enter your password">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-default">Login</button>
      </div>
    </div>
 </form>-->

<br>
<jsp:include page="../CommonFooter.jsp"></jsp:include>
</body>
</html>