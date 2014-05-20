<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.servlets.ProductBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Shop Around</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
</head>
<body>
<!-- Shell -->
<div class="shell">
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">shoparound</a></h1>
    <!-- Cart -->
    <div id="cart"> <a href="#" class="cart-link">Your Shopping Cart</a>
      <div class="cl">&nbsp;</div>
      <span>Articles: <strong>4</strong></span> &nbsp;&nbsp; <span>Cost: <strong>$250.99</strong></span> </div>
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
      <ul>
        <li><a href="index.jsp" class="active">Home</a></li>
        <li><a href="./support.html">Support</a></li>
        <li><a href="#">My Account</a></li>
        <li><a href="#">The Store</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </div>
    <!-- End Navigation -->
  </div>
  <!-- End Header -->
  <!-- Main -->
  <div id="main">
    <div class="cl">&nbsp;</div>
    <!-- Content -->
    <div id="content">
      <!-- Content Slider -->
      
      <!-- End Content Slider -->
      <!-- Products -->
      <div class="products">
        <div class="cl">&nbsp;</div>
        <ul>
        
          <li> <a href="ProductServlet?mydata1=${selectCategory.path[0]}&mydata2=${selectCategory.price[0]}"><img src="${selectCategory.path[0]}" alt="" /></a>
            <div class="product-info">
              <h3>${selectCategory.name[0]}</h3>
              <div class="product-desc">
                <h4>${selectCategory.description[0] }</h4>
                <p>${selectCategory.description[0] }<br />
                  </p>
                <strong class="price">$${selectCategory.price[0]}</strong> </div>
            </div>
          </li>
          <li> <a href="ProductServlet?mydata1=${selectCategory.path[1]}&mydata2=${selectCategory.price[1]}"><img src="${selectCategory.path[1]}" alt="" /></a>
            <div class="product-info">
              <h3>${selectCategory.name[1] }</h3>
              <div class="product-desc">
                <h4>${selectCategory.description[1] }</h4>
                <p>${selectCategory.description[1] }<br />
                  </p>
                <strong class="price">$${selectCategory.price[1]}</strong> </div>
            </div>
          </li>
          <li class="last"> <a href="ProductServlet?mydata1=${selectCategory.path[2]}&mydata2=${selectCategory.price[2]}"><img src="${selectCategory.path[2]}" alt="" /></a>
            <div class="product-info">
              <h3>${selectCategory.name[2] }</h3>
              <div class="product-desc">
                <h4>${selectCategory.description[2] }</h4>
                <p>${selectCategory.description[2] }<br />
                  </p>
                <strong class="price">$${selectCategory.price[2]}</strong> </div>
            </div>
          </li>
        </ul>
	<ul>
          <li> <a href="ProductServlet?mydata1=${selectCategory.path[3]}&mydata2=${selectCategory.price[3]}"><img src="${selectCategory.path[3]}" alt="" /></a>
            <div class="product-info">
              <h3>${selectCategory.name[3] }</h3>
              <div class="product-desc">
                <h4>${selectCategory.description[3] }</h4>
                <p>${selectCategory.description[3] }<br />
                  </p>
                <strong class="price">$${selectCategory.price[3]}</strong> </div>
            </div>
          </li>
          <li> <a href="ProductServlet?mydata1=${selectCategory.path[4]}&mydata2=${selectCategory.price[4]}"><img src="${selectCategory.path[4]}" alt="" /></a>
            <div class="product-info">
              <h3>${selectCategory.name[4] }</h3>
              <div class="product-desc">
                <h4>${selectCategory.description[4] }</h4>
                <p>${selectCategory.description[4] }<br />
                  </p>
                <strong class="price">$${selectCategory.price[4]}</strong> </div>
            </div>
          </li>
          <li class="last"> <a href="ProductServlet?mydata1=${selectCategory.path[5]}&mydata2=${selectCategory.price[5]}"><img src="${selectCategory.path[5]}" alt="" /></a>
            <div class="product-info">
              <h3>${selectCategory.name[5]}</h3>
              <div class="product-desc">
                <h4>${selectCategory.description[5]}</h4>
                <p>${selectCategory.description[5]}<br />
                  </p>
                <strong class="price">$${selectCategory.price[5]}</strong> </div>
            </div>
          </li>
        </ul>
	<ul>
          <li> <a href="ProductServlet?mydata1=${selectCategory.path[6]}&mydata2=${selectCategory.price[6]}"><img src="${selectCategory.path[6]}" alt="" /></a>
            <div class="product-info">
              <h3>${selectCategory.name[6]}</h3>
              <div class="product-desc">
                <h4>${selectCategory.description[6]}</h4>
                <p>${selectCategory.description[6]}<br />
                  </p>
                <strong class="price">$${selectCategory.price[6]}</strong> </div>
            </div>
          </li>
          <li> <a href="ProductServlet?mydata1=${selectCategory.path[7]}&mydata2=${selectCategory.price[7]}"><img src="${selectCategory.path[7]}" alt="" /></a>
            <div class="product-info">
              <h3>${selectCategory.name[7]}</h3>
              <div class="product-desc">
                <h4>${selectCategory.description[7]}</h4>
                <p>${selectCategory.description[7]}<br />
                  </p>
                <strong class="price">$${selectCategory.price[7]}</strong> </div>
            </div>
          </li>
          <li class="last"> <a href="ProductServlet?mydata1=${selectCategory.path[8]}&mydata2=${selectCategory.price[8]}"><img src="${selectCategory.path[8]}" alt="" /></a>
            <div class="product-info">
              <h3>${selectCategory.name[8]}</h3>
              <div class="product-desc">
                <h4>${selectCategory.description[8]}</h4>
                <p>${selectCategory.description[8]}<br />
                  </p>
                <strong class="price">$${selectCategory.price[8]}</strong> </div>
            </div>
          </li>
        </ul>
        <div class="cl">&nbsp;</div>
      </div>
      <!-- End Products -->
    </div>
    <!-- End Content -->
    <!-- Sidebar -->
    <div id="sidebar">
      <!-- Search -->
      <div class="box search">
        <h2>Search by <span></span></h2>
        <div class="box-content">
          <form action="ProductOptionServlet" method="get">
            <label>Keyword</label>
            <input type="text" class="field" name="keyword" />
            <label>Category</label>
           <select class="field" name="category">
              <option value="">-- Select Category --</option>
              <option value="Ayakkabi">Ayakkabi</option>
              <option value="Aksesuar">Aksesuar</option>
              <option value="Canta">Canta</option>
              <option value="Ceket">Ceket</option>
              <option value="CocukGiyim">Cocuk Giyim</option>
              <option value="Corap">Corap</option>
              <option value="Cuzdan">Cuzdan</option>
              <option value="Kazak">Kazak</option>
              <option value="Mont">Mont</option>
              <option value="Pantolon">Pantolon</option>
              <option value="Sapka">Sapka</option>
              <option value="SporGiyim">Spor Giyim</option>
              <option value="TakimElbise">Takim Elbise</option>
            </select>
            <div class="inline-field">
              <label>Price</label>
             <select class="field small-field" name="cost1">
                <option value="10">$10</option>
                <option value="30">$30</option>
                <option value="50">$50</option>
              </select>
              <label>to:</label>
              <select class="field small-field" name="cost2">
                <option value="50">$50</option>
                <option value="100">$100</option>
                <option value="200">$200</option>
              </select>
            </div>
            <input type="submit" class="search-submit" value="Search" />
            <p> <a href="#" class="bul">Advanced search</a><br />
              <a href="#" class="bul">Contact Customer Support</a> </p>
          </form>
        </div>
      </div>
      <!-- End Search -->
      <!-- Categories -->
      <div class="box categories">
        <h2>Categories <span></span></h2>
        <div class="box-content">
          <ul>
            <li><a href="RandomProductServlet?param=Ayakkabi">Ayakkabi</a></li>
            <li><a href="RandomProductServlet?param=Aksesuar">Aksesuar</a></li>
            <li><a href="RandomProductServlet?param=Canta">Canta</a></li>
            <li><a href="RandomProductServlet?param=Ceket">Ceket</a></li>
            <li><a href="RandomProductServlet?param=CocukGiyim">Cocuk Giyim</a></li>
            <li><a href="RandomProductServlet?param=Corap">Corap</a></li>
            <li><a href="RandomProductServlet?param=Cuzdan">Cuzdan</a></li>
            <li><a href="RandomProductServlet?param=Kazak">Kazak</a></li>
            <li><a href="RandomProductServlet?param=Mont">Mont</a></li>
            <li><a href="RandomProductServlet?param=Pantolon">Pantolon</a></li>
            <li><a href="RandomProductServlet?param=Sapka">Sapka</a></li>
            <li><a href="RandomProductServlet?param=SporGiyim">Spor Giyim</a></li>
            <li class="last"><a href="RandomProductServlet?param=TakimElbise">Takim Elbise</a></li>
          </ul>
        </div>
      </div>
      <!-- End Categories -->
    </div>
    <!-- End Sidebar -->
    <div class="cl">&nbsp;</div>
  </div>
  <!-- End Main -->
  <!-- Side Full -->
  <div class="side-full">
    <!-- More Products -->
    <div class="more-products">
      <div class="more-products-holder">
        <ul>
          <li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
          <li class="last"><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
        </ul>
      </div>
      <div class="more-nav"> <a href="#" class="prev">previous</a> <a href="#" class="next">next</a> </div>
    </div>
    <!-- End More Products -->
    <!-- Text Cols -->
    <div class="cols">
      <div class="cl">&nbsp;</div>
      <div class="col">
        <h3 class="ico ico1">Donec imperdiet</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
        <p class="more"><a href="#" class="bul">Lorem ipsum</a></p>
      </div>
      <div class="col">
        <h3 class="ico ico2">Donec imperdiet</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
        <p class="more"><a href="#" class="bul">Lorem ipsum</a></p>
      </div>
      <div class="col">
        <h3 class="ico ico3">Donec imperdiet</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
        <p class="more"><a href="#" class="bul">Lorem ipsum</a></p>
      </div>
      <div class="col col-last">
        <h3 class="ico ico4">Donec imperdiet</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
        <p class="more"><a href="#" class="bul">Lorem ipsum</a></p>
      </div>
      <div class="cl">&nbsp;</div>
    </div>
    <!-- End Text Cols -->
  </div>
  <!-- End Side Full -->
  <!-- Footer -->
  <div id="footer">
    <p class="left"> <a href="#">Home</a> <span>|</span> <a href="#">Support</a> <span>|</span> <a href="#">My Account</a> <span>|</span> <a href="#">The Store</a> <span>|</span> <a href="#">Contact</a> </p>
    <p class="right"> &copy; 2010 Shop Around. Design by <a href="http://chocotemplates.com">Chocotemplates.com</a> </p>
  </div>
  <!-- End Footer -->
</div>
<!-- End Shell -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
    