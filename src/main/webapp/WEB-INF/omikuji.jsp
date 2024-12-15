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
    <div class="form-container">
        <h1>Send an Omikuji!</h1>
        <form action="/omikuji/show" method="get">
            <div class="mb-3">
                <label for="num" class="form-label">Enter the name of any </label>
                <select name="num" class="form-select" id="num">
                    <% for(var i=5; i<=25; i++) { %>
                    <option value="<%= i %>"><%= i %></option>
                    <% } %>
                </select>
            </div>
            <div class="mb-3">
                <label for="city" class="form-label">Enter the name of any </label>
                <input name="city" type="text" class="form-control" id="city" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Enter the name of </label>
                <input name="name" type="text" class="form-control" id="name">
            </div>
            <div class="mb-3">
                <label for="hobby" class="form-label">Enter professional endeavor or hobby:</label>
                <input name="hobby" type="text" class="form-control" id="hobby">
            </div>
            <div class="mb-3">
                <label for="thing" class="form-label">Enter any type of living thing</label>
                <input name="thing" type="text" class="form-control" id="thing">
            </div>
            <div class="mb-3">
                <label for="comment" class="form-label">Say something nice to someone</label>
                <textarea name="comment" id="comment" cols="50" rows="5"></textarea>
                <div id="commentHelp" class="form-text">Send and show a friend.</div>
            </div>
            <button type="submit" class="btn btn-primary">Send</button>
        </form>
    </div>


    <script src="/webjars/bootstrap/js/bootstrap.js"></script>
    <script src="/js/script.js"></script>
</body>
</html>