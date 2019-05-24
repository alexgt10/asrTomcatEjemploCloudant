<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Music analyzer</title>
<!--
Fluid Gallery Template
http://www.templatemo.com/tm-500-fluid-gallery
-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">  
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="Font-Awesome-4.7/css/font-awesome.min.css">                
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      
    <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/hero-slider-style.css">                              
    <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="css/magnific-popup.css">                                 
    <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->

        <!-- These two JS are loaded at the top for gray scale including the loader. -->

        <script src="js/jquery-1.11.3.min.js"></script>
        <!-- jQuery (https://jquery.com/download/) -->

        <script>
		
            var tm_gray_site = false;
            
            if(tm_gray_site) {
                $('html').addClass('gray');
            }
            else {
                $('html').removeClass('gray');   
            }
        </script>
</head>

       <body>
        
        <!-- Content -->
        <div class="cd-hero">

            <!-- Navigation -->        
            <div class="cd-slider-nav">
                <nav class="navbar">
                    <div class="tm-navbar-bg">
                        
                        <a class="navbar-brand text-uppercase" href="index-gray.html"><i class="fa fa-picture-o tm-brand-icon"></i>Music Analyzer</a>

                        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item active selected">
                                    <a class="nav-link" href="#0" data-no="1">gallery <span class="sr-only">(current)</span></a>
                                </li>                                
                            </ul>
                        </div>                        
                    </div>

                </nav>
            </div> 

            <ul class="cd-hero-slider">
                <!-- Page 1 Gallery One -->
                <li class="selected">                    
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="1" data-page-type="gallery">
                            <div class="tm-img-gallery-container">
                                <div class="tm-img-gallery gallery-one">
                                <!-- Gallery One pop up connected with JS code below -->
                                    <div class="grid-item">
                                        <figure class="effect-sadie">
                                            <img src="img/tm-img-01-tn.jpg" alt="Image" class="img-fluid tm-img">
                                                <figcaption>
                                                <h2 class="tm-figure-title">Sia</h2>
                                                <p class="tm-figure-description">Chandeller</p>
                                                <a href="speechToText?cancion=sia"></a>
                                                </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-sadie">
                                            <img src="img/tm-img-02-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Ed Sheeran</h2>
                                                <p class="tm-figure-description">Perfect</p>
                                                <a href="speechToText?cancion=edsheeran"></a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-sadie">
                                            <img src="img/tm-img-03-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">The Greatest Showman</h2>
                                                <p class="tm-figure-description">Rewrite the stars</p>
                                                <a href="speechToText?cancion=rewrite_the_stars"></a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-sadie">
                                            <img src="img/tm-img-04-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Beyonce</h2>
                                                <p class="tm-figure-description">Halo</p>
                                                <a href="speechToText?cancion=beyonce"></a>
                                            </figcaption>           
                                        </figure>
                                    </div>  
                                    <div class="grid-item">
                                        <figure class="effect-sadie">
                                            <img src="img/tm-img-05-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Justin Beiber</h2>
                                                <p class="tm-figure-description">Love yourself</p>
                                                <a href="speechToText?cancion=justin"></a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-sadie">
                                            <img src="img/tm-img-06-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Miley Cyrus</h2>
                                                <p class="tm-figure-description">Wrecking ball</p>
                                                <a href="speechToText?cancion=miley"></a>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-sadie">
                                            <img src="img/tm-img-07-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Sia</h2>
                                                <p class="tm-figure-description">Cheap thrills</p>
                                                <a href="speechToText?cancion=sia2"></a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-sadie">
                                            <img src="img/tm-img-08-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Rihanna</h2>
                                                <p class="tm-figure-description">Diamonds</p>
                                                <a href="speechToText?cancion=rihana"></a>
                                            </figcaption>           
                                        </figure>
                                    </div>                                                                                                      
                                </div>                                 
                            </div>
                        </div>                                                    
                    </div>                    
                </li>
               
            </ul> <!-- .cd-hero-slider -->         
        </div> <!-- .cd-hero -->
        

        <!-- Preloader, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
        <div id="loader-wrapper">
            
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

        </div>
        
        <!-- load JS files -->
        
        <script src="js/tether.min.js"></script> <!-- Tether (http://tether.io/)  --> 
        <script src="js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
        <script src="js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
        <script src="js/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->
        
        <script>

            function adjustHeightOfPage(pageNo) {

                var pageContentHeight = 0;

                var pageType = $('div[data-page-no="' + pageNo + '"]').data("page-type");

                if( pageType != undefined && pageType == "gallery") {
                    pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .tm-img-gallery-container").height();
                }
                else {
                    pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height() + 20;
                }
               
                // Get the page height
                var totalPageHeight = $('.cd-slider-nav').height()
                                        + pageContentHeight
                                        + $('.tm-footer').outerHeight();

                // Adjust layout based on page height and window height
                if(totalPageHeight > $(window).height()) 
                {
                    $('.cd-hero-slider').addClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
                }
                else 
                {
                    $('.cd-hero-slider').removeClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
                }
            }

            /*
                Everything is loaded including images.
            */
            $(window).load(function(){

                adjustHeightOfPage(1); // Adjust page height

//                 /* Collapse menu after click 
//                 -----------------------------------------*/
//                 $('#tmNavbar a').click(function(){
//                     $('#tmNavbar').collapse('hide');

//                     adjustHeightOfPage($(this).data("no")); // Adjust page height       
//                 });

                /* Browser resized 
                -----------------------------------------*/
        
                // Remove preloader (https://ihatetomatoes.net/create-custom-preloading-screen/)
                $('body').addClass('loaded');

                // Write current year in copyright text.
                $(".tm-copyright-year").text(new Date().getFullYear());
                           
            });

            /* Google map
            ------------------------------------------------*/
            var map = '';
            var center;

            function initialize() {
                var mapOptions = {
                    zoom: 13,
                    center: new google.maps.LatLng(37.779724, -122.452152),
                    scrollwheel: false
                };
            
                map = new google.maps.Map(document.getElementById('google-map'),  mapOptions);

                google.maps.event.addDomListener(map, 'idle', function() {
                  calculateCenter();
                });
            
                google.maps.event.addDomListener(window, 'resize', function() {
                  map.setCenter(center);
                });
            }

            function calculateCenter() {
                center = map.getCenter();
            }

            function loadGoogleMap(){
                var script = document.createElement('script');
                script.type = 'text/javascript';
                script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' + 'callback=initialize';
                document.body.appendChild(script);
            }
        
            // DOM is ready
            $(function() {   
                loadGoogleMap(); // Google Map
            });

        </script>            

</body>
</html>