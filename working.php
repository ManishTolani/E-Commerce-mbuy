 <!--  <?php 

                $sh = "SELECT * FROM `dailyshop_category`";
                $hres = mysqli_query($conn,$sh);
                $hnum = mysqli_num_rows($hres);
                while ($c_row = mysqli_fetch_assoc($hres)) 
                {
                  echo $c_row['category_name'];
               ?>

                 <?php 

                }
                    
              ?> -->
