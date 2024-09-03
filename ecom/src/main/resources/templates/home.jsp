<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop Now</title>
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

          /* Footer CSS */
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
          /* Footer CSS */
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
                    <button class="cta" onclick="location.href='/home'">
    <span class="hover-underline-animation">Shop now</span>
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
                <li><a href="/products">Products</a></li>
                <li><a href="/contact">Contact Us</a></li>
                <li><a href="/aboutus">About us</a></li>
                <li><a href="#shopnow">Shop</a></li>
                <li><input type="search" placeholder="Search for Products"></li>
                <li><a href="/" >Log out</a></li>
            </ul>
        </div>
    </nav>
    <div class="button-container">
        <sm-dap pos="d_all_header_button_row.0" class="p-d t-b">
            <div>
                <img loading="lazy" src="https://cdn1.smartprix.com/rx-iOuWdVy8m-w320-h50/OuWdVy8m.webp" alt="Image">
            </div>
            <a href="https://smpx.to/amzn-sale" target="_blank" rel="nofollow noopener external"></a>
        </sm-dap>
        <sm-dap pos="d_all_header_button_row.1" class="p-d t-b">
            <div>
                <img loading="lazy" src="https://cdn1.smartprix.com/rx-ihCGx7EXJ-w320-h50/hCGx7EXJ.webp" alt="Image">
            </div>
            <a href="https://smpx.to/fkrt-sale" target="_blank" rel="nofollow noopener external"></a>
        </sm-dap>
        <sm-dap pos="d_all_header_button_row.2" class="p-d t-b">
            <div>
                <img loading="lazy" src="https://cdn1.smartprix.com/rx-iMFoSpDU0-w320-h50/MFoSpDU0.webp" alt="Image">
            </div>
            <a href="https://smpx.to/6Fg6lp" target="_blank" rel="nofollow noopener external"></a>
        </sm-dap>
    </div>
    <div class="blog-card">
        <div class="meta">
            <div class="photo" style="background-image: url(https://rukminim2.flixcart.com/image/612/612/ksxjs7k0/smartwatch/s/g/x/android-sm-r875fzkainu-samsung-yes-original-imag6dthwtevempm.jpeg?q=70)"></div>
            <ul class="details">
                <li class="author"><a href="https://www.flipkart.com/samsung-watch-4-44mmsuper-amoled-bluetooth-calling-function-body-composition-tracking/p/itm9040c9e0ab65e?pid=SMWGD7MNVEKJZRZQ&lid=LSTSMWGD7MNVEKJZRZQJQSRE2&marketplace=FLIPKART&store=ajy&srno=b_1_2&otracker=browse&fm=Search&iid=en_tQ3-iSxZsOKBEND-c6HnsyWLiWCx4vW4-mpERSukJMhWa2-kGKjgfcIyGm9ITkKP7rnYjRBOBwnLuu0qM6tKIQ%3D%3D&ppt=browse&ppn=browse&ssid=kuqb7a3qls0000001697250789313">SAMSUNG Watch 4</a></li>
                <li class="tags">
                    <ul>
                        <li><a href="https://www.flipkart.com/samsung-watch-4-44mmsuper-amoled-bluetooth-calling-function-body-composition-tracking/p/itm9040c9e0ab65e?pid=SMWGD7MNVEKJZRZQ&lid=LSTSMWGD7MNVEKJZRZQJQSRE2&marketplace=FLIPKART&store=ajy&srno=b_1_2&otracker=browse&fm=Search&iid=en_tQ3-iSxZsOKBEND-c6HnsyWLiWCx4vW4-mpERSukJMhWa2-kGKjgfcIyGm9ITkKP7rnYjRBOBwnLuu0qM6tKIQ%3D%3D&ppt=browse&ppn=browse&ssid=kuqb7a3qls0000001697250789313">₹8,999</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="description">
            <h1>Find the best Product</h1>
            <h2>Opening a door to the future</h2>
            <p>Our website shows all the products available in different platforms and allows you to get your desired product in an easy way.</p>
            <p class="read-more">
                <a href="/products">Shop Now</a>
            </p>
        </div>
    </div>
    <div class="blog-card alt">
        <div class="meta">
            <div class="photo" style="background-image: url(https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/a/o/z/nord-ce-3-lite-5g-ce2099-oneplus-original-imagzj3wqxzgquah.jpeg?q=70)"></div>
            <ul class="details">
                <li class="author"><a href="https://www.flipkart.com/oneplus-nord-ce-3-lite-5g-pastel-lime-256-gb/p/itm2cd5a4e659035?pid=MOBGZJ3ZFQ8AKKRS&lid=LSTMOBGZJ3ZFQ8AKKRSMX9GYC&marketplace=FLIPKART&q=one+plus&store=search.flipkart.com&srno=s_1_5&otracker=search&otracker1=search&fm=Search&iid=e5d74c1c-625b-4f0e-ab41-562864b8d66b.MOBGZJ3ZFQ8AKKRS.SEARCH&ppt=sp&ppn=sp&ssid=26lkccextc0000001697250333540&qH=736af28959dfbfff">OnePlus Nord CE 3 Lite 5G</a></li>
                <li class="tags">
                    <ul>
                        <li><a href="https://www.flipkart.com/oneplus-nord-ce-3-lite-5g-pastel-lime-256-gb/p/itm2cd5a4e659035?pid=MOBGZJ3ZFQ8AKKRS&lid=LSTMOBGZJ3ZFQ8AKKRSMX9GYC&marketplace=FLIPKART&q=one+plus&store=search.flipkart.com&srno=s_1_5&otracker=search&otracker1=search&fm=Search&iid=e5d74c1c-625b-4f0e-ab41-562864b8d66b.MOBGZJ3ZFQ8AKKRS.SEARCH&ppt=sp&ppn=sp&ssid=26lkccextc0000001697250333540&qH=736af28959dfbfff">₹21,999</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="description">
            <h1>At the best Price</h1>
            <h2>Get the product for the best price your looking.</h2>
            <p>Get your product at best price by comparing with different websites where the product is available and buy at less price.</p>
            <p class="read-more">
                <a href="/nordce3">Shop Now</a>
            </p>
        </div>
    </div>
    <div class="products_container" id="shopnow">
      <div class="sm-products scroll size-s img-long len-8">
      <!-- Product 1 -->
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://m.media-amazon.com/images/I/71jObCfwI7L._UX695_.jpg" alt="Woodland Men's Ogb 3511119 Ankle Boot">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">Woodland Men's Ogb 3511119 Ankle Boot</a>
          <span class="price">₹2,582</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://m.media-amazon.com/images/I/7192ztv+rNL._SL1500_.jpg" alt="Acer 127 cm (50 inches) H PRO Series 4K ">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">Acer 127 cm (50 inches) H PRO Series 4K</a>
          <span class="price">₹33,999</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/y/9/g/-original-imagnfzyhh8gz8sd.jpeg?q=70" alt="POCO C55 (Cool Blue, 128 GB)  (6 GB RAM)">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">POCO C55 (Cool Blue, 128 GB)  (6 GB RAM)</a>
          <span class="price">₹7,999</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://rukminim2.flixcart.com/image/416/416/xif0q/computer/w/h/9/-original-imagtsygc6qr9rvv.jpeg?q=70" alt="HP Ryzen 5 Hexa Core 5500U - (16 GB/512 GB SSD/Windows 11 Home) ">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">HP Ryzen 5 Hexa Core 5500U</a>
          <span class="price">₹41,999</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/n/i/d/-original-imagpgx4erjqnpzx.jpeg?q=70" alt="Google Pixel 7a (Charcoal, 128 GB)  (8 GB RAM)">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">Google Pixel 7a (Charcoal, 128 GB)  (8 GB RAM)</a>
          <span class="price">₹35,999</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://m.media-amazon.com/images/I/41yCc3uKF6L._SX342_SY445_QL70_FMwebp_.jpg" alt="Whirlpool 7 Kg 5 Star Washing Machine">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">Whirlpool 7 Kg 5 Star Washing Machine</a>
          <span class="price">₹14,790</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://rukminim2.flixcart.com/image/416/416/xif0q/headphone/u/x/n/-original-imagt5cwdh42qqhh.jpeg?q=70" alt="Boult Audio W20 with Zen ENC Mic">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">Boult Audio W20 with Zen ENC Mic</a>
          <span class="price">₹899</span>
      </div>

      <div class="sm-product">
        <div class="sm-img-wrap">
            <img loading="lazy" class="sm-img" src="https://m.media-amazon.com/images/I/41QGEJxtW1L._SX300_SY300_QL70_FMwebp_.jpg" alt="Noise Fit">
        </div>
        <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">Xiaomi Redmi Note 13 Pro Plus</a>
        <span class="price">₹2,990</span>
    </div>
    <div class="sm-product">
        <div class="sm-img-wrap">
            <img loading="lazy" class="sm-img" src="https://m.media-amazon.com/images/I/51-cyGLC3kL._SX522_.jpg" alt="Bajaj New Shakti Neo 15L Vertical Storage Water Heater">
        </div>
        <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">Bajaj New Shakti Neo 15L Vertical Storage Water Heater</a>
        <span class="price">₹5,499</span>
    </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://rukminim2.flixcart.com/image/416/416/xif0q/headphone/p/r/z/enco-buds-2-oppo-original-imagh9frfp7gxdb3.jpeg?q=70" alt="OPPO Enco Buds 2 with 28 hours Battery life">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">OPPO Enco Buds 2 with 28 hours Battery life</a>
          <span class="price">₹1,499</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://m.media-amazon.com/images/I/51FcQaajj8L._SX679_.jpg" alt="Panasonic 450L 2 Star Prime Convertible">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">Xiaomi Redmi Note 13 Pro Plus</a>
          <span class="price">₹63,493</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://rukminim2.flixcart.com/image/416/416/kbzergw0/headphone/q/j/f/ydjc01jy-mi-original-imaft7gypyfhhpjr.jpeg?q=70" alt=" Mi Wired in-Ear Earphones with Mic">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2"> Mi Wired in-Ear Earphones with Mic</a>
          <span class="price">₹399</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://m.media-amazon.com/images/I/71lVwl3q-kL._SX679_.jpg" alt="MI Power Bank 3i 20000mAh">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">MI Power Bank 3i 20000mAh</a>
          <span class="price">₹1,949</span>
      </div>
      <div class="sm-product">
          <div class="sm-img-wrap">
              <img loading="lazy" class="sm-img" src="https://rukminim2.flixcart.com/image/416/416/jh6l2fk0/headphone/v/t/7/sony-mdr-zx310apbce-original-imaf59ebhygmdhgv.jpeg?q=70" alt="SONY 310AP Wired Headset  (Black, On the Ear)">
          </div>
          <a href="/mobiles/xiaomi-redmi-note-13-pro-plus-ppd17s27km27" class="name clamp-2">SONY 310AP Wired Headset  (Black, On the Ear)</a>
          <span class="price">₹949</span>
      </div>
      </div>
    </div>
            <div class="sm-box pg-hom-apps">
        <div class="sm-cats round icon-s">
        <a href="https://l.smartprix.com/l?k=125E-tyPD8dptNBCCpphrhArnrysuhyiarTFhrhrhrhrhrhr&amp;click_src=integrated-apps-home&amp;in_browser=1" rel="nofollow noopener" data-way="">
            <img loading="lazy" class="sm-img" src="https://cdn1.smartprix.com/rx-iR2NxBi82-w100-h100/R2NxBi82.webp" alt="Amazon">
            <span>Amazon</span>
        </a>
        <a href="https://l.smartprix.com/l?k=125rgA_4NCVS7z.xqvlhrhAgTYBOr3Uh7hrjui3sYihoPjBBhrhrhrhrhrhr&amp;click_src=integrated-apps-home&amp;in_browser=1" rel="nofollow noopener" data-way="">
            <img loading="lazy" class="sm-img" src="https://cdn1.smartprix.com/rx-i1jV84HS1-w100-h100/1jV84HS1.webp" alt="Flipkart">
            <span>Flipkart</span>
        </a>
        <a href="https://l.smartprix.com/l?k=12-rON~72~CJt_yBePghrhiA3snrh7hrjui3sYihoPjBBhrhrhrhrhr&amp;click_src=integrated-apps-home&amp;in_browser=1" rel="nofollow noopener" data-way="">
            <img loading="lazy" class="sm-img" src="https://cdn1.smartprix.com/rx-i4vfi1umq-w100-h100/4vfi1umq.webp" alt="Croma">
            <span>Croma</span>
        </a>
        <a href="https://l.smartprix.com/l?k=12HblQArW7OCi5zzjW3thrhAFrnFCuWh7Yuh-hrjui3sYihoPjBBhrhrhrhrhr&amp;click_src=integrated-apps-home&amp;in_browser=1" rel="nofollow noopener" data-way="">
            <img loading="lazy" class="sm-img" src="https://cdn1.smartprix.com/rx-ircJXXuPY-w100-h100/rcJXXuPY.webp" alt="Samsung">
            <span>Samsung</span>
        </a>
        <a href="https://l.smartprix.com/l?k=12HHr-iEsP6Piuq7lZWxhrhinIuU3rh7hrjui3sYihoPjBBhrhrhrhrhr&amp;click_src=integrated-apps-home&amp;in_browser=1" rel="nofollow noopener" data-way="">
            <img loading="lazy" class="sm-img" src="https://cdn1.smartprix.com/rx-is3m58Ie0-w100-h100/s3m58Ie0.webp" alt="Myntra">
            <span>Myntra</span>
        </a>
        <a href="/integrated_apps" rel="nofollow noopener" data-way="">
            <img loading="lazy" class="sm-img" src="https://cdn1.smartprix.com/rx-iJhJ210qu-w100-h100/JhJ210qu.webp" alt="More">
            <span>More</span>
        </a>
    </div>
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