   <html>
    <head>
       <meta charset="utf-8">
       <title>lists taxi</title>
        <style type="text/css">
       body{
         background-color: #cfcbd2;
       }
      
       table{
        
         font-family: cursive;
         font-size: large;
         width: 1000px;
         height: 200px;
       }
    </style>
    </head>
      <body> <center>     
  <h1><center>Our reservation</h1>
     
    
<?php 

$connection=mysqli_connect("localhost","root","");  
$select=mysqli_select_db($connection,"agence_voyage");


$req="SELECT * FROM  taxi1 " ;
$res=mysqli_query($connection,$req);
echo"<table border=1 width=50%  >";
echo"<tr>";
    echo"<th>"."Name";echo"</th>";
    echo"<th>"."phone";echo"</th>";
    echo"<th>"."location_origine";echo"</th>";
    echo"<th>"."destination";echo"</th>";
    echo"<th>"."n_pers";echo"</th>";
    echo"<th>"."date";echo"</th>";
    echo"<th>"."packup";echo"</th>";
    echo"</tr>";
while ($ligne=mysqli_fetch_row($res)) { 
    echo"<tr>";
    echo"<th>".$ligne[0]; echo"</th>";
    echo"<th>".$ligne[1]; echo"</th>";
    echo"<th>".$ligne[2]; echo"</th>";
    echo"<th>".$ligne[3]; echo"</th>";
     echo"<th>".$ligne[4]; echo"</th>";
     echo"<th>".$ligne[5]; echo"</th>";
     echo"<th>".$ligne[6]; echo"</th>";
    echo"</tr>";
}
echo"</table>";
?>
</center>
           
     </body>
     </html> 