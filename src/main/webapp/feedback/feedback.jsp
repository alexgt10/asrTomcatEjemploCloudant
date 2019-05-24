<!doctype html>
<!--[if IE 9]> <html class="no-js ie9 fixed-layout" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js " lang="en"> <!--<![endif]-->
<head>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
    <!-- Site Meta -->
    <title>Music analyzer</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

	<!-- Google Fonts -->
 	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,600,700" rel="stylesheet"> 

	<!-- Custom & Default Styles -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="style.css">

	<!--[if lt IE 9]>
		<script src="js/vendor/html5shiv.min.js"></script>
		<script src="js/vendor/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	
	<div id="wrapper">
		
		<section class="section transheader bgcolor ptop180">
			<div class="container">
				<div class="row">	
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center">
						<img src="upload/service_title_01.png" alt="" class="img-responsive">
						<h2>Resultados</h2>
					</div><!-- end col -->
				</div><!-- end row -->
			</div><!-- end container -->
		</section><!-- end section -->

		<section class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="feature-widget">
							<h3><strong>Transcription</strong></h3>
							<p>${requestScope.original}</p>
						</div><!-- end about-widget -->	
					</div><!-- end col -->

					<div class="col-md-6">
						<div class="feature-img">
						<%
						String cancion = (String)request.getParameter("cancion");
						System.out.println(cancion);
						String imagen = "/images/"+cancion.toString()+".jpg";
						System.out.println(imagen);
						%>
							<img src="<%=imagen%>" alt="" class="img-responsive wow fadeInRight">
						</div>
					</div>
				</div><!-- end row -->

				<hr class="invis1">

				<div class="row">
					<div class="col-md-6">
						<div class="feature-img">
							<img src="<%=imagen%>" alt="" class="img-responsive wow fadeInLeft">
						</div>
					</div>

					<div class="col-md-6">
						<div class="feature-widget">
							<h3><strong>Translation to spanish</strong></h3>
							<p>${requestScope.traducido}</p>
						</div><!-- end about-widget -->	
					</div><!-- end col -->
				</div><!-- end row -->
				<a href="index.jsp">Go back</a>
			</div><!-- end container -->
		</section><!-- end section -->
	<!-- jQuery Files -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/parallax.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>