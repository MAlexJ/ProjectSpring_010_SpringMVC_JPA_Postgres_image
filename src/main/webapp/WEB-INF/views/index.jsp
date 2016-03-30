<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Upload Photo</title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"/>
</head>

<body>

<div class="modal-dialog">
    <div class="modal-content">

        <div class="panel panel-primary" style="margin-bottom: 0px;">
            <div class="panel-heading">
                Form Upload Photo
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-md-6">
                        <form role="form" method="POST" action="/upload" enctype="multipart/form-data">
                            <div class="form-group">
                                <label>File input</label>
                                <input type="file" method="POST" accept=".jpg" name="file"/>
                                <br>
                                <label>Name </label>
                                <br>
                                <input type="text" placeholder="Name" required name="name"/>
                                <br>
                                <label>Title </label>
                                <br>
                                <input type="text" placeholder="Title" required name="title"/>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Upload</button>
                            </div>
                        </form>
                    </div>
                </div>

                <c:if test="${ entity != null}">
                    <div class="row">
                        <div class="col-md-3">
                            <p><b>Name:</b> ${ entity.name}</p>
                            <p><b>Title:</b> ${ entity.title}</p>
                        </div>
                    </div>
                </c:if>

                <c:if test="${ (photo != null) && !(photo eq '')}">
                    <div class="row">
                        <div class="col-md-12">
                            <img src="${ photo }" class="col-md-12"/>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
</body>
</html>
