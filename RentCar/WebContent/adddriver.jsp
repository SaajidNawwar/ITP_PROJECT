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
Add driver
<form action="${pageContext.request.contextPath}/DriverControler" method="post">
Driver name<input type= "text" name="name" value = "${driver.name}"><br>
Driver dob<input type= "date" name="dob"value = "${driver.dob}"><br>
Driver mail<input type= "text" name="email"value = "${driver.email}"><br>
Driver l num<input type= "text" name="licence_num"value = "${driver.licence_num}"><br>
Driver address<input type= "text" name="address"value = "${driver.address}"><br>
Driver mobile<input type= "text" name="mobile"value = "${driver.mobile}"><br>
Trip salary<input type= "text" name="tripsalary"value = "${driver.tripsalary}"><br>
Total trip salary<input type= "text" name="netsalary"value = "${driver.netsalary}"><br>




<input type = "hidden"   name = "driverid"value = "${driver.driverid}"><br>


<input type= "submit" name="subs" value="submit" ><br>
</form>
</div>
</body>
</html>