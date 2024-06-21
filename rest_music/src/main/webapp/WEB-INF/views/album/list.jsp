<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Rest</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous" />
</head>
<body>
    <div class="container-fluid">
        <%@ include file="../fragments/header.jspf"%>
    </div>

    <main class="container mt-3">
        <div class="row">
            <c:set var="counter" value="0" />
            <c:forEach var="a" items="${albumList}">
                <c:if test="${counter % 3 == 0 && counter != 0}">
                    </div><div class="row mt-3">
                </c:if>
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <img src="../data/${a.albumImage}.png" class="card-img-top" alt="${a.albumName}">
                        <div class="card-body">
                            <h5 class="card-title">${a.albumName}</h5>
                            <p class="card-text">${a.albumId}</p>
                            <p class="card-text">${a.albumType}</p>
                            <p class="card-text">${a.albumReleaseDate}</p>
                        </div>
                    </div>
                </div>
                <c:set var="counter" value="${counter + 1}" />
            </c:forEach>
        </div>
    </main>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
