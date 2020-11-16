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
            <form id="newUserForm" action="add" method="post">
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
        <button id="closeNewUser">Close</button>
    </dialog>
    <button id="showNewUser">Add user</button>
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
                <td><form id="delete" method="post" action="deleteUser">
                    <input style="display: none" type="text" name="id" value="${user.id}">
                    <button type="submit">Delete</button>
                    </form>
                </td>
                <td><button id="showEdit">Edit</button></td>
                <dialog id="edit">
                    <div>
                        <form id="editForm" action="editUser" method="POST">
                            <input style="display: none" type="text" name="id" value="${user.id}">
                            <input type="text" name="firstName" id="firstName" placeholder="first name" value="${user.firstName}">
                            <input type="text" name="lastName" id="lastName" placeholder="last name" value="${user.lastName}">
                            <input type="text" name="birthday" id="birthday" placeholder="date of birth" value="${user.birthday}">
                            <input type="text" name="login" id="login" placeholder="login" value="${user.login}">
                            <input type="text" name="password" id="password" placeholder="password" value="${user.password}">
                            <input type="text" name="aboutYou" id="about" placeholder="about you" value="${user.aboutYou}">
                            <input type="text" name="address" id="address" placeholder="address" value="${user.address}">
                            <input type="submit" placeholder="Confirm">
                        </form>
                    </div>
                    <button id="closeEdit">Close</button>
                </dialog>
            </tr>
        </c:forEach>
    </table>
<%--<form action="add">--%>
<%--    <input type="submit" value="add">--%>
<%--</form>--%>
</body>
</html>

<script type = text/javascript>
    let dialogNewUser = document.getElementById('newUser');
    let dialogEdit = document.getElementById('edit');
    document.getElementById('showNewUser').onclick = function() {
        dialogNewUser.show();
    };
    document.getElementById('closeNewUser').onclick = function() {
        dialogNewUser.close();
    };
    document.getElementById('showEdit').onclick = function() {
        dialogEdit.show();
    };
    document.getElementById('closeEdit').onclick = function() {
        dialogEdit.close();
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
