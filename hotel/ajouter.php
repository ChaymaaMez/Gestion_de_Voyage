   <html>
    <head>
       <meta charset="utf-8">
  <title>Wait ....</title>
        
    </head>
      <body>      
  <h1><center>Chek your reservation</center></h1><br><br>
      
    
<?php 
$Name=$_POST['Name'];
$email=$_POST['email']; 
$phone=$_POST['phone'];  
$check_in=$_POST['check_in'];  
$check_out=$_POST['check_out']; 
$n_room=$_POST['n_room'];
$n_child=$_POST['n_child'];
$n_adults=$_POST['n_adults']; 
$message=$_POST['message'];

$connection=mysqli_connect("localhost","root","");  
$select=mysqli_select_db($connection,"agence_voyage");

$req="INSERT INTO `hotel1`(`Name`, `email`, `phone`, `check_in`, `check_out`, `n_child`, `n_adults`, `nmb_room`, `message`) VALUES ('$Name', '$email','$phone','$check_in', '$check_out', '$n_room','$n_child','$n_adults', '$message')";
$res=mysqli_query($connection,$req);
 if($res==true){
    echo "<center>Your reservation success";
}
else echo "<center><b>Not found</b>";
?>
<br><br><br>
<a href="../hotel/index.html">Retour</a>
</body>
</html>
