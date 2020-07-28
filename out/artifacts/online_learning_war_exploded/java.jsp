<%--
  Created by IntelliJ IDEA.
  User: 31359
  Date: 2020/6/7
  Time: 17:38
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

    <script>
        function sub() {
            alert("Successful purchase");
            document.getElementById("f1").submit();


        }
    </script>



</head>

<body>


<div class="header">
    <div class="container">

        <a href="#" class="logo"><img src="images/logo.png" alt="" /></a>

        <div class="nav">
            <ul>
                <li><a href="backend.jsp">Back</a></li>
                <li><a href="#faicons">Club</a></li>
                <li>
                    <!--获取已登录的用户名，并显示-->
                    <%
                        if (request.getSession().getAttribute("username")==null){
                            //response.sendRedirect("login and reg.jsp");
                    %>
                    <script>
                        alert("You are not logged in, please log in");
                        window.location.href="login and reg.jsp";
                    </script>
                    <%
                    }else {
                        String Username = request.getSession().getAttribute("username").toString();
                    %>
                    <a href="#">Welcome ,<%=Username%></a>
                    <%}%>

                </li>
                <li><a href="login%20and%20reg.jsp">sign in</a></li>
                <li><a href="logout.jsp" onclick="exitSystem()">Sign out</a></li>
            </ul>
        </div>
    </div>
</div>




<div class="wrapper">



    <div class="feature_section" id="features">
        <div class="container">


            <div class="leftside">
                <img src="images/thumbs/b1.png" alt=""  class="wow bounceInLeft animated" data-wow-duration="2s" data-wow-offset="300" data-wow-delay="0.2s" />
            </div>


            <div class="rightside">
                <h2>(MTC) getting started with Java</h2>
                <p>
                    Designing is a matter of concentration. You go deep into what you want to do. It's about intensive research, really. The concentration is warm and intimate and like the fire inside the earth - intense but not distorted. You can go to a place, really feel it in your heart. It's actually a beautiful feeling.
                </p>

                <div class="feature">
                    <span class="fa fa-life-ring"></span>
                    <div class="description">
                        <strong>NIIT Expert Lecturer</strong> <br />
                        Designing is a matter of concentration. You go deep into what you want to do. It's about intensive research, really.
                    </div>
                </div>

                <br clear="all" />
                <form id="f1" action="OrderaddServlet" method="post">
                    <input name="id" value="103" type="hidden">
                    <input name="uid" value="${username}" type="hidden">
                    <a href="#" class="button3" onclick="sub()">Buy Now</a>
                    <a href="#" class="button4">$199</a>
                </form>
            </div>

        </div>
    </div>

    <div class="feature_section ano_feature_section">
        <div class="container">


            <div class="leftside">
                <h2>Describe more about Java</h2>
                <p>
                    Designing is a matter of concentration. You go deep into what you want to do. It's about intensive research, really. The concentration is warm and intimate and like the fire inside the earth - intense but not distorted. You can go to a place, really feel it in your heart. It's actually a beautiful feeling.
                </p>

                <div class="feature">
                    <span class="fa fa-life-ring"></span>
                    <div class="description">
                        <strong>Good in Performance</strong> <br />
                        Designing is a matter of concentration. You go deep into what you want to do. It's about intensive research, really.
                    </div>
                </div>

                <div class="feature">
                    <span class="fa fa-play-circle-o "></span>
                    <div class="description">
                        <strong>Class Hour :</strong> <br />
                        <strong><a href="http://www.training-china.com/course/index2/10/169.html">1.Introduction to Java</a></strong> <br />
                        <strong><a href="http://www.training-china.com/course/index2/10/170.html">2.Understanding the building blocks of Java programs</a></strong> <br />
                        <strong><a href="http://www.training-china.com/course/index2/10/lessons.html">More</a></strong> <br />

                    </div>
                </div>

            </div>


            <div class="rightside">
                <img src="images/thumbs/t2.jpg" alt="" class="wow bounceInRight animated imagethumb2" data-wow-offset="300" data-wow-delay="0.2s" />
                <br/><br/>NIIT Expert Lecturer
            </div>

        </div>
    </div>



    <div class="common_section" id="contact_part">
        <div class="container">

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

