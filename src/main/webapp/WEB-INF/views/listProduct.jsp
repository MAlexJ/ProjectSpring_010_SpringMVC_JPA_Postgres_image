<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="section">
    <div class="row">

        <c:forEach items="${listDTO}" var="item">
            <div class="col s12 m12 l3">
                <div class="card hoverable">
                    <div class="card-image">
                        <c:if test="${ (item.getDataToSrt() != null) && !(item.getDataToSrt() eq '')}">
                            <a href="#"><img src="${ item.getDataToSrt() }"></a>
                            <span class="card-title">${ item.title}</span>
                        </c:if>
                    </div>
                    <div class="card-content">
                        <p>${ item.name}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>