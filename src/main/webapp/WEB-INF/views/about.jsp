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


<section id="splash-blue" class="z-depth-1">
    <div class="container">
        <div class="row">
            <div class="col s12 center-align">
                <div class="col s12 center-align">
                    <object id="hi-there" type="image/svg+xml" height="70%" width="70%"
                            data="${pageContext.request.contextPath}/resources/img/koteDv.svg">
                        Kiwi Logo
                    </object>
                </div>
                <h1 class="white-text main-title">KoteDev</h1>
                <h5 class="white-text bott">Build backends in your browser piecing together APIs and services as
                    building blocks.</h5>
                <br>
            </div>
        </div>
    </div>
</section>


<main>
    <div class="container">
        <div class="section">
            <div class="card-panel">
                <div class="row">
                    <div class="card col s6">
                        <form method="POST" action="/upload" enctype="multipart/form-data">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input placeholder="Name" required type="text" name="name"
                                           class="validate">
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input placeholder="Title" required type="text" name="title"
                                           class="validate">
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">

                                    <div class="file-field input-field">
                                        <div class="btn">
                                            <span>File</span>
                                            <input type="file" method="POST" accept=".jpg" name="file"/>
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text"
                                                   placeholder="Upload one  files">
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="row">

                                <div class="input-field col s3">
                                    <button type="submit" class="waves-effect waves-light btn">Enter</button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <c:if test="${ entity != null}">
                        <div class="row">
                            <div class="col s6">
                                <div class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <c:if test="${ (photo != null) && !(photo eq '')}">
                                            <img class="activator" src="${ photo }">
                                        </c:if>
                                    </div>
                                    <div class="card-content">


                                        <div class="row">
                                            <div class="col-md-3">
                                                <p><b>Name:</b> ${ entity.name}</p>
                                                <p><b>Title:</b> ${ entity.title}</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</main>


<footer class="strap-footer full left">
    <div class="container text-white">
        <div class="row">
            <div class="col s12 m12 l4">
                <p class="small text-left">Through powerful analytics and segmentation from smartphones, wearables and
                    health data applications, <span class="bold">Strap</span> empowers some of the world’s largest
                    brands and retailers to securely engage consumers at the right time while building brand loyalty and
                    gaining valuable consumer insights.</p>
                <p class="small">
                    <span class="margined-right"><i class="icon icon-phone"></i> (513) 813-8711</span>
                    <span class=""><i class="icon icon-email"></i> <a
                            href="mailto:hello@straphq.com">hello@straphq.com</a></span>
                </p>
                <div class="col s12 m6 no-padding">
                    <span data-hs-cos-type="cta" data-hs-cos-general-type="widget" style=""
                          class="hs_cos_wrapper hs_cos_wrapper_widget hs_cos_wrapper_type_cta"
                          id="hs_cos_wrapper_footer_cta"><!--HubSpot Call-to-Action Code -->
<span id="hs-cta-wrapper-32c73d27-316c-4bf3-852f-9bff013182b6" class="hs-cta-wrapper"> <span
        id="hs-cta-32c73d27-316c-4bf3-852f-9bff013182b6" class="hs-cta-node hs-cta-32c73d27-316c-4bf3-852f-9bff013182b6"
        style="visibility: visible;"><a title="Get Started" cta_dest_link="https://www.straphq.com/get-started" style=""
                                        href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=5b025dfe-fec6-432e-9e6b-32058b7ccea3&amp;placement_guid=32c73d27-316c-4bf3-852f-9bff013182b6&amp;portal_id=514770&amp;redirect_url=APefjpEl-4tfAzSpe6cybVNlTkurNfH5JPhQ0jvtSLcXPaHt2Vs-RjCIYg1oSXUlIKyPfd-Ilj4jnkBOyQmln3SOr1JVizWTmWXN1vynzYvOgpnN7_uYe2FQVs_J9IDOQnI_fs2o1BCLQYyvBWt1EewQ7zpqsUoDm2mMfzMd5mbbZyPJMcx-7CyKSDT7ZbEn1zwt23VaKKjMny5g_0jHfUzuG5oukiJ-Ff7njBqGU16ZxOKg8FpwUrrlCjr51DGf3qjd2VADPOLKPhH4iV_HcpBCpdO7DhbiHw&amp;hsutk=def459a8b3bbbdf46e0905a6dfd423f9&amp;utm_referrer=https%3A%2F%2Fwww.straphq.com%2Fproducts&amp;canon=https%3A%2F%2Fwww.straphq.com%2Fproducts&amp;__hsfp=2266591076"
                                        class="cta_button btn-primary btn-raised waves-effect btn-small btn-inverted btn"
                                        id="cta_button_514770_5b025dfe-fec6-432e-9e6b-32058b7ccea3"> Get Started </a> </span> <script
        src="//js.hscta.net/cta/current.js" charset="utf-8"></script> <script type="text/javascript">
        hbspt.cta.load(514770, '32c73d27-316c-4bf3-852f-9bff013182b6', {});
    </script> </span>
                        <!-- end HubSpot Call-to-Action Code --></span>
                </div>
            </div>
            <div class="col s12 m12 l8">
                <div class="col s12 m3 l3">
                    <h4 class="left full">Products</h4>
                    <ul class="text-left left">
                        <li class="block"><a href="/products/strap-engage">Engage</a>
                        </li>
                        <li class="block"><a href="/products/strap-integrate">Integrate</a>
                        </li>
                    </ul>
                </div>
                <div class="col s12 m3 l3">
                    <h4 class="left full">Resources</h4>
                    <ul class="text-left left">
                        <li class="block"><a href="/white-papers-and-guides">Marketer's Library</a>
                        </li>
                        <li class="block"><a href="/resources">Blog</a>
                        </li>
                        <li class="block"><a href="http://status.straphq.com">Status</a>
                        </li>
                        <li class="block"><a href="/frequently-asked-questions">FAQ</a>
                        </li>
                    </ul>
                </div>
                <div class="col s12 m3 l3">
                    <h4 class="left full">Company</h4>
                    <ul class="text-left left">
                        <li class="block"><a href="/why-strap">Why Strap?</a>
                        </li>
                        <li class="block"><a href="/company">About &amp; Contact</a>
                        </li>
                        <li class="block"><a href="http://www.angel.co/strap/jobs">Jobs</a>
                        </li>
                    </ul>
                </div>
                <div class="col s12 m3 l3">
                    <h4 class="left full">From the Blog</h4>
                    <ul class="text-left left">


                        <li class="post-title"><a href="//www.straphq.com/resources/new-feature-ihealth-support">New
                            Feature: New Supported Platform: iHealth</a></li>

                    </ul>
                </div>
            </div>
            <div class="full left vert-margined-20">
                <div class="col s12 m4 text-center right hide-on-med-and-up">
                    <h3>
                        <a target="_blank" href="https://www.facebook.com/getstrap" class="horiz-padded"><i
                                class="icon-facebook"></i></a><a target="_blank" href="https://twitter.com/getstrap"
                                                                 class="horiz-padded"><i class="icon-twitter"></i></a><a
                            target="_blank" href="https://www.linkedin.com/company/strap" class="horiz-padded"><i
                            class="icon-linkedin"></i></a><a target="_blank" href="https://github.com/strap/"
                                                             class="horiz-padded"><i class="icon-github"></i></a>
                    </h3>
                </div>
                <div class="col s12 m4 text-right right hide-on-small-only">
                    <h3>
                        <a target="_blank" href="https://www.facebook.com/getstrap" class="horiz-padded"><i
                                class="icon-facebook"></i></a><a target="_blank" href="https://twitter.com/getstrap"
                                                                 class="horiz-padded"><i class="icon-twitter"></i></a><a
                            target="_blank" href="https://www.linkedin.com/company/strap" class="horiz-padded"><i
                            class="icon-linkedin"></i></a><a target="_blank" href="https://github.com/strap/"
                                                             class="horiz-padded"><i class="icon-github"></i></a>
                    </h3>
                </div>
                <div class="col s12 m8">
                    <p class="small full source-org copyright">&copy; 2015 Strap. Made with <i class="icon-heart"></i>
                        in Cincinnati, OH. <a href="/terms" class="horiz-margined">Terms</a><a href="/privacy"
                                                                                               class="horiz-margined">Privacy
                            Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>


<!--  Scripts-->
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/init.js"></script>

<script>
    var hi = new Vivus('hi-there', {type: 'async', duration: 90, start: 'autostart', dashGap: 20, forceRender: false},
            function () {
                if (window.console) {
                    console.log('Animation finished. [log triggered from callback]');
                }
            });
</script>
</body>
</html>
