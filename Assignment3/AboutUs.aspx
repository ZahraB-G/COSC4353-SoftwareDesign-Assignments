<%@ Page Language="C#" %>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat ="server">
    <meta charset="utf-8" />
    <link rel="stylesheet" href="AboutUs.css" />
    <title>About Us</title>
</head>
<body runat ="server">
    <header runat ="server">Find Information Quickly</header>
    <form runat ="server">
        <p runat ="server">
            SINGLE ACCOUNT CAN SIMPLIFIES MANAGEMENT
        </p> 
        <p runat ="server">
            Think of your account as your home page to view your oil request status and history for most of the
           applications that you have filed with our company.
        </p>
        <p runat ="server">
             Creating an account is free and allows you to easily save your information and view your profile.
        </p>
        <input type="button" value="Create an Account" onclick= "location.href = 'SignUpPage.aspx';"/>
    </form>
</body>
</html>