   <html>
    <head>
       <meta charset="utf-8">  
    </head>
      <body> <center>     
  <h1>Chek your reservation</h1></center>
     
<?php 
$Name=$_POST['Name'];
$email=$_POST['Email']; 
$from=$_POST['flying-from'];  
$to=$_POST['flying-to']; 
$Departing=$_POST['Departing'];
$returning =$_POST['returning']; 
$com=$_POST['Comfort']; 
$adults=$_POST['Adults'];
$class=$_POST['class']; 
$child=$_POST['Children'];
$mes=$_POST['Message'];

$connection=mysqli_connect("localhost","root","");  
$select=mysqli_select_db($connection,"agence_voyage");

$req="INSERT INTO `vol`(`Name`, `email`, `flying_from`, `flying_to`, `departing`, `arriving`, `comfort`, `adults`, `children`, `class`, `message`) VALUES ('$Name', '$email','$from','$to','$Departing','$returning ','$com','$adults','$child','$class','$mes')";
$res=mysqli_query($connection,$req);
 if($res==true){
    echo "<center>Your reservation success";
}
else echo "<center><b>Not Found</b>";

?>
<br><br><br>
<a href="../vol/index.html">Retour</a>
</body>
</html>