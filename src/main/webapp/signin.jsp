<!DOCTYPE html>
<%@ page import="world.ucode.*, java.util.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="ubay">
    <meta name="keywords" content="HTML, CSS, JavaScript, java, ucode, unitfactory, cbl, cblworld, ubay">
<%--    <meta name="author" content="Tetiana Rohalska">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Login</title>
    <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon"/>
    <link rel="icon" href="resources/favicon.ico" type="image/x-icon"/>
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="resources/signin.css">
</head>

<body>
        <div class="nav">
            <form id="form" action="signin" method="post">
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
</body>
</html>
