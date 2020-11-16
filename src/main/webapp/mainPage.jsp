<%@ page import="world.ucode.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>hallo</h1>
    <dialog id="newUser">
        <div>
            <form id="form" action="add" method="post">
                <input type="text" name="firstName" placeholder="first name">
                <input type="text" name="lastName" placeholder="last name">
                <input type="text" name="birthday" placeholder="date of birth">
                <input type="text" name="login" placeholder="login">
                <input type="text" name="password" placeholder="password">
                <input type="text" name="aboutYou" placeholder="about you">
                <input type="text" name="address" placeholder="address">
                <input type="submit" placeholder="Create">
            </form>
        </div>
        <button id="close">Close</button>
    </dialog>
    <button id="show">Add user</button>
    <table border="1">
        <c:forEach items="${Users}" var="user">
            <tr>
                <td> First name: <c:out value="${user.firstName}" /></td>
                <td> Last name: <c:out value="${user.lastName}" /></td>
                <td> Login: <c:out value="${user.login}" /></td>
                <td> Password: <c:out value="${user.password}" /></td>
                <td> Birthday: <c:out value="${user.birthday}"/></td>
                <td> Address: <c:out value="${user.address}"/></td>
                <td> About: <c:out value="${user.aboutYou}"/></td>
            </tr>
        </c:forEach>
    </table>
<%--<form action="add">--%>
<%--    <input type="submit" value="add">--%>
<%--</form>--%>
</body>
</html>

<script type = text/javascript>
    var dialog = document.getElementById('newUser');
    document.getElementById('show').onclick = function() {
        dialog.show();
    };
    document.getElementById('close').onclick = function() {
        dialog.close();
    };
</script>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>

<%--<head>--%>
<%--    <meta charset="utf-8" />--%>
<%--    <meta name="description" content="ubay">--%>
<%--    <meta name="keywords" content="HTML, CSS, JavaScript, java, ucode, unitfactory, cbl, cblworld, ubay">--%>
<%--    <meta name="author" content="Tetiana Rohalska">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1"/>--%>
<%--    <title>ubay</title>--%>
<%--    <link rel="shortcut icon" href="http://localhost:8080/ubay/favicon.ico" type="image/x-icon"/>--%>
<%--    <link rel="icon" href="http://localhost:8080/ubay/favicon.ico" type="image/x-icon"/>--%>
<%--    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet"/>--%>
<%--&lt;%&ndash;    <link rel="stylesheet" href="styles.css"/>&ndash;%&gt;--%>
<%--</head>--%>

<%--<body>--%>
<%--<h2>Hello World!</h2>--%>
<%--</body>--%>

<%--</html>--%>
