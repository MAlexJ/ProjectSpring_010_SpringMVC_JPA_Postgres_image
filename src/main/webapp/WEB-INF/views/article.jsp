<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>KoteDev</title>

    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/materialize.css" type="text/css" rel="stylesheet"
          media="screen,projection"/>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet"
          media="screen,projection"/>

    <!-- vivus  -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/vivus.min.js"></script>
</head>
<body>


<!-- Navbar goes here -->
<div class="navbar-fixed">
    <nav class="white">
        <div class="nav-wrapper">
            <div class="col s12">
                <a class="brand-logo" href="/">
                    <img class="logo-img" alt="Logo"
                         src="${pageContext.request.contextPath}/resources/img/logo.png">
                </a>
                <div class="right-nav hide-on-med-and-down">
                    <a class="waves-effect waves-light btn-flat login" href="#">login</a>
                </div>
                <ul class="right hide-on-med-and-down text-darken-1">
                    <li><a href="/article">AngularJS</a></li>
                    <li><a href="#">Java</a></li>
                    <li><a href="#">Spring</a></li>
                    <li><a href="#">RDBMS</a></li>
                    <li><a href="#">Contacts</a></li>
                    <li><a href="/about">About</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<!-- Page Layout here -->

<main>
    <div class="row">

        <div class="col s12 m4 l1"> <!-- Note that "m4 l3" was added -->
            <div class="collection">
                <a href="#!" class="collection-item">Alan<span class="badge">1</span></a>
                <a href="#!" class="collection-item">Alan<span class="new badge">4</span></a>
                <a href="#!" class="collection-item">Alan</a>
                <a href="#!" class="collection-item">Alan<span class="badge">14</span></a>
            </div>
        </div>

        <div class="col s12 m8 l11"> <!-- Note that "m8 l9" was added -->
           <div class="container">
               <p>sderhdrherhreherherhe</p>
           </div>
        </div>

    </div>
</main>


<footer>
    <div id="footer-nav">
        <div class="container">
            <div class="row">
                <div class="col s12 m3">
                    <p>STAMPLAY LTD</p>
                    <ul>
                        <li><a href="/terms">Terms of service</a></li>
                        <li><a href="/privacy">Privacy</a></li>
                    </ul>
                    <a rel="nofollow" href="https://mixpanel.com/f/partner"><img alt="Mobile Analytics"
                                                                                 src="//cdn.mxpnl.com/site_media/images/partner/badge_blue.png"></a>
                </div>
                <div class="col s12 m3">
                    <p>COMPANY</p>
                    <ul>
                        <li><a href="/team">Team</a></li>
                        <li><a target="_blank" href="https://blog.stamplay.com/">Blog</a></li>
                        <li><a target="_blank" href="https://stamplay.growsumo.com/">Partner with us</a></li>
                    </ul>

                </div>
                <div class="col s12 m3">
                    <p>PLATFORM</p>
                    <ul>
                        <li><a href="/pricing">Pricing</a></li>
                        <li><a href="/docs/hosting">Docs</a></li>
                        <li><a target="_blank" href="https://stamplaykb.stamplayapp.com">Community</a></li>
                        <li><a target="_blank" href="https://slackinvites.stamplayapp.com">Join us on Slack</a></li>
                    </ul>
                </div>
                <div class="col s12 m3">
                    <p>
                        <a style="margin-right:5px;" target="_blank" href="https://facebook.com/stamplay"><i
                                class="fa fa-facebook fa-lg"></i>
                        </a><a style="margin-right:5px;" target="_blank" href="https://twitter.com/stamplay"><i
                            class="fa fa-twitter fa-lg"></i></a>
                        <a target="_blank" href="https://github.com/Stamplay"><i class="fa fa-github fa-lg"></i></a>
                    </p>
                    <!-- Begin MailChimp Signup Form -->
                    <div id="mc_embed_signup">
                        <form novalidate="" target="_blank" class="validate" name="mc-embedded-subscribe-form"
                              id="mc-embedded-subscribe-form" method="post"
                              action="//stamplay.us6.list-manage.com/subscribe/post?u=b066facd44f5a378509bc4e82&amp;id=f1fb33c6e5">
                            <div id="mc_embed_signup_scroll">
                                <p style="margin-bottom: 0px;">Join the newsletter</p>
                                <div class="mc-field-group">
                                    <input type="email" style="color:#fbc02d;" id="mce-EMAIL" class="required email"
                                           name="EMAIL" value="">
                                </div>
                                <div class="clear" id="mce-responses">
                                    <div style="display:none" id="mce-error-response" class="response"></div>
                                    <div style="display:none" id="mce-success-response" class="response"></div>
                                </div>
                                <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                <div style="position: absolute; left: -5000px;"><input type="text" value=""
                                                                                       tabindex="-1" class="mailchimp"
                                                                                       name="b_b066facd44f5a378509bc4e82_f1fb33c6e5">
                                </div>
                                <div class="clear">
                                    <input type="submit" class="btn button darken-2" id="mc-embedded-subscribe"
                                           name="subscribe to newsletter" value="Subscribe"></div>
                            </div>
                        </form>
                    </div>
                    <!--End mc_embed_signup-->
                </div>
            </div>

        </div>

    </div>
</footer>


<!--  Scripts-->
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/init.js"></script>
</body>
</html>
