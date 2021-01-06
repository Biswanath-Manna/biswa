<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
a.ex1:hover {
	background-color: #666;
}

#heading {
	border: 2px solid #656565;
	border-radius: 25px;
	width: 100px; //
	color: #111;
	color: #FFF;
	background-color: #268293;
	text-align: center;
	text-align: center;
	font-size: 32px;
	padding: 5px 15px 5px 15px;
}
/*
      .container {
  margin: 0 auto;
 padding: 0rem;
  padding: 5px 15px 5px 250px; 
  width: 48rem;
}*/
.container3 {
	margin: 0 auto;
	padding: 5px 15px 5px 500px;
}

.container1 {
	margin: 0 auto;
	padding: 5px 15px 5px 100px;
}

.container2 {
	margin: 0 auto;
	padding: 5px 15px 5px 700px;
}

section {
	padding: 20px 0;
}

body {
	font-size: 15px;
}

a#btn_back {
	color: #850000;
	padding: 10px 0px 10px 0px !important;
	float: left;
}

#heading {
	border: 2px solid #656565;
	border-radius: 25px;
	width: 100px; //
	color: #111;
	color: #FFF;
	background-color: #268293;
	text-align: center;
	text-align: center;
	font-size: 32px;
	padding: 5px 15px 5px 15px;
}
/*#heading:hover{
        color: #FFF;
        background-color: #268293;
        cursor: none;
    }*/
#contact_us_form {
	border: 5px solid #c1c1c1;
	padding: 0px 0px 50px 0px;
}

#btn_send_message {
	color: #000000;
	background-color: #FFF;
	border: 2px solid #000000;
}

#btn_send_message:hover {
	color: #FFF;
	background-color: #850000;
	border: 2px solid #910000;
}

p.solid {
	border-style: solid;
	width: 70%
}

p.solid1 {
	border-style: solid;
	width: 130%
}

input {
	width: 50%;
}

textarea {
	margin: 0px 0px 0px 0px;
	min-width: 200px;
	min-height: 100px;
	padding: 5px 5px 50px 25px;
}
</style>
</head>
<body>

	<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
	%>
	<center>
		<font color="red" size="5">Message Submitted Successfully.</font>
	</center>
	<%
		}
	%>

	<header>
		<div class="header">
			<div class="header-left">
				<a href="#default" class="logo"><img class="logo" src="LOGO.png"></a>
			</div>
			<div class="header-right">
				<a class="ex1" href="index.jsp">Home</a> <a class="ex1"
					href="faq.jsp">FAQ</a> <a class="ex1" href="contactUs.jsp">Contact
					Us</a>

			</div>
		</div>
		<br>
	</header>
	<section>
		<div class="container3">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="col-md-10 col-sm-12 col-xs-12 text-center">
						<span id="heading">Contact Us</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="container1">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">

					<div class="col-md-6">
						<h1 align="center">
							<p class="solid1">GET IN TOUCH</P>
						</h1>



						<div class="row m-t-40">
							<div class="col-md-12">
								<address>
									<strong>PASCHIM MEDINIPUR MEDICAL & <br>BLOOD
										TRANSFUSION COUNCIL,
									</strong> <br>
									<br>417,Collage Road,Medinipur<br> <br>Medinipur,West
									Bengal, India<br> <br>Phone: +91-9635102788 /
									7980811861<br /> <br>E-mail: biswanathblood@gmail.com<br>
								</address>
							</div>
						</div>


					</div>
				</div>
	</section>
	<section>
		<div class="container2">
			<h1 align="center">
				<p class="solid">SEND YOUR MESSAGE</p>
			</h1>
			<form action="contactUsAction.jsp" method="post">
			
				<h2>Name</h2>
				<input type="text" placeholder="Enter your Name" name="mname"
					required>


				<h2>Email</h2>
				<input type="email" placeholder="Enter your Email" name="memail"
					required>


				<h2>Your Subject</h2>
				<input type="text" placeholder="Subject..." name="msubject" required>


				<h2>Message</h2>

				<!--  <input type="text" placeholder="Enter your Message"
				name="mmessage" required>-->
				<textarea rows="4" cols="30" placeholder="Enter your Message"
					name="mmessage" required></textarea>

				<br>
				<hr>
				<button class="btn btn-primary" type="submit" id="btn_send_message">
					<i class="fa fa-paper-plane"></i>&nbsp;Send message
				</button>

			</form>

		</div>

	</section>
	<div class="row1">
		<div class="container"></div>
	</div>
	<h3>
		<center>All Right Reserved @ Biswanath Manna :: 2020</center>
	</h3>
</body>
</html>