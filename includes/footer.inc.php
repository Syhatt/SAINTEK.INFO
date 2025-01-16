<!--? ======== FOOTER ======== -->
<footer class="footer">
  <div class="footer-left">
    <a href="./index.php"><img src="./assets/images/logo-saintekinfo-light2.png" /></a>
    <p>
    The collection point of saintek's news. A one stop shop. We bring to you the current happenings around the saintek world from esteemed writers.
    Make sure to read up and keep up with us through this platform that we bring to you. SAINTEK.INFO
    </p>
    <div class="socials">
      <a href="https://api.whatsapp.com/send/?phone=6281358165717&text&type=phone_number&app_absent=0" target="_blank"><i class="fab fa-whatsapp"></i></a>
      <a href="https://www.youtube.com/@demasaintekuinsa" target="_blank"><i class="fab fa-youtube"></i></a>
      <a href="https://www.tiktok.com/@demafstuinsa_" target="_blank"><i class="fab fa-tiktok"></i></a>
      <a href="https://www.instagram.com/demafstuinsa" target="_blank"><i class="fab fa-instagram"></i></a>
    </div>
  </div>
  <ul class="footer-right">
    <li>
      <h2>Quick Links</h2>
      <ul class="box">
        <li><a href="./index.php">Home</a></li>
        <li><a href="./categories.php">Categories</a></li>
        <li><a href="./bookmarks.php">Bookmarks</a></li>
        <li><a href="./search.php?trending=1">Trending</a></li>
      </ul>
    </li>
    <li>
      <h2>Categories</h2>
      <ul class="box">
        <?php

          // Category Query to fetch random 3 categories
  	      $categoryQuery= " SELECT  category_id, category_name
                            FROM category 
                            ORDER BY RAND() LIMIT 3";

          // Running Category Query
          $result = mysqli_query($con,$categoryQuery);

          // Returns the number of rows from the result retrieved.
          $row = mysqli_num_rows($result);


          // If query has any result (records) => If there are categories
          if($row > 0) {

          // Fetching the data of particular record as an Associative Array
          while($data = mysqli_fetch_assoc($result)) {

            // Storing the category data in variables
            $category_id = $data['category_id'];
            $category_name = $data['category_name'];
            
        ?>
        <li><a href="articles.php?id=<?php echo $category_id ?>"><?php echo $category_name ?></a></li>
        <?php  
              }
            }
          ?>
        <li><a href="./categories.php">More +</a></li>
      </ul>
    </li>
    <li>
      <h2>Join Us</h2>
      <ul class="box">
        <li>
        Come on, Try It Now!
        Join us at SAINTEK.INFO – Read exciting news, become a cool writer, or manage news like a pro!
        </li>
        <a href="./author-login.php" class="my-1 btn btn-secondary">Sign Up</a>
      </ul>
    </li>
  </ul>
  <div class="footer-bottom">
    <p class="img-footer"><img src="./assets/images/logo-saintekinfo.png" /></p>
  </div>
</footer>

<!-- JQUERY SCRIPT -->
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

<!-- SCRIPT FOR BACK TO TOP BUTTON -->
<script src="../assets/js/back-to-top.js"></script>

<!-- SCRIPT FOR NAVBAR COLLAPSE -->
<script src="../assets/js/navbar-collapse.js"></script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

</body>

</html>