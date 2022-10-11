<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.courier.CourierServlet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Page</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="title">
<h1>Apex Courier Service</h1>
<h3>Your Booking Starts Here...!</h3>
</div>
<div class="page">
<div class="container">
<center>
<form action ="CourierServlet">
   <div class="form-group">
      <label for="exampleUserName">Customer Name</label>
      <input type="text" maxlength = 30 id="exampleUserName" class="formm" name = "user" placeholder="Enter your name" required="required"/>
   </div>
   <div class="form-group">
      <label for="exampleMobileNumber">Mobile Number</label>
      <input type="text" pattern="\d*" id="exampleMobileNumber" class="formm" name = "mobile" placeholder="Enter your mobile number" required="required" maxlength=10/>
   </div>
   <div class="form-group">
      <label for="exampleAddress">Pick Up Location</label>
      <input type="text" pattern="^((?! ).)*$" id="exampleAddress" class="formm" name = "pick" placeholder="Enter pickup location" required="required"/>
   </div>
   <div class="form-group">
      <label for="exampleAddress">Drop Location</label>
      <input type="text" pattern="^((?! ).)*$" id="eexampleAddress" class="formm" name = "drop" placeholder="Enter drop location" required="required"/>
   </div>
   <div class="form-group">
      <label for="exampleDistance">Distance</label>
      <input type="number" min=1 id="exampleDistance" class="formm" name = "distance" placeholder="Enter distance in kmtrs" required="required" step="0.01"/>
   </div>
   <div class="form-group">
      <label for="exampleWeight">Packet Weight</label>
      <input type="number" min=0.5 id="exampleWeight" class="formm" name = "weight" placeholder="Enter weight in kgs" required="required" step="0.01"/>
   </div>
   <div>
   <input type="submit" class="button" value="Place Order"/>
   </div>
</form>
</center>
</div>
</div>
</body>
</html>