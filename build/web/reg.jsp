<%-- 
    Document   : reg.jsp
    Created on : Apr 5, 2016, 11:52:16 AM
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
                           <script>
                             function validate(){
       
        var pass=document.form1.pass.value;
        var cpass=document.form1.repass.value;
       
        
                             if(pass==0){
            alert("Enter your password");
            document.form1.pass.focus();
            
            return false;
        }
                              if(cpass==0){
            alert("Enter your password cofirmation");
            document.form1.repass.focus();
            
            
            return false;
        }
        if(pass!=cpass){
            alert("Incorrect Confiorm password");
            document.form1.pass.focus();
            
            return false;
        }
                             }
        </script>


			<!-- Bootstrap core CSS -->
			<link href="css/bootstrap.min.css" rel="stylesheet">

			<!-- Custom styles for this template -->
			<link href="css/custom.css" rel="stylesheet">
			<link href="css/flexslider.css" rel="stylesheet">
			
			<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
			<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700' rel='stylesheet' type='text/css'>
			<link href='http://fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>

			<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
			<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
			<![endif]-->
		</head>

		<body>
                      <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Registration Successfully ');</script>
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
							<li><a href="index_1.html">Home</a></li>
							<li><a href="vendor.jsp">Vendor</a></li>
							<li><a href="user.jsp">User</a></li>
                                                        <li><a href="hfrodo.jsp">FRoDO</a></li>
                                                         <li><a href="puf.jsp">PUF</a></li>
							<li><a href="attacker.jsp">Attacker</a></li>
                                                        <li><a href="index_1.html">Logout</a></li>
						</ul>
					</div><!--/.nav-collapse -->
				</div>
			</div>
                    
                    <div id="topWrap" class="jumbotron">
			<div class="container">
				<div class="col-md-6 col-md-push-6 jumboText">
                       <form name="form1" style="color:black;" onsubmit="return validate();" onsubmit="return formValidation();" action="upload" method="post" enctype="multipart/form-data">
                    <center><h1 styles="font-family: 'Tangarine',serif">Registration Form</h1></center><br /><br />
                    
                    <label style="font-size: 20px;margin-left: 70px">Name</label><input type="text" class="textbox" placeholder="" required style="margin-left: 187px;" name="name"/><br /><br />
                    <label style="font-size: 20px;margin-left: 70px">password</label><input type="password" class="textbox" placeholder="" required style="margin-left: 152px;" name="pass"/><br /><br />
                     <label style="font-size: 20px;margin-left: 70px">Confirm Password</label>&nbsp;&nbsp;<input type="password" class="textbox" placeholder="" required style="margin-left: 60px;" name="repass"/><br /><br />
                     <label style="font-size: 20px;margin-left: 70px">Gender</label>
                    <select name="gender" class="textbox" required style="margin-left: 175px">
                        <option  selected>Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select><br /><br />
                    <label style="font-size: 20px;margin-left: 70px">Date of Birth</label><input type="date" class="textbox" required  style="margin-left: 122px" name="dob"/><br /><br />
                    <label style="font-size: 20px;margin-left: 70px">Card No.</label><input type="text" class="textbox" size="19" required style="margin-left: 165px" name="acno"/><br /><br />
                    <label style="font-size: 20px;margin-left: 70px">Bank Name</label>
                    <select name="bank" class="textbox" required style="margin-left: 130px">
                        <option  selected>Select Bank</option>
                        <option value="SBI">SBI</option>
                        <option value="Indian">Indian Bank</option>
                        <option value="ICIC">ICIC</option>
                        <option value="KVB">KVB</option>
                        <option value="IOB">IOB</option>
                    </select><br /><br />
                    <label style="font-size: 20px;margin-left: 70px">Address</label><input type="text" class="textbox" name="address" style="margin-left: 167px;"/>&nbsp;<br /><br />
                    <label style="font-size: 20px;margin-left: 70px">Contact No</label><input type="text" name="cno" class="textbox"  name="cno" style="margin-left: 135px" /><br /><br />
                     <label style="font-size: 20px;margin-left: 70px">Profile Image<input type="file" name="file" class="textbox" style="margin-left:10px;width: 300px"/><br /><br />
                   
                    <input type="submit" class="myButton" style="margin-left: 150px" value="SignUp"/>
                    &nbsp; &nbsp; <input type="reset" class="myButton" />
                </form> 
            
                                    <!--<h1>micro-payments</h1>-->
                                                 
					<!--<a class="btn btn-lg btn-success actionBtn" href="#"><i class="fa fa-mobile fa-4x pull-left"></i><span class="line1">Available on the</span><br/><span class="line2">App Store</span></a>-->
				</div>
				<div class="col-md-6 col-md-pull-6 hidden-xs">
					<div class="mobile">
						<div class="mobileSlider">
							<ul class="slides">
								<li>
									<img src="assets/img/reg1.png"/>
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