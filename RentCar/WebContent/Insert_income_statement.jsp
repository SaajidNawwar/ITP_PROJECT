









<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href=" CSS/ADMIN_PAGE.css">
<link rel="stylesheet" type="text/css" href=" CSS/insert_IS.css">


<title>MYEvent</title>


</head>

<body>


	<div class="container">
		<h1 class="h3 mb-3">Profile</h1>
		<div class="row">
			<div class="col-md-4 col-xl-3">
				<div class="card mb-3">
					<div class="card-header">



						<h5 class="card-title mb-0 text-center">User</h5>
					</div>
					<div class="card-body text-center">
						<br> <img src="images/avatar7.png" alt="Marie Salter"
							class="img-fluid rounded-circle mb-2" width="128" height="128">
						<h4 class="card-title mb-0"></h4>
						<br>
						<div>


							<form action="LogoutServlet">
								<div>


									<input type="submit" value="logout"	class="btn btn-primary btn-sm"> 
										
									</a>

								</div>
							</form>


						</div>
						<br>
						<hr class="my-0">

						<div class="card-body text-center">

							<div>
								<nav class='animated bounceInDown'>
								<ul>
									
									<li class='sub-menu'><a href='#'>IncomeStatement
											<div class='fa fa-caret-down right'></div>
									</a>
										<ul>
											<li><a href="Insert_income_statement.jsp">Calculate IncomeStatement</a></li>
											<li><a href="View_IncomeStatement.jsp">View IncomeStatement</a></li>
										</ul>
										
										
										
									<li class='sub-menu'><a href='Insert_Rates.jsp'>Rates
											<div class='fa fa-caret-down right'></div>
									</a>
										
										
										
										
								</ul>





								</nav>





							</div>
						</div>
					</div>


				</div>
			</div>
			<div class="col-md-8 col-xl-9">
				<div class="card" style="height: 1000px;">
					<div class="card-header">
						<h5 class="card-title mb-0">INCOME_STATEMENT</h5>
						<div class="card-body h-100"></div>
	
			
			
			
			
			
	
	<form method="post" action="calculated_income_statement.jsp">			
			<p id="date">Enter the date<input type="date" name="date"  required></p>
				
			<table border="3"  style="height:180%; width:100%; margin-top:20px;">
			
			
					<tr>
						<td bgcolor="#8080ff" id="td1"><b style="margin-left:50px;font-size:20px;">INCOME</b></td>
						<td></td>
					</tr>
							
					<tr>
						<td id="td1"><p id="p1"> Rent income</p></td>
						<td style="padding:5px;"><input type="number"  name="Rent_income" style="margin-right:-50px;"  required></td>
					</tr>
								
					<tr>
						<td id="td1"><p id="p1">Other income</p></td>
						<td style="padding:5px;" > <input type="number"  name="other_income" style="margin-right:-50px;" required></td>
					</tr>
							
					<tr>
						<td bgcolor="#8080ff"  id="td1"><b style="margin-left:50px;font-size:20px;">EXPENSES</b></td>
						<td ></td>
					</tr>
		
					<tr>
						<td   id="td1"><p id="p1">Salary</p></td>
						<td  style="padding:5px;"><input type="number"  name="Salary"  style="margin-right:-50px;"  required></td>
					</tr>
										
					<tr>
						<td   id="td1"><p id="p1">Maintance</p></td>
						<td   style="padding:5px;"><input type="number"  name="maintance"  style="margin-right:-50px;"  required></td>
					</tr>
									
					<tr>
						<td   id="td1"><p id="p1">Electricity</p></td>
						<td   style="padding:5px;"><input type="number"  name="electricity"  style="margin-right:-50px;"  required></td>
					</tr>
					
					<tr>
						<td   id="td1"><p id="p1">Rent expenses</p></td>
						<td   style="padding:5px;"><input type="number"  name="rent_expenses"  style="margin-right:-50px;"  required></td>
					</tr>
					
					<tr>
						<td   id="td1"><p id="p1">Other expenses</p></td>
						<td   style="padding:5px;"><input type="number"  name="other_expenses"  style="margin-right:-50px;"  required></td>
					</tr>
			
				
			
			</table>
	
						
					<input type="submit" value="CALCULATE" class="btn btn-success " style="margin-left:540px;margin-top:10px;width:150px;height:45px;background-color:#8080ff;">	
						
				</div>

	</form>
					
				</div>
			</div>
		</div>





























	</div>
	</div>


	</div>

	</div>
	<script>
                $('.sub-menu ul').hide();
$(".sub-menu a").click(function () {
	$(this).parent(".sub-menu").children("ul").slideToggle("100");
	$(this).find(".right").toggleClass("fa-caret-up fa-caret-down");
});
</script>

</body>
</html>