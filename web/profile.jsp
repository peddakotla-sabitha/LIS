<%-- 
    Document   : profile
    Created on : 09-Jan-2024, 12:45:48 am
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="css/style.css">
    <title>Awesome Profile Card</title>
</head>
<body>
    <div class="card">
        <div class="card-header">
            <img src="book.jpg" alt="Profile Image" class="profile-img">
        </div>
        <div class="card-body">
            <p class="name">Your Name</p>
            <a href="#" class="mail">yourname@amail.com</a>
            <p class="job">Developer | Designer</p>
        </div>

        <div class="social-links">
            <a href="#" class="fab fa-github social-icon"></a>
            <a href="#" class="fab fa-twitter social-icon"></a>
            <a href="#" class="fab fa-youtube social-icon"></a>
            <a href="#" class="fab fa-linkedin social-icon"></a>
        </div>

        <div class="card-footer">
            <p class="count"><span>120k</span> Followers | <span>10k</span> Following</p>
        </div>
    </div>
</body>
</html>