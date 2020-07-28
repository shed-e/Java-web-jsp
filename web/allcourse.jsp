<%--
  Created by IntelliJ IDEA.
  User: 31359
  Date: 2020/6/7
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- META -->
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- TITLE -->
    <title>MyVersity.com</title>

    <!-- Main StyleSheet -->
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/libs/animate.css">
    <style>

        a{text-decoration:none}

        a:hover{text-decoration:none}

    </style> <!--去除超链接下划线-->


    <!-- bxSlider CSS file -->
    <link href="css/jquery.bxslider.css" rel="stylesheet" />


    <!-- LayerSlider stylesheet -->
    <link rel="stylesheet" href="layerslider/css/layerslider.css" type="text/css">
    <!-- External libraries: jQuery & GreenSock -->
    <script src="layerslider/js/jquery.js" type="text/javascript"></script>
    <script src="layerslider/js/greensock.js" type="text/javascript"></script>
    <!-- LayerSlider script files -->
    <script src="layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
    <script src="layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>

    <script src="js/bootstrap.min.js" type="text/javascript"></script>


    <!-- bxSlider Javascript file -->
    <script src="js/jquery.bxslider.js"></script>
    <script>
        $(document).ready(function(){
            $('.bxslider').bxSlider({

                pager: false,
                controls: true,
                auto: true


            });
        });
    </script>



    <link rel="stylesheet" type="text/css" href="lightbox/jquery.fancybox.css" media="screen" />
    <script src="lightbox/jquery.fancybox.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {

            $('.fancybox').fancybox();

        });
    </script>


    <!-- GOTO TOP JQUERY -->
    <script type="text/javascript">
        $(function() {
            $(window).scroll(function() {
                if($(this).scrollTop() != 0) {
                    $('#gotop').fadeIn();
                } else {
                    $('#gotop').fadeOut();
                }
            });

            $('#gotop').click(function() {
                $('body,html').animate({scrollTop:0},800);
            });
        });
    </script>



    <!-- HEADER JQUERY -->
    <script type="text/javascript">
        $(function() {
            $(window).scroll(function() {
                if($(this).scrollTop() >= 200) {
                    $('.header').addClass("header_fix");
                } else {
                    $('.header').removeClass("header_fix");
                }
            });
        });
    </script>

    <script>
        function exitSystem() {
            var ok = confirm("Are you sure you want to exit？");
            if (ok){
            }
        }
    </script>




</head>

<body>



<div class="header">
    <div class="container">

        <a href="#" class="logo"><img src="images/logo.png" alt="" /></a>

        <div class="nav">
            <ul>
                <li><a href="Shome.jsp">Home</a></li>
                <li><a href="#faicons">Club</a></li>
                <li>
                    <%
                        if (request.getSession().getAttribute("username")!=null){
                            String Username = request.getSession().getAttribute("username").toString();
                    %>
                    <a href="#">Welcome，<%=Username %></a>
                    <%}%>
                </li>
                <li><a href="login%20and%20reg.jsp">sign in</a></li>
                <li><a href="logout.jsp" onclick="exitSystem()">Sign out</a></li>
            </ul>
        </div>
    </div>
</div>




<div class="wrapper">


    <div class="common_section" id="faicons" style="background:#f7f7f7;">
        <div class="container">

            <h2>Course List</h2>
            <h4 style="margin:0 0 40px 0;">One machine can do the work of fifty ordinary men. No machine can do the work of one extraordinary man</h4>



            <div class="insider">

                <div class="iconblock">
                    <span class="fa fa-calculator"><a href="pp.jsp">Project Practice</a></span> &nbsp;
                </div>

                <div class="iconblock">
                    <span class="fa fa-bus"><a href="#"> WEB</a></span>&nbsp;
                </div>

                <div class="iconblock">
                    <span class="fa fa-tachometer "><a href="backend.jsp">Back End</a></span> &nbsp;
                </div>

                <br clear="all" />

                <div class="iconblock">
                    <span class="fa fa-folder-open"><a href="#">Big Data</a></span> &nbsp;
                </div>

                <div class="iconblock">
                    <span class="fa fa-shopping-cart "><a href="#">Cloud Computin</a></span> &nbsp;
                </div>

                <div class="iconblock">
                    <span class="fa fa-spinner  "><a href="#">Mobile Dev</a></span> &nbsp;
                </div>

            </div>


        </div>
    </div>

    <div class="common_section" id="">
        <div class="container">

            <h2>Comprehensive Ranking</h2>
            <h4 style="margin:0 0 40px 0;">Interest is the best teacher.</h4>


            <br clear="all" />

            <ul class="bxslider">

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para"><a href="#">
                            (MTC) data exchange using sqoop
                        </a></div>
                        <div class="clientinfo">
                            <img src="images/clients/c1.jpg" alt="" />
                        </div>
                    </div>
                </li>

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para"><a href="#">
                            (MTC) getting started with Java
                        </a></div>
                        <div class="clientinfo">
                            <img src="images/clients/c2.jpg" alt="" />
                        </div>
                    </div>
                </li>

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            (MTC) using bootstrap to design responsive websites
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/c3.jpg" alt="" />
                        </div>
                    </div>
                </li>
            </ul>

        </div>
    </div>

    <div class="common_section" id="testimonials_part">
        <div class="container">

            <!--<h2>Comprehensive Ranking</h2>
            <h4 style="margin:0 0 40px 0;">Interest is the best teacher.</h4>-->


            <br clear="all" />

            <ul class="bxslider">

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para"><a href="#">
                            (MTC) data persistence using Hibernate Framework
                        </a></div>
                        <div class="clientinfo">
                            <img src="images/clients/c4.jpg" alt="" />
                        </div>
                    </div>
                </li>

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            (MTC) using spring and spring MVC frame architecture
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/c5.jpg" alt="" />
                        </div>
                    </div>
                </li>

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            (MTC) introduction to Hadoop big data analysis
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/c6.jpg" alt="" />
                        </div>
                    </div>
                </li>
            </ul>

        </div>
    </div>

    <div class="common_section" id="testimonials_part">
        <div class="container">


            <br clear="all" />

            <ul class="bxslider">

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            (MTC) data exchange using sqoop
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/c1.jpg" alt="" />
                        </div>
                    </div>
                </li>

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            (MTC) getting started with Java
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/c2.jpg" alt="" />
                        </div>
                    </div>
                </li>

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            (MTC) using bootstrap to design responsive websites
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/c3.jpg" alt="" />
                        </div>
                    </div>
                </li>
            </ul>

        </div>
    </div>

    <div class="common_section" id="testimonials_part">
        <div class="container">

            <!--<h2>Comprehensive Ranking</h2>
            <h4 style="margin:0 0 40px 0;">Interest is the best teacher.</h4>-->


            <br clear="all" />

            <ul class="bxslider">

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            (MTC) data persistence using Hibernate Framework
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/c4.jpg" alt="" />
                        </div>
                    </div>
                </li>

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            (MTC) using spring and spring MVC frame architecture
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/c5.jpg" alt="" />
                        </div>
                    </div>
                </li>

                <li>
                    <div class="testimonial_box">
                        <div class="quote_button"><img src="images/icons/i7.png" alt="" /></div>
                        <div class="para">
                            (MTC) introduction to Hadoop big data analysis
                        </div>
                        <div class="clientinfo">
                            <img src="images/clients/c6.jpg" alt="" />
                        </div>
                    </div>
                </li>
            </ul>

        </div>
    </div>


    <div class="common_section" id="contact_part">
        <div class="container">

            <h2><a href="#">MORE</a></h2>
            <br clear="all" />
            <br clear="all" />
            <br clear="all" />
            <h2>Get in touch with us</h2>
            <h4>We value any comments from users!</h4>


            <br clear="all" />

            <form method="post" class="hpform">
                <input type="text" placeholder="Name" />
                <input type="email" placeholder="Email" />
                <textarea placeholder="Message"></textarea>
                <input type="submit" value="SEND" />
            </form>




        </div>
    </div>




    <div class="subscribe_section" id="subscribe_part">
        <div class="container">

            <h2>Subscribe to our newsletter</h2>


            <br clear="all" />


            <form method="post">
                <input type="email" placeholder="Enter your E-Mail" />
                <input type="submit" value="SUBSCRIBE" />
            </form>

        </div>
    </div>




    <div class="common_section">
        <div class="container">


            <a href="#" class="footer_logo"><img src="images/logo.png" alt="" /></a>

            <div class="copyright">Powered by NIIT ©2016 NIIT</div>

        </div>
    </div>


</div><!--wrapper-->


<script>
    jQuery("#layerslider").layerSlider({
        responsive: false,
        responsiveUnder: 1100,
        layersContainer: 1100,
        skin: 'fullwidth',
        hoverPrevNext: false,
        skinsPath: 'layerslider/skins/'
    });


</script>

<script src="js/wow.js"></script>
<script>
    wow = new WOW(
        {
            animateClass: 'animated',
            offset:       100
        }
    );
    wow.init();
    document.getElementById('moar').onclick = function() {
        var section = document.createElement('section');
        section.className = 'section--purple wow fadeInDown';
        this.parentNode.insertBefore(section, this);
    };
</script>

<script type="text/javascript">
    $(function() {
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top - 132
                    }, 2000);
                    return false;
                }
            }
        });
    });
</script>


</body>
</html>

