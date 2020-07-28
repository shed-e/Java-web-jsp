<%@ page import="java.util.List" %>
<%@ page import="com.entity.Courses" %>
<%@ page import="com.dao.Coudaoimpl" %>
<%@ page import="com.dao.Coudao" %>
<%@ page import="com.dao.Orderdao" %>
<%@ page import="com.dao.Orderimpl" %><%--
  Created by IntelliJ IDEA.
  User: 31359
  Date: 2020/6/12
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="style-responsive.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
    <link rel="stylesheet" href="css/libs/animate.css">


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

    <script>
        function exitSystem() {
            var ok = confirm("Are you sure you want to exit？");
            if (ok){
            }
        }
    </script>


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


    <script type="text/javascript">

        if($(window).width() <= 900){
            $(document).ready(function() {



                $('.mobile .title').click(function() {

                    $(this).next("ul").slideToggle();
                    $(this).toggleClass("minus");

                });



            });

        }
    </script>


</head>



<body>

<div class="header">
    <div class="container">

        <a href="#" class="logo"><img src="images/logo.png" alt="" /></a>

        <div class="nav mobile">
            <div class="title">Menu <span class="fa "></span></div>
            <ul>
                <li><a href="allcourse.jsp">Courses</a></li>
                <li><a href="#features">Club</a></li>
                <li><a href="#testimonials_part">Certificate employment </a></li>
                <li><a href="#pricing_part">cooperation</a></li>
                <li><a href="Shome.jsp">Back</a></li>
                <li><a href="logout.jsp" onclick="exitSystem()">Sign out</a></li>
            </ul>
        </div>

    </div>
</div>
<div class="pricing_table_section" id="pricing_part">
    <div class="container">

        <h2>Courses Joined</h2>
        <h4>study hard and make progress every day</h4>


        <div class="insider">


            <div class="block">
                <div class="head">
                    <%
                        List<Courses> clist=new Orderimpl().findcourses(request.getSession().getAttribute("username"));
                        //for (Courses co:clist)
                        //{
                    %>
                    <h2><%=clist.get(0).getName()%></h2>
                    <p><strong></strong></p>
                </div>
                <ul>
                    <li>Backup Service <span><img src="" alt="" /></span></li>
                    <li>Total Users <span>1644120</span></li>
                    <li>Cloud Storage <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>24/7 Customer Service <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li><h5>$ <%=clist.get(0).getFees()%> Per Month</h5>
                        <%String url=clist.get(0).getUrl();%>
                        <a href="<%=url%>" class="button5">Learning</a></li>
                </ul>
            </div>


            <div class="block">
                <div class="head">
                    <h2><%=clist.get(0).getName()%></h2>
                    <p>From <strong>$59</strong> per month</p>
                </div>
                <ul>
                    <li>Total Users <span>10</span></li>
                    <li>Unlimited Styles <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Advance Protection <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Cloud Storage <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>24/7 Customer Service <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Backup Service <span><img src="images/icons/i9.png" alt="" /></span></li>
                    <li><h5><%=clist.get(0).getFees()%>Per Month</h5> <a href="#" class="button5 button6">Learning</a></li>
                </ul>
            </div>



            <div class="block">
                <div class="head">
                    <h2><%=clist.get(0).getName()%></h2>
                    <p>From <strong>$59</strong> per month</p>
                </div>
                <ul>
                    <li>Total Users <span>10</span></li>
                    <li>Unlimited Styles <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Advance Protection <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Cloud Storage <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>24/7 Customer Service <span><img src="images/icons/i8.png" alt="" /></span></li>
                    <li>Backup Service <span><img src="images/icons/i9.png" alt="" /></span></li>
                    <li><h5>$59 Per Month</h5> <a href="#" class="button5">Learning</a></li>
                </ul>
            </div>-->


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

</body>
</html>