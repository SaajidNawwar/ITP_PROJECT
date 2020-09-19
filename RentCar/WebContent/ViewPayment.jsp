
<%@page import="service.Paymentservice"%>
<%@page import="service.Ipayment"%>
<%@page import="Model.Paymentmodel" %>
<%@page import="java.util.ArrayList" %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentList</title>
</head>

<link
	href="https://unpkg.com/bootstrap@4.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css"/>
 


<body>

<h1> <b> <center>Payment Table </center> </b></h1>

<br> </br>

<div class="container">
		<table border="1" cellpadding="12"  class="table table-striped table-bordered" id="datatable"   >
	
		 <thead>
		  <tr class="thead-dark">
		        
		        <th> Payment Id</th>
                <th>Payment Type</th>
                <th>Card Holder Name</th>
                <th>Card Number</th>
                <th>Card Expiry Date</th>
                <th>CCV</th>
                <th>Coupon Code</th>
                <th>Total Payment</th>
                <th> </th>
                 <th> </th>
               
          
                        
                
                
            </tr>	
            
          </thead>  							
            <%
            
           Ipayment Ip = new Paymentservice();
			ArrayList<Paymentmodel> arrayList = Ip.get_payment_details();
				
			
			for(Paymentmodel pm : arrayList){
			%>
			
			 <tbody>
			 <tr>
		        
		        <td> <%=pm.getPayID() %> </td>	 
			    <td> <%=pm.getPayType() %> </td>
			    <td> <%=pm.getHoldername() %> </td>
			    <td> <%=pm.getCardnumber() %> </td>
			    <td>  <%=pm.getExpDate() %> </td>
			    <td>  <%=pm.getCcv() %> </td>
			    <td>  <%=pm.getCoupon() %> </td>
			    <td> <% %> </td>  
			 
				
			
				
			<td><a href="UpdatePayment.jsp?payID=<%=pm.getPayID() %>"><button >Update</button></a></td>
										
				<td><form method="POST" action="DeletePayment?payID=<%=pm.getPayID() %>"> <button>Delete</button></form></td>
				
			
					
			</tr>
			 </tbody>
				
			
						
					
			<%	
			   }
            %>     
		</table>




</div>


<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.js"></script>
	<script>
	$(document).ready(function(){
		$("#datatable").DataTable();
	})
	</script>





</body>
</html>