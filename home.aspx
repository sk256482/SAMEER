<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to EngeeTalk</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
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
        header img {
            display: cover; /* Ensures there are no gaps below the image */
            max-width: cover; /* Makes the image responsive */
            height: 100%; /* Sets height to fill the header */
            object-fit: cover; /* Ensures the image covers the area while maintaining aspect ratio */
            margin: 0 auto; /* Centers the image */
        }
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #333;
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        .navbar a {
            color: white;
            padding: 15px 25px;
            text-decoration: none;
            text-align: center;
            transition: background-color 0.3s, transform 0.2s;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
            transform: scale(1.05);
        }
        .content {
            padding: 40px 20px;
            text-align: center;
        }
        section {
            margin: 40px 0;
        }
        .services {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: 20px 0;
        }
        .service {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin: 15px;
            padding: 25px;
            width: 250px;
            transition: transform 0.3s;
            text-align: left;
        }
        .service:hover {
            transform: translateY(-5px);
        }
        .service i {
            color: #007bff;
            margin-bottom: 10px;
        }
        #contact {
            margin: 40px 0;
            padding: 30px;
            background: #e9ecef;
            border-radius: 10px;
        }
        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px 0;
            position: relative;
        }
        footer p {
            margin: 0;
        }
        @media (max-width: 200px) {
            .service {
                width: 100%; /* Adjust service card width for very small screens */
            }
        }
		
		#technologies {
            margin: 40px 0;
        }

        .technologies {
            display: flex; /* Use flexbox to arrange items in a row */
            justify-content: center; /* Center the items */
            flex-wrap: wrap; /* Allow items to wrap to the next line if needed */
            margin: 20px 0;
        }

        .technology {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin: 15px;
            padding: 25px;
            width: 200px; /* Adjust width for better spacing */
            text-align: center; /* Center text */
            transition: transform 0.3s, background-color 0.3s; /* Add transition for hover effects */
            position: relative; /* Position relative for the icon color change */
        }

        .technology:hover {
            transform: translateY(-5px);
            background-color: #e9ecef; /* Change background color on hover */
        }

        .technology i {
            color: #007bff; /* Default icon color */
            margin-bottom: 10px;
            transition: color 0.3s; /* Smooth color transition */
        }

        /* Change icon color on hover */
        .technology:hover i {
            color: #6610f2; /* Change to a different color on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <img src="untitled.gif" alt="EngeeTalk GIF" /> <!-- Update path to your GIF -->
        </header>
        <nav class="navbar">
            <a href="About.aspx">About Us</a>
            <a href="Services.aspx">Services</a>
            <a href="Contact.aspx">Contact Us</a>
        </nav>
        <div class="content">
            <section id="services">
                <h2>Our Services</h2>
                <div class="services">
                    <div class="service">
                        <i class="fas fa-code fa-2x"></i>
                        <h3>Web Development</h3>
                        <p>Creating responsive and engaging websites.</p>
                    </div>
                    <div class="service">
                        <i class="fas fa-pencil-alt fa-2x"></i>
                        <h3>UI/UX Design</h3>
                        <p>Designing user-friendly interfaces.</p>
                    </div>
                    <div class="service">
                        <i class="fas fa-mobile-alt fa-2x"></i>
                        <h3>Mobile App Development</h3>
                        <p>Building cross-platform mobile applications.</p>
                    </div>
                </div>
            </section>
            <section id="portfolio">
                <h2>Our Portfolio</h2>
                <p>Check out our latest projects and case studies.</p>
                <!-- Add portfolio items here -->
            </section>
            <section id="testimonials">
                <h2>What Our Clients Say</h2>
                <p>"EngeeTalk transformed our online presence!" - Happy Client</p>
                <!-- Add more testimonials here -->
            </section>
            <section id="contact">
                <h2>Contact Us</h2>
                <p>If you have any questions or inquiries, feel free to reach out!</p>
                <p><a href="Contact.aspx" style="color: #007bff; text-decoration: underline;">Go to Contact Page</a></p>
            </section>
			
			<section id="technologies">
                <h2>Technologies We Work With</h2>
                <div class="technologies">
                    <div class="technology">
                        <i class="fab fa-html5 fa-3x"></i>
                        <h3>Frontend</h3>
                        <p>HTML, CSS, JavaScript, React</p>
                    </div>
                    <div class="technology">
                        <i class="fab fa-node fa-3x"></i>
                        <h3>Backend</h3>
                        <p>Node.js, ASP.NET, PHP</p>
                    </div>
                    <div class="technology">
                        <i class="fas fa-tools fa-3x"></i>
                        <h3>Tools</h3>
                        <p>Git, Docker, Jenkins</p>
                    </div>
                    <div class="technology">
                        <i class="fas fa-cloud fa-3x"></i>
                        <h3>DevOps</h3>
                        <p>AWS, Azure, Kubernetes</p>
                    </div>
                </div>
            </section>
			
			
			
			
			
			
        </div>
        <footer>
            <p>&copy; 2024 EngeeTalk. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>
