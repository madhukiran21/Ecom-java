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
        .describe {
              max-width: auto;
              margin: 20px auto;
              padding: 20px;
              background-color: #fff;
              box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
              border-radius: 5px;
          }
  
          .describe h1 {
              font-size: 24px;
              color: #333;
          }
  
          .describe p {
              font-size: 18px;
              color: #555;
          }
          .button-container {
              display: flex;
              justify-content: space-between;
          }
  
          .button-container sm-dap {
              position: relative;
              width: 320px;
              height: 50px;
              margin: 10px;
              cursor: pointer;
              transition: transform 0.3s ease-in-out;
              overflow: hidden;
          }
  
          .button-container sm-dap:hover {
              transform: scale(1.05);
          }
  
          .button-container sm-dap img {
              width: 100%;
              height: 100%;
              object-fit: cover;
          }
  
          .button-container sm-dap a {
              position: absolute;
              top: 0;
              left: 0;
              width: 100%;
              height: 100%;
              z-index: 1;
          }
          .sm-cats a {
              text-align: center;
              text-decoration: wavy ;
              color: #333;
              display: inline-block; /* Display links side by side */
              margin: 0 10px; /* Add spacing between links */
              transition: filter 0.3s ease-in-out;
          }
  
          .sm-cats a:hover {
              filter: brightness(1.2);
          }
  
          .sm-img {
              width: 50px;
              height: 50px;
              margin: 0 auto;
              display: block ;
          }

          /* Footer CSS AND PRODUCTS */
          .row {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  justify-content: space-around;
}

.col-2 {
  flex-basis: 50%;
  min-width: 300px;
}

.col-2 img {
  max-width: 100%;
  padding: 50px 0;
}

.col-2 h1 {
  font-size: 50px;
  line-height: 60px;
  margin: 25px 0;
}

.btn {
  display: inline-block;
  background: #ff523b;
  color: #ffffff;
  padding: 8px 30px;
  margin: 30px 0;
  border-radius: 30px;
  transition: background 0.5s;
}

.btn:hover {
  background: #563434;
}

.header {
  background: radial-gradient(#fff, #ffd6d6);
}

.header .row {
  margin-top: 70px;
}

.categories {
  margin: 70px 0;
}

.col-3 {
  flex-basis: 30%;
  min-width: 250px;
  margin-bottom: 30px;
}

.col-3 img {
  width: 100%;
}

.small-container {
  max-width: 1080px;
  margin: auto;
  padding-left: 25px;
  padding-right: 25px;
}

.col-4 {
  flex-basis: 25%;
  padding: 10px;
  min-width: 200px;
  margin-bottom: 50px;
  transition: transform 0.5s;
}

.col-4 img {
  width: 100%;
}

.title {
  text-align: center;
  margin: 0 auto 80px;
  position: relative;
  line-height: 60px;
  color: #555;
}
.title::after {
  content: "";
  background: #ff523b;
  width: 80px;
  height: 5px;
  border-radius: 5px;
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translate(-50%);
}

h4 {
  color: #555;
  font-weight: normal;
}

.col-4 p {
  font-size: 14px;
}

.rating .fas {
  color: #ff523b;
}

.rating .far {
  color: #ff523b;
}

.col-4:hover {
  transform: translateY(-5px);
}

/* Offer */

.offer {
  background: radial-gradient(#fff, #ffd6d6);
  margin-top: 80px;
  padding: 30px 0;
}

.col-2 .offer-img {
  padding: 50px;
}

small {
  color: #555;
}

/* testimonial */

.testimonial {
  padding-top: 100px;
}

.testimonial .col-3 {
  text-align: center;
  padding: 40px 20px;
  box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.1);
  cursor: pointer;
  transition: transform 0.5s;
}

.testimonial .col-3 img {
  width: 100px;
  margin-top: 20px;
  border-radius: 50%;
}

.testimonial .col-3:hover {
  transform: translateY(-10px);
}

.fa-quote-left {
  font-size: 34px;
  color: #ff523b;
}

.col-3 p {
  font-size: 14px;
  margin: 12px 0;
  color: #777777;
}

.testimonial .col-3 h3 {
  font-weight: 600;
  color: #555;
  font-size: 16px;
}

.brands {
  margin: 100px auto;
}

.col-5 {
  width: 160px;
}

.col-5 img {
  width: 100%;
  cursor: pointer;
  filter: grayscale(100%);
}

.col-5 img:hover {
  width: 100%;
  cursor: pointer;
  filter: grayscale(0);
}

/* footer */

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
  width: 70px;
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

/* single product details */

.single-product {
  margin-top: 80px;
}

.single-product .col-2 img {
  padding: 0;
}

.single-product .col-2 {
  padding: 20px;
}

.single-product h4 {
  margin: 20px 0;
  font-size: 22px;
  font-weight: bold;
}

.single-product select {
  display: block;
  padding: 10px;
  margin-top: 20px;
}

.single-product input {
  width: 50px;
  height: 40px;
  padding-left: 10px;
  font-size: 20px;
  margin-right: 10px;
  border: 1px solid #ff523b;
}

input:focus {
  outline: none;
}

.single-product .fas {
  color: #ff523b;
  margin-left: 10px;
}

.small-img-row {
  display: flex;
  justify-content: space-between;
}

.small-img-col {
  flex-basis: 24%;
  cursor: pointer;
}

/* cart items */

.cart-page {
  margin: 90px auto;
}

table {
  width: 100%;
  border-collapse: collapse;
}

.cart-info {
  display: flex;
  flex-wrap: wrap;
}

th {
  text-align: left;
  padding: 5px;
  color: #ffffff;
  background: #ff523b;
  font-weight: normal;
}
td {
  padding: 10px 5px;
}

td input {
  width: 40px;
  height: 30px;
  padding: 5px;
}

td a {
  color: #ff523b;
  font-size: 12px;
}

td img {
  width: 80px;
  height: 80px;
  margin-right: 10px;
}

.total-price {
  display: flex;
  justify-content: flex-end;
}

.total-price table {
  border-top: 3px solid #ff523b;
  width: 100%;
  max-width: 400px;
}

td:last-child {
  text-align: right;
}

th:last-child {
  text-align: right;
}
/* account page */
.account-page {
  padding: 50px 0;
  background: radial-gradient(#fff, #ffd6d6);
}

.form-container {
  background: #ffffff;
  width: 300px;
  height: 400px;
  position: relative;
  text-align: center;
  padding: 20px 0;
  margin: auto;
  box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.form-container span {
  font-weight: bold;
  padding: 0 10px;
  color: #555555;
  cursor: pointer;
  width: 100px;
  display: inline-block;
}

.form-btn {
  display: inline-block;
}

.form-container form {
  max-width: 300px;
  padding: 0 20px;
  position: absolute;
  top: 130px;
  transition: transform 1s;
}

form input {
  width: 100%;
  height: 30px;
  margin: 10px 0;
  padding: 0 10px;
  border: 1px solid #ccc;
}

form .btn {
  width: 100%;
  border: none;
  cursor: pointer;
  margin: 10px 0;
}

form .btn:focus {
  outline: none;
}

#LoginForm {
  left: -300px;
}

#RegForm {
  left: 0;
}

form a {
  font-size: 12px;
}

#Indicator {
  width: 100px;
  border: none;
  background: #ff523b;
  height: 3px;
  margin-top: 8px;
  transform: translateX(100px);
  transition: transform 1s;
}

/* media query for less than 600 screen size */

@media only screen and (max-width: 600px) {
  .row {
    text-align: center;
  }
  .col-2,
  .col-3,
  .col-4 {
    flex-basis: 100%;
  }

  .single-product .row {
    text-align: left;
  }

  .single-product .col-2 {
    padding: 20px 0;
  }
  .single-product h1 {
    font-size: 26px;
    line-height: 32px;
  }
  .cart-info p {
    display: none;
  }
}
          /* Footer CSS AND PRODUCTS */
.sm-products {
            display: flex;
            flex-wrap: wrap;
            padding-left: 42px;
        }

        .sm-product {
            width: 158px;
            margin: 17px;
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        .sm-product:hover{
          transform: scale(1.1);
        }
        .sm-img {
            max-width: 100%;
            height: 90px;
            width: 90px;
            
        }
        .sm-img:hover{
          transform: scale3d() ;
        }

        .name {
            font-size: 13px;
            font-weight: bold;
            text-decoration: none;
            color: #333;
        }

        .name:hover {
            text-decoration: underline;
        }

        .price {
            font-size: 18px;
            color: #f00; /* Red color for price */
        }
        .products_container :hover {
          overflow-y: auto;
        }
        .products_container
        {
            padding: 20px;
        }
        /* Style for the round container */
.sm-cats {
  display: flex;
  justify-content: center;
  align-items: center;
}

/* Style for each individual item */
.sm-cats a {
  text-align: center;
  margin: 10px;
  text-decoration: none;
  display: block;
  background: #3498db; /* Background color for the round shape */
  border-radius: 50%; /* Create a circular shape */
  width: 100px; /* Set the width and height for the circular shape */
  height: 100px;
  padding: 10px;
  transition: transform 0.2s; /* Add a smooth transition effect on hover */
}

/* Style for the item images */
.sm-cats a .sm-img {
  width: 50px; /* Set the size of the images */
  height: 50px;
  display: block;
  margin: 0 auto;
}

/* Style for the item text */
.sm-cats a span {
  color: white; /* Color of the text */
  font-size: 14px; /* Font size of the text */
}

/* Add hover effect to enlarge the circular items */
.sm-cats a:hover {
  transform: scale(1.1); /* Enlarge the circular item on hover */
}

/* Add padding to the bottom of the container */
.sm-box.pg-hom-apps {
  padding-bottom: 20px;
}
    /* Blog Cards */
    .blog-card {
            display: flex;
            flex-direction: column;
            margin: 1rem auto;
            box-shadow: 0 3px 7px -1px rgba(0, 0, 0, 0.1);
            margin-bottom: 1.6%;
            background: #fff;
            line-height: 1.4;
            font-family: sans-serif;
            border-radius: 5px;
            overflow: hidden;
            z-index: 0;
            width: 100%; /* Make the cards full width */
        }

        .blog-card a {
            color: inherit;
        }

        .blog-card a:hover {
            color: #5ad67d;
        }

        .blog-card:hover .photo {
            transform: scale(1.3) rotate(3deg);
        }

        .blog-card .meta {
            position: relative;
            z-index: 0;
            height: 200px;
        }

        .blog-card .photo {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background-size: cover;
            background-position: center;
            transition: transform 0.2s;
        }

        .blog-card .details,
        .blog-card .details ul {
            margin: auto;
            padding: 0;
            list-style: none;
        }

        .blog-card .details {
            position: absolute;
            top: 0;
            bottom: 0;
            left: -100%;
            margin: auto;
            transition: left 0.2s;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            padding: 10px;
            width: 100%;
            font-size: 0.9rem;
        }

        .blog-card .details a {
            text-decoration: dotted underline;
        }

        .blog-card .details ul li {
            display: inline-block;
        }

        .blog-card .details .author:before {
            font-family: FontAwesome;
            margin-right: 10px;
            content: "\f007";
        }

        .blog-card .details .date:before {
            font-family: FontAwesome;
            margin-right: 10px;
            content: "\f133";
        }

        .blog-card .details .tags ul:before {
            font-family: FontAwesome;
            content: "\f02b";
            margin-right: 10px;
        }

        .blog-card .details .tags li {
            margin right: 2px;
        }

        .blog-card .details .tags li:first-child {
            margin-left: -4px;
        }

        .blog-card .description {
            padding: 1rem;
            background: #fff;
            position: relative;
            z-index: 1;
        }

        .blog-card h1,
        .blog-card h2 {
            font-family: Poppins, sans-serif;
        }

        .blog-card h1 {
            line-height: 1;
            margin: 0;
            font-size: 1.7rem;
        }

        .blog-card h2 {
            font-size: 1rem;
            font-weight: 300;
            text-transform: uppercase;
            color: #a2a2a2;
            margin-top: 5px;
        }

        .blog-card .read-more a {
            color: #5ad67d;
        }

        .blog-card .read-more a:after {
            content: "\f061";
            font-family: FontAwesome;
            margin-left: -10px;
            opacity: 0;
            vertical-align: middle;
            transition: margin 0.3s, opacity 0.3s;
        }

        .blog-card .read-more a:hover:after {
            margin-left: 5px;
            opacity: 1;
        }

        .blog-card p {
            position: relative;
            margin: 1rem 0 0;
        }

        .blog-card p:first-of-type {
            margin-top: 1.25rem;
        }

        .blog-card p:first-of-type:before {
            content: "";
            position: absolute;
            height: 5px;
            background: #5ad67d;
            width: 35px;
            top: -0.75rem;
            border-radius: 3px;
        }

        .blog-card:hover .details {
            left: 0%;
        }

        @media (min-width: 640px) {
            .blog-card {
                flex-direction: row;
            }
            .blog-card .meta {
                flex-basis: 40%;
                height: auto;
            }
            .blog-card .description {
                flex-basis: 60%;
            }
            .blog-card.alt {
                flex-direction: row-reverse;
            }
            .blog-card.alt .details {
                padding-left: 25px;
            }
            .blog-card .description:before {
                transform: skewX(-3deg);
                content: "";
                background: #fff;
                width: 30px;
                position: absolute;
                left: -10px;
                top: 0;
                bottom: 0;
                z-index: -1;
            }
            .blog-card.alt .description:before {
                left: inherit;
                right: -10px;
                transform: skew(3deg);
            }
        }
    /* Blog Cards */

      </style>
</head>
<body>
    <nav class="nav-bar">
        <div class="container">
            <ul>
                <li>
                    <button class="cta" onclick="redirectToHome()">
    <span class="hover-underline-animation">Shop now</span>
    <svg viewBox="0 0 46 16" height="10" width="30" xmlns="http://www.w3.org/2000/svg" id="arrow-horizontal">
        <path transform="translate(30)" d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z" data-name="Path 10" id="Path_10"></path>
    </svg>
</button>

<script>
    function redirectToHome() {
        // Define the URL to redirect to
        var homeUrl = '/home';

        // Redirect to the specified URL
        window.location.href = homeUrl;
    }
</script>
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
                <li><a href="/products">Products</a></li>
                <li><a href="/contact">Contact Us</a></li>
                <li><a href="#description">About us</a></li>
                <li><a href="#shopnow">Shop</a></li>
                <li><input type="search" placeholder="Search for Products"></li>
                <li><a href="/loginhome" >Log Out</a></li>
            </ul>
        </div>
    </nav>
    <!-- Products-->
    <div class="small-container">
        <div class="row row-2">
          <h2>All Products</h2>
          
        </div>
        <div class="row">
          <div class="col-4">
            <img src="https://rukminim2.flixcart.com/image/416/416/l4bn5ow0/headphone/k/r/i/-original-imagf8s9wzx2qsgh.jpeg?q=70" alt="" />
            <h5>Oppo Enco Air 2 buds</h5>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹3900.00</p>
            <a href="/oppoenco2" >Get Details</a>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/b7ZVzYr/product-2.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/KsMVr26/product-3.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star-half-alt"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/0cMfpcr/product-4.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
        </div>
      
        <div class="row">
          <div class="col-4">
            <img src="https://i.ibb.co/47Sk9QL/product-1.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/b7ZVzYr/product-2.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/KsMVr26/product-3.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star-half-alt"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/0cMfpcr/product-4.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
        </div>
      
        <div class="row">
          <div class="col-4">
            <img src="https://i.ibb.co/bQ5t8bR/product-5.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/vVpTyBD/product-6.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/hR5FGwH/product-7.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star-half-alt"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/QfCgdXZ/product-8.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
        </div>
      
        <div class="row">
          <div class="col-4">
            <img src="https://i.ibb.co/nw5xZwk/product-9.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/9HCsmjf/product-10.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/JQ2MBHR/product-11.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star-half-alt"></i>
            </div>
            <p>₹500.00</p>
          </div>
      
          <div class="col-4">
            <img src="https://i.ibb.co/nRZMs6Y/product-12.jpg" alt="" />
            <h4>Red Printed T-shirt</h4>
            <div class="rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
              <i class="far fa-star"></i>
            </div>
            <p>₹500.00</p>
          </div>
        </div>
      
        <div class="page-btn">
          <span>1</span>
          <span>2</span>
          <span>3</span>
          <span>4</span>
          <span>&#8594;</span>
        </div>
      </div>
      
    <!-- Products-->

    <!-- Footer -->
    <div class="footer">
        <div class="container">
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