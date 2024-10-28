<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us | Your Company</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>About Us</h1>
            <p>Learn more about our mission and values.</p>
        </div>
        <div class="navbar">
            <a href="Home.aspx">Home</a>
            <a href="About.aspx">About Us</a>
            <a href="Services.aspx">Services</a>
            
            <a href="Contact.aspx">Contact Us</a>
        </div>
        <div class="content">
            <section>
                <h2>Our Mission</h2>
                <p>To provide high-quality web development services that enhance our clients' business presence online.</p>
            </section>
            <section>
                <h2>Our Values</h2>
                <p>We believe in integrity, transparency, and delivering exceptional results.</p>
            </section>
        </div>
    </form>
</body>
</html>
