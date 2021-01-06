<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
@import url('https://fonts.googleapis.com/css?family=Hind:300,400');

*, *:before, *:after {
	-webkit-box-sizing: inherit;
	box-sizing: inherit;
}

a.ex1:hover {
	background-color: #666;
}

.mySlides {
	display: none;
}

input[type="text"], input[type="mail"] {
	border: none;
	background: silver;
	height: 50px;
	font-size: 16px;
	margin-left: 2%;
	padding: 15px;
}

#donate_blood {
	background-color: #eaeaea;
	padding: 5px 15px 5px 450px !important;
	min-height: 100px;
	margin: 0px;
}

#donate_blood_id1 {
	font-size: 20px;
	color: #000000;
	text-align: center;
	padding-top: 15px;
	font-weight: 700;
}

#donate_blood_id2 {
	font-size: 24px;
	color: #850000;
	text-align: center;
	padding-top: 15px;
}

#donate_blood_id2 div.col-md-12 {
	padding: 0px !important;
}
</style>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<a href="#default" class="logo"><img class="logo" src="LOGO.png"></a>
		</div>
		<div class="header-right">
			<a class="ex1" href="index.jsp">Home</a> 
			<a class="ex1" href="faq.jsp">FAQ</a>
			<a class="ex1" href="contactUs.jsp">Contact Us</a>
			<a class="ex1" href="adminLogin.jsp">Admin Login</a>
		</div>
	</div>
	<div style="max-width: 100%">
		<img class="mySlides" src="slide1.jpg"> <img class="mySlides"
			src="SLIDE2.png"> <img class="mySlides" src="SLIDE4.jpg">
	</div>
	<script>
		var myIndex = 0;
		carousel();
		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 2000); // Change image every 2 seconds
		}
	</script>
<body>
	<div class="container">
		<br>
		<%
			String msg = request.getParameter("msg");
			if ("valid".equals(msg)) {
		%>
		<center>
			<font color="red" size="5">Form Submitted Successfully.You
				will get notified within 24 hours.</font>
		</center>
		<%
			}
		%>
		<%
			if ("invalid".equals(msg)) {
		%>
		<center>
			<font color="red" size="5">Invalid Data! Try Again!</font>
		</center>
		<%
			}
		%>
		<center>
			<h1>Enter Your Details to Request For Blood</h1>
		</center>
		<form action="indexFormAction.jsp" method="post">
			<center>
				<input type="text" name="name" placeholder="Enter Name" required>
				<input type="text" name="mobilenumber"
					placeholder="Enter Mobile Number" required> <input
					type="mail" name="email" placeholder="Enter Email Address" required>
				<input type="text" name="bloodgroup" placeholder="Enter Blood Group"
					required>
				<button class="button1">
					<span>Submit</span>
				</button>
			</center>
		</form>
	</div>
	<div class="row" id="donate_blood">
		<div class="col-md-12">
			<div class="col-md-12" id="donate_blood_id1">Some one saved my
				life, was it you?</div>
			<div class="col-md-12" id="donate_blood_id2">DONATE BLOOD SAVE
				MORE LIVES</div>
		</div>
	</div>
	<br>
	<br>
	<div class="row1">
		<div class="container"></div>
	</div>
	<h3>
		<center>All Right Reserved @ Biswanath Manna :: 2020</center>
	</h3>
</body>
</html>

