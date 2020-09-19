<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>connect with work allocation </title>
</head>
<body>
<div class= container>
<p>${Notification} </p>
<form action="${pageContext.request.contextPath}/AllocationControler" method="post">
pick up location<input type= "text" name="pickuplocation" value = "${event1.pickuplocation}"><br>
pick up date<input type= "date" name="pickupdate"value = "${event1.pickupdate}"><br>
pick up time<input type= "time" name="pickuptime"value = "${event1.pickuptime}"><br>
Return date<input type= "date" name="returndate"value = "${event1.returndate}"><br>
NO of PARCIPANTS<input type= "number" name="noofperson"value = "${event1.noofperson}"><br>
Driver ID<input type= "text" name="driverid" value = "${event1.driverid}" ><br>

allocation ID<input type= "hidden" name="allocationid"value = "${event1.allocationid}"><br>
No OF DAYS<input type= "number" name="noofdays"value = "${event1.noofdays}"><br>



Reservation ID<input type = "text"   name = "bookid"value = "${event1.bookid}"><br>


<input type= "submit" name="subs" value="allocate job" ><br>
</form>
</div>
</body>
</html>