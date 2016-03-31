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
                <a class="brand-logo" href="#">
                    <img class="logo-img" alt="Logo"
                         src="${pageContext.request.contextPath}/resources/img/logo.png">
                </a>
                <div class="right-nav hide-on-med-and-down">
                    <a class="waves-effect waves-light btn-flat login" href="#">login</a>
                </div>
                <ul class="right hide-on-med-and-down text-darken-1">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Java</a></li>
                    <li><a href="#">Contacts</a></li>
                    <li><a href="#">About</a></li>
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
                            data="${pageContext.request.contextPath}/resources/img/koteDv.svg" >
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
        <br><br>
        <br><br>
        <h1 class="header center orange-text">Starter Template</h1>
        <div class="row center">
            <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
        </div>
        <br><br>
    </div>

    <div class="container">
        <c:if test="${ listDTO != null}">
            <jsp:include page="listProduct.jsp" flush="true"/>
        </c:if>

        <ul class="pagination center">
            <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
            <li class="active"><a href="#!">1</a></li>
            <li class="waves-effect"><a href="#!">2</a></li>
            <li class="waves-effect"><a href="#!">3</a></li>
            <li class="waves-effect"><a href="#!">4</a></li>
            <li class="waves-effect"><a href="#!">5</a></li>
            <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
        </ul>

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

<div class="parallax-container">
    <div class="parallax">
        <img src="http://fedora.or.id/wp-content/themes/fedora-id/assets/imgs/single-bg.png"
             style="display: block; transform: translate3d(-50%, 227px, 0px);">
    </div>
</div>


<footer class="site-footer blue lighten-3">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Company Bio</h5>
                <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's
                    our full time job. Any amount would help support and continue development on this project and is
                    greatly appreciated.</p>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            Made by <a class="text-lighten-3" href="http://materializecss.com">Materialize</a>
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
