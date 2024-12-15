<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Omikuji</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="/css/style.css" />

</head>
<body>
    <div class="show-container">
        <h1>Here's Your Omikuji!</h1>
        <div class="show-result">
            <p>
                In <span><c:out value="${num}"></c:out></span> years,
                you will live in <span><c:out value="${city}"></c:out></span> with
                <span><c:out value="${name}"></c:out></span> as your roommate,
                <span><c:out value="${hobby}"></c:out></span> for a living.
                The next time you see a <span><c:out value="${thing}"></c:out></span>,
                you will have good luck. Also,
                <span><c:out value="${comment}"></c:out></span>
            </p>
        </div>
    </div>


    <script src="/webjars/bootstrap/js/bootstrap.js"></script>
    <script src="/js/script.js"></script>
</body>
</html>