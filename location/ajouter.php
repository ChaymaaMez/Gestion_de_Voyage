   <html>
    <head>
       <meta charset="utf-8">
       <title>Wait ....</title>        
    </head>
      <body>      
  <h1><center>Chek your reservation</center></h1>
     </body>
     </html> 
<?php 
$Name=$_POST['Name'];
$email=$_POST['Email']; 
$from=$_POST['From'];  
$to=$_POST['To'];  
$com=$_POST['Comfort']; 
$time=$_POST['Time'];
$adults=$_POST['Adults'];
$date=$_POST['Date'];
$child=$_POST['Children'];
$mes=$_POST['Message'];

$connection=mysqli_connect("localhost","root","");  
$select=mysqli_select_db($connection,"agence_voyage");

$req="INSERT INTO `location`(`Name`, `email`, `depart`, `destination`, `packup`, `daTe`, `comfort`, `adults`, `children`, `message`)VALUES ('$Name', '$email','$from','$to','$time','$date','$com','$adults','$child','$mes')";
$res=mysqli_query($connection,$req);
 if($res==true){
    echo "<center>Your reservation success";
}
else echo "<center><b>Not found</b>";

?>
