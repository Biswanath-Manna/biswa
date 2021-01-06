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

.container1 {
	margin: 0 auto;
	/* padding: 2rem; */
	padding: 5px 15px 5px 150px;
	width: 48rem;
}

.container2 {
	margin: 0 auto;
	padding: 2rem;
	/*padding: 5px 15px 5px 200px; */
	width: 48rem;
}

section {
	padding: 10px 0;
}

/*
h3 {
  font-size: 1.75rem;
  color: #373d51;
  padding: 1.3rem;
  margin: 0;
}
*/
}
p.title {
	text-align: center;
	font-size: 45px;
	color: #efdeff;
}

b {
	color: #FFFFFF;
	font-size: 55px;
}

p.remarks, a {
	text-align: center;
	margin-top: 100px;
	color: #FFFFFF;
}

.container {
	width: 100%;
	max-width: 700px;
	min-width: 300px;
	margin: 0 auto;
	padding: 0 5vh;
}

/* accordion-2 */
#accordion-2 {
	position: relative;
	box-shadow: 0 1px 7px #DBDBDB;
}

#accordion-2 .head {
	background-color: #FFFFFF;
	color: #563e6e;
	padding: 20px 30px;
	cursor: pointer;
	transition: 0.25s;
}

#accordion-2 .arrow {
	content: '';
	position: absolute;
	right: 0;
	right: 30px;
	top: 65px;
	opacity: 1;
	border-left: 35px solid transparent;
	border-right: 35px solid transparent;
	border-top: 40px solid #FFFFFF;
	transition: 0.3s ease;
	z-index: 2;
}

#accordion-2 .head:hover .arrow, #accordion-2 .arrow-animate {
	border-top: 40px solid #FFE77AFF;
	transform: translateY(40px);
}

#accordion-2 .content {
	background-color: #FFFFFF;
	display: none;
	padding: 30px;
	color: #333333;
}

#accordion-2 .head:hover, #accordion-2 .active {
	background-color: #FFE77AFF;
}
</style>
<script>
	if (document.location.search.match(/type=embed/gi)) {
		window.parent.postMessage("resize", "*");
	}
</script>
</head>
<body>
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
	</header>
	<br>
	<section>
		<div class="container1">

			<span id="heading">Frequently Asked Questions</span>
		</div>
	</section>
	<section>
		<div class="container2">
			<h2 align="left">Frequently Asked Questions about Blood Donation</h2>
		</div>
	</section>
	<section>
		<div class="container">
			<div id="accordion-2">
				<div class="head">
					<h2>Who can donate blood?</h2>
					<i class="arrow"></i>
				</div>
				<div class="content">
					<p>Any healthy person with clean habits between the age of 18
						to 65 can donate blood.</p>
				</div>
			</div>

			<div id="accordion-2">
				<div class="head">
					<h2>How frequently I can donate blood?</h2>
					<i class="arrow"></i>
				</div>
				<div class="content">
					<p>You can donate blood once in 3 months.</p>
				</div>
			</div>

			<div id="accordion-2">
				<div class="head">
					<h2>Advantage of blood donation for a donor?</h2>
					<i class="arrow"></i>
				</div>
				<div class="content">
					<p>New blood cells will be generated after donation</p>
				</div>
			</div>

			<div id="accordion-2">
				<div class="head">
					<h2>Whom do I contact in case of blood requirement?</h2>
					<i class="arrow"></i>
				</div>
				<div class="content">
					<p>You can contact the nearest blood bank located in the
						Government Medical College Hospitals, District Head Quarters
						Hospitals and other Government hospitals.</p>
				</div>
			</div>

		</div>


		<script
			src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
		<script id="rendered-js">
			$('.head').click(function() {
				$(this).toggleClass('active');
				$(this).parent().find('.arrow').toggleClass('arrow-animate');
				$(this).parent().find('.content').slideToggle(280);
			});

			// icon from Font Awesome was used in accordion-1
			//# sourceURL=pen.js
		</script>
	</section>
	<br>
	<br>
	<br>
	
	<h3>
		<center>All Right Reserved @ Biswanath Manna :: 2020</center>
	</h3>

</body>
</html>