<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>Upload Photo</title>

    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/materialize.css" type="text/css" rel="stylesheet"
          media="screen,projection"/>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet"
          media="screen,projection"/>
</head>

<body>

<nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="#" class="brand-logo">Logo</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
        </ul>

        <ul id="nav-mobile" class="side-nav">
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
        </ul>
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
</nav>

<div class="main">
    <div class="container">
        <div class="section">
            <div class="card-panel">
                <div class="row">
                    <div class="card col s6">
                        <form method="POST" action="/upload" enctype="multipart/form-data">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input placeholder="Name"  required type="text" name="name"
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

                    <div class="row">
                        <div class="col s6">
                            <div class="card">
                                <div class="card-image waves-effect waves-block waves-light">
                                    <c:if test="${ (photo != null) && !(photo eq '')}">
                                        <img class="activator" src="${ photo }">
                                    </c:if>
                                </div>
                                <div class="card-content">

                                    <c:if test="${ entity != null}">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <p><b>Name:</b> ${ entity.name}</p>
                                                <p><b>Title:</b> ${ entity.title}</p>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="page-footer blue lighten-3">
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
</body>
</html>
