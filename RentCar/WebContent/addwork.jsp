<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>connect saajidh </title>
</head>
<body>
<div class= container>
<p>${Notification} </p>
<form action="${pageContext.request.contextPath}/BookControler" method="post">
pick up location<input type= "text" name="pickuplocation" value = "${event.pickuplocation}"><br>
pick up date<input type= "date" name="pickupdate"value = "${event.pickupdate}"><br>
pick up time<input type= "time" name="pickuptime"value = "${event.pickuptime}"><br>
Return date<input type= "date" name="returndate"value = "${event.returndate}"><br>
NO of PARCIPANTS<input type= "number" name="noofperson"value = "${event.noofperson}"><br>
No OF DAYS<input type= "number" name="noofdays"value = "${event.noofdays}"><br>



Reservation ID<input type = "text"   name = "bookid"value = "${event.bookid}"><br>


<input type= "submit" name="subs" value="submit" ><br>
</form>
</div>
</body>
</html>