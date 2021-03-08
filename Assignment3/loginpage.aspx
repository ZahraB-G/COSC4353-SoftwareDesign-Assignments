<!DOCTYPE html>
<html>
<head runat ="server">
    <meta charset="utf-8" />
    <title>Login Page</title>
    <link rel ="stylesheet" href="loginpage.css"/>
</head>
<body runat ="server">

    <h1 runat ="server">Login Page</h1>
    <form runat ="server" id="formId" method="post" name="loginPage">
        <p runat ="server">Username: </p>
        <input runat ="server" type="text" placeholder="Enter username" name="" id="user" required>

        <p runat ="server" >Password: </p>
        <input runat ="server" type="password" placeholder="Enter password" name="" id="pass" required><br><br>

        <!--<input type="submit" name="" value="Login">-->
        <button runat ="server" onclick="location.href='client_management.html'">Login</button><br> <br>

        <a runat ="server" href="#">Forgot Username?</a> <br>
        <a runat ="server" href="#">Forgot Password?</a> <br>
        <a runat ="server" href="SignUpPage.html">Sign Up</a>

    </form>

</body>

</html>



