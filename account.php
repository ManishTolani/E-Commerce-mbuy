<?php
  session_start();
    include('header.php');
    include('connection.php');
          if (isset($_POST['reg'])) 
           {
              $user_email = $_POST['reg_user'];
              $user_pass = $_POST['reg_pass'];

              $sql = "INSERT INTO `dailyshop_users` (`user_email`, `user_pass`) VALUES ('".$user_email."', '".$user_pass."')";

              $result = mysqli_query($conn,$sql);
               if ($result) 
                {
                  echo "<script type='text/javascript'>alert('Registration Successfull!')</script>";
                }
            }
 ?>


 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Account Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.php">Home</a></li>                   
          <li class="active">Account</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
              <div class="col-md-6">
                <div class="aa-myaccount-login">
                <h4>Login</h4>
                 <form action="index.php" class="aa-login-form" method="post">
                  <label for="">Username or Email address<span>*</span></label>
                   <input type="text" placeholder="Username or email" name="log_user">
                   <label for="">Password<span>*</span></label>
                    <input type="password" placeholder="Password" name="log_pass">
                    <button type="submit" class="aa-browse-btn" name="enter">Login</button>
                    <label class="rememberme" for="rememberme"><input type="checkbox" name="rem" id="rememberme"> Remember me </label>
                    <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
                  </form>
                </div>
              </div>


              
              <div class="col-md-6">
                <div class="aa-myaccount-register">                 
                 <h4>Register</h4>
                 <form action="account.php" class="aa-login-form" method="post">
                    <label for="">Username or Email address<span>*</span></label>
                    <input type="text" name="reg_user" placeholder="Username or email">
                    <label for="">Password<span>*</span></label>
                    <input type="password" name="reg_pass" placeholder="Password">
                    <button type="submit" name="reg" class="aa-browse-btn">Register</button>                    
                  </form>
                </div>
              </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

  
    <?php
      include('footer.php'); 
    ?>
