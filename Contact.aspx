<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - EngeeTalk</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f9fc;
        }
       header {
    background-color: #ffde59; /* Set a solid color for the header */
    color: white;
    padding: 0; /* Remove padding for the image to fill */
    display: flex; /* Use flexbox for layout */
    align-items: center; /* Center items vertically */
    height: 200px; /* Fixed height for the header */
    overflow: hidden; /* Hide any overflow if the content is too large */
    border-radius: 0 0 50px 50px; /* Curves at the bottom left and right */
    position: relative; /* Ensures the child elements are positioned relative to the header */
}
        
        /* Navigation Styles */
        nav {
            background: #6b5b95;
            color: white;
            padding: 15px 0;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
        }
        nav ul li {
            margin: 0 20px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }
        nav ul li a:hover {
            color: #ffcc00;
        }
        /* Content Styles */
        .content {
            padding: 40px;
            max-width: 600px;
            margin: 30px auto;
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"], input[type="email"], textarea {
            width: 100%;
            padding: 12px;
            border: 2px solid #ccc;
            border-radius: 6px;
            transition: border-color 0.3s;
        }
        input[type="text"]:focus, input[type="email"]:focus {
            border-color: #6b5b95;
            outline: none;
        }
        textarea {
            resize: none;
            height: 150px;
        }
        input[type="submit"] {
            background-color: #6b5b95;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1.1em;
            transition: background-color 0.3s, transform 0.3s;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #5a4a75;
            transform: scale(1.05);
        }
        footer {
            background-color: #6b5b95;
            color: white;
            text-align: center;
            padding: 15px;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 30px; /* Space above footer */
        }
       
            .content {
                padding: 50px;
            }
			
			
			@media (max-width: 200px) {
            .service {
                width: 100%; /* Adjust service card width for very small screens */
            }
        }
    </style>
    <script>
        function validateForm() {
            const name = document.getElementById('<%= name.ClientID %>').value;
            const email = document.getElementById('<%= email.ClientID %>').value;
            const message = document.getElementById('<%= message.ClientID %>').value;

            if (!name || !email || !message) {
                alert("Please fill in all fields.");
                return false;
            }
            // Basic email validation
            const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            if (!email.match(emailPattern)) {
                alert("Please enter a valid email address.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm();">
        <header>
            <img src="untitled.gif" alt="EngeeTalk GIF" /> <!-- Update path to your GIF -->
        </header>
        <nav>
            <ul>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="About.aspx">About Us</a></li>
                <li><a href="Services.aspx">Services</a></li>
                <li><a href="Contact.aspx">Contact Us</a></li>
            </ul>
        </nav>
        <div class="content">
            <h2>Contact Us</h2>
            <div class="form-group">
                <label for="name">Name:</label>
                <asp:TextBox ID="name" runat="server" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="email" runat="server" TextMode="Email" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <asp:TextBox ID="message" runat="server" TextMode="MultiLine" Rows="5" required></asp:TextBox>
            </div>
            <div class="form-group">
                <input type="submit" value="Send Message" />
            </div>
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
        </div>
        <footer>
            <p>&copy; 2024 EngeeTalk. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>
