<%@page import="com.PowerUsageService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Power Usage Service</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/PowerUsageService.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Power Usage Service</h1>

				<form id="formPowerUsageService" name="formPowerUsageService" method="post" action="PowerUsageService.jsp">


					Units: <input id="units" name="units" type="text"
						class="form-control form-control-sm"> 
						
						<br> Amount: <input id="amount" name="amount" type="text"
						class="form-control form-control-sm"> 
						
						<br>  Month: <input id="month" name="month" type="text"
						class="form-control form-control-sm"> 
						
						<br>  Customer ID: <input id="customer_id" name="customer_id" type="text"
						class="form-control form-control-sm"> 
						
						<br>  Employee ID: <input id="employee_id" name="employee_id" type="text"
						class="form-control form-control-sm"> 
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					PowerUsageService projectObj = new PowerUsageService();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
