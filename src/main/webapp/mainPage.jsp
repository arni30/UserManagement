<%@ page import="world.ucode.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="resources/style.css">
</head>
<body>
    <h1>User management</h1>
    <dialog id="newUser">
        <div>
            <form id="newUserForm" action="add" method="post">
                <span>
                    Create User
                </span>
                <div>
                    <input type="text" name="firstName" placeholder="first name" required>
                </div>
                <div>
                    <input type="text" name="lastName" placeholder="last name" required>
                </div>
                <div>
                    <input type="date" name="birthday" placeholder="date of birth" required>
                </div>
                <div>
                    <input type="text" name="login" placeholder="login" required>
                </div>
                <div>
                    <input type="password" name="password" placeholder="password" required>
                </div>
                <div>
                    <textarea maxlength="128" rows="3" cols="60" type="text" name="aboutYou" placeholder="about you" required></textarea>
                </div>
                <div>
                    <input type="text" name="address" placeholder="address" required>
                </div>
                <button type="submit">Create</button>
            </form>
        </div>
        <button id="closeNewUser">Close</button>
    </dialog>
<div class="card">
<div class="card-body">
    <h4 class="box-title">Users table</h4>
</div>
<div class="card-body--">
<div class="table-stats order-table ov-h">
<table class="table ">
<thead>
<tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Login</th>
    <th>Password</th>
    <th>Date of birth</th>
    <th>Address</th>
    <th>About</th>
    <th></th>
    <th></th>
</tr>
</thead>
<tbody>
    <c:forEach items="${Users}" var="user">
        <tr>
            <td><c:out value="${user.firstName}"/></td>
            <td><c:out value="${user.lastName}" /></td>
            <td><c:out value="${user.login}" /></td>
            <td><c:out value="${user.password}"/></td>
            <td><span class="name"><c:out value="${user.birthday}"/></span> </td>
            <td><span class="product"><c:out value="${user.address}"/></span> </td>
            <td><span class="count"> <c:out value="${user.aboutYou}"/></span></td>
            <td>
                <form id="delete" method="post" action="deleteUser">
                    <input style="display: none" type="text" name="id" value="${user.id}">
                    <button type="submit">Delete</button>
                </form>
            </td>
            <td>
                <button id="showEdit" onclick="showEdit(${user.id})">Edit</button>
            </td>
    </tr>
                    <dialog id="edit${user.id}" class="editdlg">
                        <div>
                            <form id="editForm" action="editUser" method="POST">
                                <input style="display: none" type="text" name="id" value="${user.id}" required>
                                <input type="text" name="firstName" id="firstName" placeholder="first name" value="${user.firstName}" required>
                                <input type="text" name="lastName" id="lastName" placeholder="last name" value="${user.lastName}" required>
                                <input type="date" name="birthday" id="birthday" placeholder="date of birth" value="${user.birthday}" required>
                                <input type="text" name="login" id="login" placeholder="login" value="${user.login}" required>
                                <input type="text" name="password" id="password" placeholder="password" value="${user.password}" required>
                                <textarea maxlength="128" rows="3" cols="60" type="text" name="aboutYou" placeholder="about you" required>${user.aboutYou}</textarea>
                                <input type="text" name="address" id="address" placeholder="address" value="${user.address}" required>
                                <button type="submit">Save</button>
                            </form>
                        </div>
                        <button id="closeEdit" onclick="closeEdit(${user.id})">Close</button>
                    </dialog>
</c:forEach>
    </tbody>
    </table>
    </div>
    </div>
    </div>
    <div>
    <button id="showNewUser">Add user</button>
    </div>
<%--    <table border="1">--%>
<%--        <c:forEach items="${Users}" var="user">--%>
<%--            <tr>--%>
<%--                <td> First name: <c:out value="${user.firstName}" /></td>--%>
<%--                <td> Last name: <c:out value="${user.lastName}" /></td>--%>
<%--                <td> Login: <c:out value="${user.login}" /></td>--%>
<%--                <td> Password: <c:out value="${user.password}" /></td>--%>
<%--                <td> Birthday: <c:out value="${user.birthday}"/></td>--%>
<%--                <td> Address: <c:out value="${user.address}"/></td>--%>
<%--                <td> About: <c:out value="${user.aboutYou}"/></td>--%>
<%--                <td><form id="delete" method="post" action="deleteUser">--%>
<%--                    <input style="display: none" type="text" name="id" value="${user.id}">--%>
<%--                    <button type="submit">Delete</button>--%>
<%--                    </form>--%>
<%--                </td>--%>
<%--                <td><button id="showEdit" onclick="showEdit(${user.id})">Edit</button></td>--%>
<%--            </tr>--%>
<%--            <dialog id="edit${user.id}" class="editdlg">--%>
<%--                <div>--%>
<%--                    <form id="editForm" action="editUser" method="POST">--%>
<%--                        <input style="display: none" type="text" name="id" value="${user.id}">--%>
<%--                        <input type="text" name="firstName" id="firstName" placeholder="first name" value="${user.firstName}">--%>
<%--                        <input type="text" name="lastName" id="lastName" placeholder="last name" value="${user.lastName}">--%>
<%--                        <input type="text" name="birthday" id="birthday" placeholder="date of birth" value="${user.birthday}">--%>
<%--                        <input type="text" name="login" id="login" placeholder="login" value="${user.login}">--%>
<%--                        <input type="text" name="password" id="password" placeholder="password" value="${user.password}">--%>
<%--                        <input type="text" name="aboutYou" id="about" placeholder="about you" value="${user.aboutYou}">--%>
<%--                        <input type="text" name="address" id="address" placeholder="address" value="${user.address}">--%>
<%--                        <input type="submit" placeholder="Confirm">--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--                <button id="closeEdit" onclick="closeEdit(${user.id})">Close</button>--%>
<%--            </dialog>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
</body>
</html>

<script type = text/javascript>
    let dialogNewUser = document.getElementById('newUser');
    document.getElementById('showNewUser').onclick = function() {
        dialogNewUser.show();
    };
    document.getElementById('closeNewUser').onclick = function() {
        dialogNewUser.close();
    };
     function showEdit(id) {
         let str = "edit" + id;
         console.log("SHOW!!!!!!!")
         document.getElementById(str).show();

    }
    function closeEdit(id) {
        let str = "edit" + id;
        console.log("SASHA!!!!!!!")
        console.log(str);
        document.getElementById(str).close();
    }
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
