<%--
  Created by IntelliJ IDEA.
  User: oarnopolin
  Date: 14.11.20
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>
        <form:form class="form-signup" method="POST" name="form" modelAttribute="form">
        <form:input class="form-styling" cssStyle="display: none" type="text" name="username" placeholder="" path="type" value="signup"/>
        <label for="role">Role</label>
        <form:select id="role" class="form-styling" name="role" path="role">
            <option>seller</option>
            <option>bidder</option>
        </form:select>
        <label for="balance">Balance</label>
        <form:input id="balance" class="form-styling" type="number" name="balance"
                step="10" min="100" max="50000" value="100" size="5" path="balance"/>
        <label for="username">Username</label>
        <form:input id="username" class="form-styling" type="text" name="username" placeholder="" path="username"/>
        <label for="email">Email</label>
        <form:input id="email" class="form-styling" type="email" name="email" placeholder="" path="email"/>
        <label for="password">Password</label>
        <form:input id="password" class="form-styling" type="password" name="password" autocomplete="on" placeholder="" path="password"/>
        <label for="confirmpassword">Confirm password</label>
        <form:input id="confirmpassword" class="form-styling" type="password" name="confirmpassword" placeholder=""
                autocomplete="on" path="confirmpassword"/>
        <form:button id="send-button" class="btn-signup">send</form:button>
    </form:form>
        <script>
            window.onload=function() {
                var sendButton=$("#send-button");
                sendButton.click(function( event ) {
                    $.ajax({
                        type:  'POST',
                        url: "/",
                    });
                });
            }
        </script>
</div>

</body>
</html>
