<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">


    protected void loginbutton_Click(object sender, EventArgs e)
    {
        string username = this.username.Text;
        string password = this.password.Text;
        if (username == "" && password == "")
            this.message.Text = "Please enter username & password";
        else if (username == "")
            this.usernameMessage.Text = "You have to enter the username.";
        else if(password =="")
            this.passwordMessage.Text = "You have to enter the password.";
    }
</script>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title>Login Page</title>    
</head>
<body>
    <form id="login" runat="server">
        <asp:Panel ID="loginPanel" runat="server" BorderColor="Lime" BorderStyle="Solid" Height="400px" ScrollBars="Auto" Width="500px">
            Username:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="username" name= "password" runat="server"  style="margin-left: 0px" Width="424px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="usernameMessage" runat="server" ForeColor="Red"></asp:Label>
            <br />
            Password:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="password" name= "password" runat="server"  Width="424px" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="passwordMessage" runat="server" ForeColor="Red"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="loginbutton" runat="server" Text="Login" OnClick="loginbutton_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="message" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:HyperLink ID="forgotUsername" runat="server">Forgot Username?</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:HyperLink ID="forgotPassword" runat="server">Forgot Password?</asp:HyperLink>
        </asp:Panel>
    </form>

</body>
</html>
