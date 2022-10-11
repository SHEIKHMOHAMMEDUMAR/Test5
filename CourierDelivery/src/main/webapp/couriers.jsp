<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.courier.CourierHistoryDao,java.time.LocalDate,java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="couriers.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Courier Details</title>
</head>
<body>
<% 
CourierHistoryDao chd = new CourierHistoryDao(); 
String user = (String)request.getSession().getAttribute("user");
ResultSet rs = chd.courierHistoryDao(user);
LocalDate t = LocalDate.now();
LocalDate dd = LocalDate.parse(rs.getString(9));
int status = dd.compareTo(t);
%>	
<div class="title">
<h1>Couriers Details</h1>
<h3>Find your courier here...!</h3>
</div>
<div class="page">
<div class="pageTable">
<table class="table table-bordered table-hover" id="transactions">
<thead>
<tr>
	<th class="table-dark">Tracking ID</th>
	<th class="table-dark">UserName</th>
	<th class="table-dark">Phone No</th>
	<th class="table-dark">Source Address</th>
	<th class="table-dark">Destination Address</th>
	<th class="table-dark">Packet Weight</th>
	<th class="table-dark">Place Date</th>
	<th class="table-dark">Delivery Date</th>
	<th class="table-dark">Amount</th>
	<th class="table-dark">Status</th>
	</tr>
	</thead>
	<tbody>
	<% do{
	dd = LocalDate.parse(rs.getString(9));
	status = dd.compareTo(t);
	if(status<=0){
		out.println("<tr>"
 				+"<td class='table-success'>"+rs.getString(1)+"</td>"
 				+"<td class='table-success'>"+rs.getString(2)+"</td>"
				+"<td class='table-success'>"+rs.getString(3)+"</td>"
				+"<td class='table-success'>"+rs.getString(4)+"</td>"
				+"<td class='table-success'>"+rs.getString(5)+"</td>"
				+"<td class='table-success'>"+rs.getString(7)+"</td>"
				+"<td class='table-success'>"+rs.getString(8)+"</td>"
				+"<td class='table-success'>"+rs.getString(9)+"</td>"
				+"<td class='table-success'>"+rs.getString(10)+"</td>"
				+"<td class='table-success'>Delivered</td>"
				+"</tr>");
	}
	else {
		out.println("<tr>"
 				+"<td class='table-danger'>"+rs.getString(1)+"</td>"
 				+"<td class='table-danger'>"+rs.getString(2)+"</td>"
				+"<td class='table-danger'>"+rs.getString(3)+"</td>"
				+"<td class='table-danger'>"+rs.getString(4)+"</td>"
				+"<td class='table-danger'>"+rs.getString(5)+"</td>"
				+"<td class='table-danger'>"+rs.getString(7)+"</td>"
				+"<td class='table-danger'>"+rs.getString(8)+"</td>"
				+"<td class='table-danger'>"+rs.getString(9)+"</td>"
				+"<td class='table-danger'>"+rs.getString(10)+"</td>"
				+"<td class='table-danger'>Not Delivered Yet</td>"
				+"</tr>");
	}
	}while(rs.next());
	%>
	</tbody>
</table>
</div>
</div>
</body>
</html>