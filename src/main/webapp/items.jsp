<%@page import="com.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/items.js"></script>
</head>
<body> 
<div class="container"><div class="row"><div class="col-6"> 
<h1>User Management V10.1</h1>
<form id="formItem" name="formItem" method="post" action="items.jsp">
 AccountNo: 
 <input id="AccountNo" name="AccountNo" type="text" 
 class="form-control form-control-sm">
 <br> Name: 
 <input id="Name" name="Name" type="text" 
 class="form-control form-control-sm">
 <br> Address: 
 <input id="Address" name="Address" type="text" 
 class="form-control form-control-sm">
 <br> NIC: 
 <input id="NIC" name="NIC" type="text" 
 class="form-control form-control-sm">
 <br>Item TelNo: 
 <input id="TelNo" name="TelNo" type="text" 
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 <input type="hidden" id="hidItemIDSave" 
 name="hidItemIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divItemsGrid">
 <%
 Item itemObj = new Item(); 
 out.print(itemObj.readItems()); 
 %>
</div>
</div> </div> </div> 
</body>
</html>