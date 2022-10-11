<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.courier.CourierService"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="pay.css">
<title>Payable Amount</title>
</head>
<body>
<%Double distance = (Double)request.getSession().getAttribute("distance");
Double weight = (Double)request.getSession().getAttribute("weight");
CourierService cs = new CourierService();%>
<div class="title">
<h1>Payment Portal</h1>
<h3>Hurry you are at the last stage...!</h3>
</div>
<div class="page">
<center>
<form action="couriers.jsp">
<h1>Payable Amount</h1>
<h3><%=cs.getAmount(distance, weight)%></h3>
<input type="submit" class="button" value="Pay"/>
</form>
</center>
</div>
</body>
</html>