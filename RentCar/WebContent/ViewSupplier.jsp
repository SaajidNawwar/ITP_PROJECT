<%@page import="service.Supplierservice"%>
<%@page import="service.Isupplier"%>
<%@page import="Model.Suppliermodel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier LIST</title>
</head>

<link href="https://unpkg.com/bootstrap@4.1.0/dist/css/bootstrap.min.css" rel="stylesheet" />
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css"/>




<body>


<h1> <b> <center>Supplier Table </center> </b></h1>

<br> </br> 
	<div class="container">

		<table border="1" cellpadding="12" class="table table-striped table-bordered" id="datatable">

			<thead>
				<tr class="thead-dark">

                    <th> Supplier ID </th>
					<th>Supplier Name</th>
					<th>Email Address</th>
					<th>Vehicle Name</th>
					<th>Module Number</th>
					<th>Contact Number</th>
					<th>Supplier Address</th>
					<th>Payment</th>
					<th></th>
					<th></th>





				</tr>

			</thead>
			<%
				Isupplier Is = new Supplierservice();
			ArrayList<Suppliermodel> arrayList = Is.get_supplier_details();

			for (Suppliermodel sm : arrayList) {
			%>

			<tbody>
				<tr>
                    <td> <%=sm.getSuppID()%> </td>
					<td><%=sm.getName()%></td>
					<td><%=sm.getEmail()%></td>
					<td><%=sm.getVeh_name()%></td>
					<td><%=sm.getVeh_mod()%></td>
					<td><%=sm.getContactno()%></td>
					<td><%=sm.getAddress()%></td>
					<td><%=sm.getPay_amt()%></td>



					<td><a href="UpdateSupplier.jsp?SuppID=<%=sm.getSuppID()%>"><button>Update</button></a></td>

					<td>
						<form method="POST"
							action="DeleteSupplier?SuppID=<%=sm.getSuppID()%>">
							<button>Delete</button>
						</form>
					</td>



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