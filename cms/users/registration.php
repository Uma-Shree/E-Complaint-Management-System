

<?php
include('includes/config.php');
error_reporting(0);
if(isset($_POST['submit']))
{
	$eid=$_POST['eid'];
	$fullname=$_POST['fullname'];
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$contactno=$_POST['contactno'];
	$desig=$_POST['desig'];
	$workexp=$_POST['workexp'];
	$department=$_POST['department'];
	$status=1;
	$query=mysqli_query($con,"insert into users(eid,fullName,userEmail,password,contactNo,desig,workexp,department,status) values('$eid','$fullname','$email','$password','$contactno','$desig','$workexp','$department','$status')");
	$msg="Registration successfull. Now You can login !";
	
	
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title> User Registration</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.4.24/sweetalert2.all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@flasher/flasher@1.1.1/dist/flasher.min.js"></script>
    	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
  </head>

  <body>

  <?php include('includes/nav.php'); ?>
  <?php include("header.php");
	  ?>
	  <div id="login-page">
	  	<div class="container">
	<!-- <h2 align="center" style="color:#fff"><a href="../index.html" style="color:#fff">Welcome to E- Complaint Management Portal of Kubernetes </a></h2> -->
	
		      <form class="form-login form-group" method="post">
		        <h2 class="form-login-heading">New User Registration </h2>
		        <p style="padding-left: 1%; color: green">
		        	<?php if($msg){ ?>
						<script>
						 flasher.success('User Registered successfully!');
                        swal("Welcome!", "You have Successfully Registered!", "success");
       

						
						</script>
						<?php
						
						header('location:./index.php');

					}?>
					


		        </p>
		        <div class="login-wrap">
					<label>Employee Id</label>
				<input type="text" class="form-control" maxlength="14" placeholder="Employee Id" name="eid" required="required" autofocus>
		            <br>
					<label>Employee Name</label>
		         <input type="text" class="form-control" placeholder="Full Name" name="fullname" required="required" autofocus>
		            <br>
					<label>Employee Email ID</label>
		            <input type="email" class="form-control" placeholder="Email ID" id="email" onBlur="userAvailability()" name="email" required="required">
		             <span id="user-availability-status1" style="font-size:12px;"></span>
		            <br>
					<label> Password</label>
		            <input type="password" class="form-control" placeholder="Password" required="required" name="password"><br >
					<label>Contact Number</label>
		             <input type="text" class="form-control" maxlength="10" name="contactno" placeholder="Contact no" required="required" autofocus>
		            <br>
					
					<label for="cars">Select Your Designation:</label>

<select name="desig" id="desig">
  <option value="Logistic Manager">Logistic Manager</option>
  <option value="Customs Supervisor">Customs Supervisor</option>
  <option value="Merchandiser Supervisor">Merchandiser Supervisor</option>
  <option value="Materials Manager">Materials Manager</option>
  <option value="Purchasing Manager"> Purchasing Manager</option>
  <option value="Warehouse Manager">Warehouse Manager</option>
  <option value="Distribution Manager">Distribution Manager</option>
  <option value="Shipping Specialist">Shipping Specialist</option>
  <option value="Warehouse Stock Staff">Warehouse Stock Staff</option>
  <option value="Courier Specialist">Courier Specialist</option>

</select><br>
		            <!--<label>Designation</label>
		         <input type="text" class="form-control" placeholder="Designation" name="desig" required="required" autofocus>
		            <br> -->
					<label for="workexp">Your Work Experience </label>

<select name="workexp" id="workexp">
<option value="1">Less than 1</option>
  <option value="5">1-5</option>
  <option value="10">5-10</option>
  <option value="15">10-15</option>
  <option value="20">15+</option>

</select>
					<!--
					<label>Work Experience</label>
		         <input type="text" class="form-control" placeholder="work experience" name="workexp" required="required" autofocus>
		            <br> -->

					<label for="department">Your Department </label>

<select name="department" id="department">
<option value="finance">Finance</option>
  <option value="Warehouse">Warehouse </option>
  <option value="Merchandise">Merchandise</option>
  <option value="Material">Material </option>
  <option value="Courier Delivery">Courier Delivery</option>
  

</select>
		            <button class="btn btn-theme btn-block"  type="submit" name="submit" id="submit"><i class="fa fa-user"></i> Register</button>
		            <hr>
		            
		            <div class="registration">
		                Already Registered<br/>
		                <a class="" href="index.php">
		                   Sign in
		                </a>
		            </div>
		
		        </div>
		
		      
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>


  </body>
</html>
