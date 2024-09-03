<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Page</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        /* Add your existing styles here */
        /* ... */
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
        .cta:hover .hover-underline-animation:after {
          transform: scaleX(1);
          transform-origin: bottom left;
        }        .hover-underline-animation:after {
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
        /* Updated styles for the new layout */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
        }

        .cont {
            max-width: 1200px; /* Reduced cont width for a more product-like appearance */
            margin: 0 auto;
            padding: 20px;
        }

        .product {
            display: flex;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            overflow: hidden;
        }

        .carousel-cont {
            width: 50%;
            overflow: hidden;
        }

        .carousel {
            display: flex;
            flex-direction: column;
        }

        .description-cont {
            width: 50%;
            padding: 20px;
        }
        .description {
            padding: 20px;
        }

        .description h2 {
            font-size: 20px; /* Slightly larger font size */
            margin-bottom: 10px;
        }

        .description p {
            font-size: 16px; /* Slightly larger font size */
            color: #666;
        }

        .highlights {
            padding: 20px;
        }

        .highlights h3 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .highlights p {
            font-size: 16px;
            color: #666;
        }

        .carousel {
            width: 75%; /* Smaller carousel width */
            max-height: 400px; /* Limit the carousel height */
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            margin: 45px;
        }
        .carousel-inner {
            text-align: center;

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
        .product-image {
            width: 100%; /* Ensure images fit within the carousel */
            max-height: 350px; /* Limit the image height */
        }


        .image-description {
            position: absolute;
            background: rgba(0, 0, 0, 0.8);
            color: #fff;
            font-size: 18px;
            padding: 10px;
            bottom: 0;
            left: 0;
            width: 100%;
            display: none;
        }

        .pricing {
            padding: 20px;
            border-top: 1px solid #ddd;
        }

        .price h3 {
            font-size: 18px; /* Slightly larger font size */
            margin-bottom: 10px;
        }

        .price p {
            font-size: 20px; /* Larger font size */
            color: #FF4500;
            font-weight: bold;
        }

        .purchase-links a {
            display: block;
            font-size: 18px; /* Slightly larger font size */
            text-decoration: none;
            margin: 10px 0;
            color: #007BFF;
            font-weight: bold;
            transition: color 0.3s;
        }

        .purchase-links a:hover {
            color: #0056b3;
        }

        .d-block w-100 {
            height: 10px;
            width: 30px;
            position: relative;
        }
        .product-image{
            max-height: 400px; 
            width: 100%;
            padding: 10px;
            margin-left: 15px;
        }
        .description-cont h4{
            padding-left: 0px;
        }
        .description-cont-high h4{
            padding-left: 20px;
        }
        .description-cont-high{
            padding-left: 50px;
        }
        .purchase-links-cont{
            padding-left: 500px;
        }
        .purchase-links-cont h4{
            padding-left: 20px;
        }
        .slider-container {
            width: 98%;
            margin: 0 auto;
            overflow-x: auto;
            white-space: nowrap;
            border: 1px solid #ccc;
            padding: 10px;
            margin: 5px;
            border-radius: 10px;
        }

        .slider {
            display: inline-block;
        }

        .product-cards {
            display: inline-flex;
            gap: 20px; /* Add some horizontal space between cards */
        }

        .card {
            width: 200px;
            border: 1px solid #ccc;
            text-align: center;
            padding: 10px; /* Reduced padding for a cleaner look */
            display: flex;
            flex-direction: column;
        }

        .card img {
            max-width: 90%; /* Ensure all images are the same width */
            height: 180px; /* Set a fixed height for all images */
        }

        .compare-button {
            background-color: #4caf50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: auto; /* Align the button to the bottom */
            width: 100%; /* Make the button width 100% of the card */
        }

        .compare-button:hover {
            background-color: #45a049;
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
.container-foot {
          max-width: 1200px;
          margin: 0 auto;
        }
    </style>
    <script src="script.js"></script>
</head>
<nav class="nav-bar">
    <div class="container">
        <ul>
            <li>
                <button class="cta" onclick="redirectToHome()" >
                    <span class="hover-underline-animation"> Shop now </span>
                    <svg viewBox="0 0 46 16" height="10" width="30" xmlns="http://www.w3.org/2000/svg" id="arrow-horizontal">
                      <path transform="translate(30)" d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z" data-name="Path 10" id="Path_10"></path>
                    </svg>
                </button>
                <script>
                    function redirectToLink() {
                        // Define the URL you want to redirect to
                        var redirectUrl = "/"; // Replace with your desired URL
            
                        // Redirect to the specified URL
                        window.location.href = redirectUrl;
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
            <li><a href="#">Products</a></li>
            <li><a href="contactus.jsp">Contact Us</a></li>
            <li><a href="#description">About us</a></li>
            <li><a href="#shopnow">Shop</a></li>
            <li><input type="search" placeholder="Search for Products"></li>
            <li><a href="#">Open an Account</a></li>
            <li><a href="#" >Sign In</a></li>
        </ul>
    </div>
</nav>

<body>
    <div class="cont">
        <div class="product">
            <!-- First cont - Image Carousel -->
            <div class="carousel-cont">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://rukminim2.flixcart.com/image/416/416/l4bn5ow0/headphone/k/r/i/-original-imagf8s9wzx2qsgh.jpeg?q=70" class="product-image" alt="...">
                            
                        </div>
                        <div class="carousel-item">
                            <img src="https://rukminim2.flixcart.com/image/416/416/l4bn5ow0/headphone/l/k/c/-original-imagf8s9hph7yb7e.jpeg?q=70" class="product-image" alt="...">
                            
                        </div>
                        <div class="carousel-item">
                            <img src="https://rukminim2.flixcart.com/image/416/416/l4bn5ow0/headphone/k/7/4/-original-imagf8s97umvygd4.jpeg?q=70" class="product-image" alt="...">
                            
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>

            <!-- Second cont - Description -->
            <div class="description-cont">
                <h4>OPPO Enco Air 2 Pro Bluetooth Headset</h4>
                <p>Sound Quality: 12.4mm Titanium-Coated Diaphragm Drivers can deliver deeper bass ,wider sound field , and clearer vocals; <br> Ergonomic Design: Refractive bubble case design and innovative refractive case looks translucent in light, making it a perfect accessory; <br> IP54 :Dust and Water Resistance. Enjoy your music while sweating it out; <br> Low Latency :94ms Ultra low Game latency for seamless gaming experience <br>Long Battery Hours: Up to 28 hours of listening time. Listen to your favourite music and play games without worrying about battery life.10 Mins of charge can run for 2 hours of music playback.</p>
            </div>
        </div>

        <div class="product">
            <!-- Third cont - Description -->
            <div class="description-cont-high">
                <h4>Highlights</h4>
                <p>
                    → With Mic:Yes <br>
                    → Low Latency <br>
                    → Long Battery Hours <br>
                    → Active Noise Cancellation</p>
                <!-- Other description elements here -->
            </div>

            <!-- Fourth cont - Purchase Links -->
            <div class="purchase-links-cont">
                <h4>Prices:</h4>
                <ul>
                    <li>
                        <div class="purchase-link">
                            <a href="https://www.amazon.in/Oppo-Bluetooth-Truly-Wireless-Earbuds/dp/B0B1ZXZ484/ref=sr_1_4?crid=17SSAXDNQZI5W&keywords=OPPO%2BEnco%2BAir%2B2%2BPro&nsdOptOutParam=true&qid=1697321117&sprefix=oppo%2B%2Caps%2C1791&sr=8-4&th=1" target="_blank">Amazon</a>
                            <span>₹3,499</span>
                        </div>
                    </li>
                    <li>
                        <div class="purchase-link">
                            <a href="https://www.flipkart.com/oppo-enco-air-2-pro-bluetooth-headset/p/itmcad46ef18cd2c?pid=ACCGCRT2GEAGKDKM&lid=LSTACCGCRT2GEAGKDKM6SLS18&marketplace=FLIPKART&q=noise+earbuds+2+pro&store=0pm%2Ffcn%2F821%2Fa7x%2F2si&spotlightTagId=FkPickId_0pm%2Ffcn%2F821%2Fa7x%2F2si&srno=s_1_5&otracker=AS_QueryStore_OrganicAutoSuggest_1_19_na_na_ps&otracker1=AS_QueryStore_OrganicAutoSuggest_1_19_na_na_ps&fm=search-autosuggest&iid=b8d32d66-68fe-4278-a452-f8b09fbc8f0b.ACCGCRT2GEAGKDKM.SEARCH&ppt=sp&ppn=sp&ssid=s1derf69w00000001697321076838&qH=fc67b028b380e0e3" target="_blank">Flipkart</a>
                            <span>₹3,499</span>
                        </div>
                    </li>
                    
                    <!-- Add more purchase links here -->
                </ul>
            </div>
            
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <div class="slider-container">
        <div class="slider">
            <div class="product-cards">
                <!-- Product Cards -->
                <div class="card">
                    <img src="https://m.media-amazon.com/images/I/41eSQvTbsaL._SX300_SY300_QL70_FMwebp_.jpg" alt="OnePlus 11 5G">
                    <h2>₹61,999</h2>
                    <p>OnePlus 11 5G</p>
                    <button class="compare-button">Compare</button>
                </div>
                <div class="card">
                    <img src="https://m.media-amazon.com/images/I/514xUT1xYVL._SX679_.jpg" alt="Safari Pentagon">
                    <h2>₹1,499</h2>
                    <p>Safari Pentagon</p>
                    <button class="compare-button">Compare</button>
                </div>
                <div class="card">
                    <img src="https://rukminim2.flixcart.com/image/832/832/xif0q/shoe/r/v/e/-original-imagsc2pd38qbyef.jpeg?q=70" alt="X-Ray 2 Square SD Sneakers For Men">
                    <h2>₹3,307</h2>
                    <p>X-Ray 2 Square SD Sneakers</p>
                    <button class="compare-button">Compare</button>
                </div>
                <div class="card">
                    <img src="https://m.media-amazon.com/images/I/51-cyGLC3kL._SL1500_.jpg" alt="Bajaj">
                    <h2>₹5,499</h2>
                    <p>Bajaj</p>
                    <button class="compare-button">Compare</button>
                </div>
                <div class="card">
                    <img src="https://m.media-amazon.com/images/I/41yBEez+EUL._SY300_SX300_.jpg" alt="HP Laptop 15">
                    <h2>₹62,990</h2>
                    <p>HP Laptop 15</p>
                    <button class="compare-button">Compare</button>
                </div>
                <div class="card">
                    <img src="https://m.media-amazon.com/images/I/31-3Cz0GomL._SX300_SY300_QL70_FMwebp_.jpg" alt="JBL Tune 230NC TWS">
                    <h2>₹3,998</h2>
                    <p>JBL Tune 230NC TWS</p>
                    <button class="compare-button">Compare</button>
                </div>
                <div class="card">
                    <img src="https://rukminim2.flixcart.com/image/832/832/xif0q/sweatshirt/c/m/6/m-2062-hiphoptrends-original-imagmprszmjug5yd.jpeg?q=70" alt="Men Full Sleeve Printed">
                    <h2>₹239</h2>
                    <p>Men Full Sleeve Printed</p>
                    <button class="compare-button">Compare</button>
                </div>
                <div class="card">
                    <img src="https://m.media-amazon.com/images/I/31Bo8uHJRYL._SX300_SY300_QL70_FMwebp_.jpg" alt="Xiaomi Wired Earphones">
                    <h2>₹398</h2>
                    <p>Xiaomi Wired Earphones</p>
                    <button class="compare-button">Compare</button>
                </div>
                <div class="card">
                    <img src="https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/9/e/4/-original-imagtcrumzbqj4xd.jpeg?q=70" alt="OPPO Reno10 5G">
                    <h2>₹32,999</h2>
                    <p>OPPO Reno10 5G</p>
                    <button class="compare-button">Compare</button>
                </div>
            </div>
        </div>
    </div>

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
