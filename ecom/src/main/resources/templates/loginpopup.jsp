<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Site</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
    <script src="https://kit.fontawesome.com/66aa7c98b3.js" crossorigin="anonymous"></script>
    <style>


        body .card {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 500px;
            width: 1266px;
            margin: 0;
            position: relative;
        }
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            background-image: url("login.jpg");
            filter: blur(5px); /* Apply a blur effect to the background image */
            z-index: -1; /* Place it behind the content */
        }

        .card {
            position: relative;
            z-index: 1; /* Place the card above the background */
            width: 300px;
            height: 220px;
            background-color: rgba(255, 255, 255, 0.9);
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 50px 50px;
            padding-left: 50px;
            gap: 13px;
            overflow: hidden;
            box-shadow: 2px 2px 20px rgba(0, 0, 0, 0.062);
        }

        #cookieSvg {
            width: 50px;
        }

        #cookieSvg g path {
            fill: rgb(97, 81, 81);
        }

        .cookieHeading {
            font-size: 1.2em;
            font-weight: 800;
            color: rgb(26, 26, 26);
        }

        .cookieDescription {
            text-align: center;
            font-size: 0.7em;
            font-weight: 600;
            color: rgb(99, 99, 99);
        }

        .closeButton {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }

        .buttonContainer {
            display: flex;
            gap: 20px;
            flex-direction: row;
        }

        .acceptButton {
            width: 80px;
            height: 30px;
            background-color: #f16d63;
            transition-duration: .2s;
            border: none;
            color: rgb(241, 241, 241);
            cursor: pointer;
            font-weight: 600;
            border-radius: 20px;
        }

        .declineButton {
            width: 80px;
            height: 30px;
            background-color: rgb(218, 218, 218);
            transition-duration: .2s;
            color: rgb(46, 46, 46);
            border: none;
            cursor: pointer;
            font-weight: 600;
            border-radius: 20px;
        }

        .declineButton:hover {
            background-color: #ebebeb;
            transition-duration: .2s;
        }

        .acceptButton:hover {
            background-color: #fd3434;
            transition-duration: .2s;
        }
        body {
          margin: 0;
          font-family: Arial, sans-serif;
          
        }
    
        .nav-bar {
          background-color: #fff;
          border-bottom: 1px solid #ccc;
          padding: 10px 0;
          width: 100%; /* Make the navbar full width */
        }
    
        .container {
          max-width: 1200px;
          margin: 0 auto;
        }
    
        .nav-bar ul {
          list-style: none;
          margin: 0;
          padding: 0;
          text-align: center; /* Center-align the navigation links */
        }
    
        .nav-bar li {
          display: inline-block;
          padding: 0 10px;
        }
    
        .nav-bar a {
          color: #333;
          text-decoration: none;
          transition: color 0.3s, transform 0.2s; /* Add transitions for color and transform properties */
        }
    
        .nav-bar a:hover {
          color: grey; /* Change color on hover */
          transform: scale(1.0); /* Add a hover animation to scale the link */
          text-decoration: underline  black; /* Remove underline on hover */
        }
    
        .nav-bar input[type="search"] {
          width: 100%;
          padding: 5px;
          border: 1px solid #ccc;
        }
    
        /* Adjustments for smaller screens */
        @media (max-width: 768px) {
          .nav-bar ul {
            text-align: left; /* Left-align links on smaller screens */
          }
    
          .nav-bar li {
            display: block;
            padding: 10px 0;
          }
    
          .nav-bar input[type="search"] {
            width: 100%;
          }
        }
    
        .carousel-inner{
            height: 506px;
            width: 1280px;
            display: flex;
            transition: 5s ease-in-out;
        }
    
        .cta {
          border: none;
          background: none;
        }
    
        .cta span {
          padding-bottom: 7px;
          letter-spacing: 4px;
          font-size: 14px;
          padding-right: 15px;
          text-transform: uppercase;
        }
    
        .cta svg {
          transform: translateX(-8px);
          transition: all 0.3s ease;
        }
    
        .cta:hover svg {
          transform: translateX(0);
        }
    
        .cta:active svg {
          transform: scale(0.9);
        }
    
        .hover-underline-animation {
          position: relative;
          color: black;
          padding-bottom: 20px;
        }
    
        .hover-underline-animation:after {
          content: "";
          position: absolute;
          width: 100%;
          transform: scaleX(0);
          height: 2px;
          bottom: 0;
          left: 0;
          background-color: #000000;
          transform-origin: bottom right;
          transition: transform 0.25s ease-out;
        }
    
        .cta:hover .hover-underline-animation:after {
          transform: scaleX(1);
          transform-origin: bottom left;
        }
  
        .categories-dropdown {
          position: relative;
          display: inline-block;
        }
  
        .categories-dropdown-content {
          display: none;
          position: absolute;
          background-color: #f0f0f0;
          min-width: 160px;
          z-index: 1;
        }
  
        .categories-dropdown:hover .categories-dropdown-content {
          display: block;
        }
  
        .categories-dropdown-content a {
          padding: 12px 16px;
          text-decoration: none;
          display: block;
          color: #333;
        }
  
        .categories-dropdown-content a:hover {
          background-color: #ddd;
        }
          /* Footer CSS STARt */
          .footer {
  background: #000;
  color: #8a8a8a;
  font-size: 14px;
  padding: 60px 0 20px;
}

.footer p {
  color: #8a8a8a;
}

.footer h3 {
  color: #ffffff;
  margin-bottom: 20px;
}

.footer-col-1,
.footer-col-2,
.footer-col-3,
.footer-col-4 {
  min-width: 250px;
  margin-bottom: 20px;
}

.footer-col-1 {
  flex-basis: 30%;
}

.footer-col-2 {
  flex: 1;
  text-align: center;
}

.footer-col-2 img {
  width: 75px;
  margin-bottom: 20px;
  border-radius: 50%;
}

.footer-col-3,
.footer-col-4 {
  flex-basis: 12%;
  text-align: center;
}

ul {
  list-style-type: none;
}

.app-logo {
  margin-top: 20px;
}
.app-logo img {
  width: 140px;
}

.footer hr {
  border: none;
  background: #b5b5b5;
  height: 1px;
  margin: 20px 0;
}

.copyright {
  text-align: center;
}

.menu-icon {
  width: 28px;
  margin-left: 20px;
  display: none;
}

/* media query for menu */

@media only screen and (max-width: 800px) {
  nav ul {
    position: absolute;
    top: 70px;
    left: 0;
    background: #333;
    width: 100%;
    overflow: hidden;
    transition: max-height 0.5s;
  }
  nav ul li {
    display: block;
    margin-right: 50px;
    margin-top: 10px;
    margin-bottom: 10px;
  }

  nav ul li a {
    color: #fff;
  }
  .menu-icon {
    display: block;
    cursor: pointer;
  }
}

/* all products page */

.row-2 {
  justify-content: space-between;
  margin: 100px auto 50px;
}

select {
  border: 1px solid #ff523b;
  padding: 5px;
}

select:focus {
  outline: none;
}

.page-btn {
  margin: 0 auto 80px;
}

.page-btn span {
  display: inline-block;
  border: 1px solid #ff523b;
  margin-left: 10px;
  width: 40px;
  height: 40px;
  text-align: center;
  line-height: 40px;
  cursor: pointer;
}

.page-btn span:hover {
  background: #ff523b;
  color: #ffffff;
}
          /* Footer CSS END */
      </style>
</head>
<body>
    <nav class="nav-bar">
        <div class="container">
            <ul>
                <li>
                    <button class="cta" onclick="location.href='/'" >
                        <span class="hover-underline-animation"> Shop now </span>
                        <svg viewBox="0 0 46 16" height="10" width="30" xmlns="http://www.w3.org/2000/svg" id="arrow-horizontal">
                          <path transform="translate(30)" d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z" data-name="Path 10" id="Path_10"></path>
                        </svg>
                    </button>
         
                </li>
                <li class="categories-dropdown">
                    <a href="#">Categories</a>
                    <div class="categories-dropdown-content">
                        <a href="#">Electronics</a>
                        <a href="#">Clothing</a>
                        <a href="#">Books</a>
                        <a href="#">Home & Garden</a>
                        <a href="#">Toys & Games</a>
                        <!-- Add more categories as needed -->
                    </div>
                </li>
                <li><a href="/login">Products</a></li>
                <li><a href="/login">Contact Us</a></li>
                <li><a href="/aboutus">About us</a></li>
                <li><a href="/login">Shop</a></li>
                <li><input type="search" placeholder="Search for Products"></li>
                <li><a href="/login">Open an Account</a></li>
                <li><a href="/login" >Sign In</a></li>
            </ul>
        </div>
    </nav>
    <div class="card">
        <span class="closeButton" onclick="location.href='/'">✕</span>
        <svg version="1.1" id="cookieSvg" x="0px" y="0px" viewBox="0 0 122.88 122.25" xml:space="preserve">
            <!-- Your SVG content here -->
        </svg>
        <p class="cookieHeading">Please Login.</p>
        <p class="cookieDescription">Login to access this webpage.</p>
        <div class="buttonContainer">
            <button class="acceptButton" onclick="location.href='/login'"> Allow</button>
            <button class="declineButton" onclick="location.href='/'" >Decline</button>
        </div>
    </div>
    <!-- Footer -->
    <div class="footer">
        <div class="container-foot">
          <div class="row">
            <div class="footer-col-1">
              <h3>Download Our App</h3>
              <p>Download App for Android and iso mobile phone.</p>
              <div class="app-logo">
                <img src="https://i.ibb.co/KbPTYYQ/play-store.png" alt="" />
                <img src="https://i.ibb.co/hVM4X2p/app-store.png" alt="" />
              </div>
            </div>
      
            <div class="footer-col-2">
              <img src="https://icon2.cleanpng.com/20180616/wzs/kisspng-vector3d-studios-united-states-unmatched-air-traff-shop-now-5b256ad9854bc7.282396831529178841546.jpg" alt="" />
              <p>
                Our Purpose Is To Sustainably Make the Pleasure and Benefits of
                Sports Accessible to the Many.
              </p>
            </div>
      
            <div class="footer-col-3">
              <h3>Useful Links</h3>
              <ul>
                <li>Coupons</li>
                <li>Blog Post</li>
                <li>Return Policy</li>
                <li>Join Affiliate</li>
              </ul>
            </div>
      
            <div class="footer-col-4">
              <h3>Follow us</h3>
              <ul>
                <li>Facebook</li>
                <li>Twitter</li>
                <li>Instagram</li>
                <li>YouTube</li>
              </ul>
            </div>
          </div>
          <hr />
          <p class="copyright">Copyright &copy; 2021 - Shop Now</p>
        </div>
      </div>
</body>
</html>