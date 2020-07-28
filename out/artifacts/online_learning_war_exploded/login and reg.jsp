<%@ page import="com.mysql.cj.protocol.Message" %>
<%@ page import="java.awt.*" %><%--
  Created by IntelliJ IDEA.
  User: 31359
  Date: 2020/6/5
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyVersity.com</title>
    <link rel="stylesheet" href="Rcss/style.css">
    <link href="Rcss/popup-box.css" rel="stylesheet" type="text/css" media="all" />
    <!--<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Sign In And Sign Up Forms  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <script src="Rjs/jquery.min.js"></script>
    <script src="Rjs/jquery.magnific-popup.js" type="text/javascript"></script>
    <script type="text/javascript" src="Rjs/modernizr.custom.53451.js"></script>
    <script>
        $(document).ready(function() {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>
    <!--获取到登录信息并简单判断，然后弹出对话框-->
    <%
        String message=(String) request.getAttribute("message");
        if (message!=null){
    %>
    <script>
        alert("<%=message%>");
    </script>
    <%
        }
    %>

    <%
        String Rmessage=(String) request.getAttribute("message");
        if (Rmessage=="Registered successfully"){
    %>
    <script>
        alert("<%=Rmessage%>");
        window.open("login and reg.jsp");
    </script>
    <%
        }
    %>
    <!--获取到注册成功信息并简单判断，然后弹出对话框-->

</head>
<body>
<h1>Sign In and Sign Up</h1>
<div class="w3layouts">
    <div class="signin-agile">
        <h2>SIGN IN</h2>
        <form action="LoginServlet" method="">
            <input type="text" name="id" class="name" placeholder="User ID" required="">
            <input type="password" name="password" class="password" placeholder="Password" required="">
            <ul>
                <li>
                    <input type="checkbox" id="brand1" value="Admin" name="usertype">
                    <label for="brand1"><span></span>Administrator login?</label>
                </li>
            </ul>
            <a href="#">Forget password?</a><br>
            <div class="clear"></div>
            <input type="submit" value="Sign In">
        </form>
    </div>
    <div class="signup-agileinfo">
        <h3>SIGN UP</h3>
        <p>Welcome to niit learning more efficiently</p>
        <p>Join the NIIT cloud class and regain interest in learning</p>
        <div class="more">
            <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">Click Register</a>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div class="footer-w3l">
    <p class="agileinfo"> Powered by NIIT ©2016 NIIT  <a href="http://www.mycodes.net/" target="_blank"></a>
    </p>
</div>
<div class="pop-up">
    <div id="small-dialog" class="mfp-hide book-form">
        <h3>Registration Form </h3>
        <form action="RegServlet" method="post">
            <input type="text" name="id" placeholder="User ID" required=""/>
            <input type="password" name="Password" class="password" placeholder="Password" required=""/>
            <input type="text" name="type" value="User" placeholder="User Type" required=""/>
            <input type="text" name="fname" placeholder="Full Name" required=""/>
            <input type="text" name="Email" class="email" placeholder="E-mail" required=""/>
            <input type="text" name="cnum" placeholder="Contact" required=""/>
            <input type="submit" value="Click Register">
        </form>
    </div>
</div>
</body>
</html>