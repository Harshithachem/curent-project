<%-- 
    Document   : user.jsp
    Created on : Apr 5, 2016, 11:29:26 AM
    Author     : java3
--%>

<html lang="en">
		<head>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
			<meta name="description" content="A Bootstrap based app landing page template">
			<meta name="author" content="">
			<link rel="shortcut icon" href="assets/ico/favicon.ico">

			<title>Micro_payment</title>

			<!-- Bootstrap core CSS -->
			<link href="css/bootstrap.min.css" rel="stylesheet">

			<!-- Custom styles for this template -->
			<link href="css/custom.css" rel="stylesheet">
			<link href="css/flexslider.css" rel="stylesheet">
			
			<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
			<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700' rel='stylesheet' type='text/css'>
			<link href='http://fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>

			
		</head>

		<body>
                       <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('you transaction verified by PUF');</script>
        <%}
            if (request.getParameter("umsg") != null) {%>
        <script>alert(' transaction failed');</script>
        <%}
            
            %>
            
			<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
<!--						<a class="navbar-brand" href="#topWrap">
							<span class="fa-stack fa-lg">
								<i class="fa fa-circle fa-stack-2x"></i>
								<i class="fa fa-mobile fa-stack-1x fa-inverse"></i>							</span>
							App<span class="title">Bay</span>
						</a>-->
					</div>
					<div class="collapse navbar-collapse appiNav">
						<ul class="nav navbar-nav">
							<li><a href="userh.jsp">View User</a></li>
                                                        <li><a href="deposit.jsp">Deposit</a></li>
                                                         <li><a href="withdrawal.jsp">Withdrawal </a></li>
                                                         <li><a href="duser.jsp">Deposit details</a></li>
                                                         <li><a href="wuser.jsp">Withdrawal details</a></li>
                                                        <li><a href="user.jsp">Logout</a></li>
						
						</ul>
					</div><!--/.nav-collapse -->
				</div>
			</div>
                    
			<div id="topWrap" class="jumbotron">
			<div class="container">
				<div class="col-md-6 col-md-push-6 jumboText">
					<h2>Deposit</h2>
                                        <form style="color:black;"action="deposits.jsp" method="post">
                                              <label style="font-size: 20px;margin-left: 70px;color:black;">Username</label><input type="text" class="textbox" placeholder="" required style="margin-left: 30px;" name="name"/><br /><br />
                   
                                            <label style="font-size: 20px;margin-left: 70px;color:black;">Bank Name</label><input type="text" class="textbox" placeholder="" required style="margin-left: 18px;" name="bname"/><br /><br />
                    <label style="font-size: 20px;margin-left: 70px;color:black;">Card No</label><input type="text" class="textbox" placeholder="" required style="margin-left: 55px;" name="acno"/><br /><br />
                 
                                           <label style="font-size: 20px;margin-left:70px;color:black;">Deposit</label><input type="text" class="textbox" placeholder="Enter the amount" required style="margin-left:60px" name="amount"/><br></br>
                    
                                           <centre>   <input type="submit" class="myButton" style="margin-left: 150px" value="Transaction"/>
                 
                                 </div>
				<div class="col-md-6 col-md-pull-6 hidden-xs">
					<div class="mobile">
						<div class="mobileSlider">
							<ul class="slides">
								<li>
									<img src="assets/img/deposits.gif"/>
								</li>
								<li>
									<img src="assets/img/deposit.jpg"/>
								</li>
							</ul>
						</div>
					</div>
				</div>
				
			</div>
			</div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/flexslider.js"></script>
	
<script type="text/javascript">
$(document).ready(function() {

	$('.mobileSlider').flexslider({
		animation: "slide",
		slideshowSpeed: 3000,
		controlNav: false,
		directionNav: true,
		prevText: "&#171;",
		nextText: "&#187;"
	});
	$('.flexslider').flexslider({
		animation: "slide",
		directionNav: false
	});
		
	$('a[href*=#]:not([href=#])').click(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') || location.hostname == this.hostname) {
			var target = $(this.hash);
			target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			if ($(window).width() < 768) {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
					}, 1000);
					return false;
				}
			}
			else {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
					}, 1000);
					return false;
				}
			}

		}
	});
	
	$('#toTop').click(function() {
		$('html,body').animate({
			scrollTop: 0
		}, 1000);
	});
	
	var timer;
    $(window).bind('scroll',function () {
        clearTimeout(timer);
        timer = setTimeout( refresh , 50 );
    });
    var refresh = function () {
		if ($(window).scrollTop()>100) {
			$(".tagline").fadeTo( "slow", 0 );
		}
		else {
			$(".tagline").fadeTo( "slow", 1 );
		}
    };
		
});
</script>
  </body>
</html>