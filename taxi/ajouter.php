   <html>
    <head>
       <meta charset="utf-8">
        
    </head>
      <body>      
  <h1><center>Chek your reservation</center></h1>
    
<?php 
$Name=$_POST['name']; 
$phone=$_POST['phone'];  
$ville=$_POST['Location'];  
$adr_dep=$_POST['des']; 
$n_per=$_POST['pass'];
$date=$_POST['date'];
$email=$_POST['time'];

$connection=mysqli_connect("localhost","root","");  
$select=mysqli_select_db($connection,"agence_voyage");

$req="INSERT INTO `taxi1`(`Name`, `phone`, `location_origine`, `destination`, `n_pers`, `daTe`, `packup`) VALUES ('$Name','$phone','$ville', '$adr_dep','$n_per','$date', '$email')";
$res=mysqli_query($connection,$req);
 if($res==true){
    echo "<center>Your reservation success";
}
else echo "<center><b>Not Found</b>";
?>
<br><br><br>
<a href="../taxi/index.html">Retour</a>

</body>
</html>