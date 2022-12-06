   <html>
    <head>
       <meta charset="utf-8">
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
      <body>      
  <h1><center> Our account </center></h1>
    <center>           
    
    
<?php 


$connection=mysqli_connect("localhost","root","");  
$select=mysqli_select_db($connection,"agence_voyage");


$req="SELECT * FROM  users " ;
$res=mysqli_query($connection,$req);
echo"<table border=1 width=50%  >";
echo"<tr>";
    echo"<th>"."ID";echo"</th>";
    echo"<th>"."NAME";echo"</th>";
    echo"<th>"."EMAIL";echo"</th>";
    echo"<th>"."PASSWORD";echo"</th>";
    echo"</tr>";
while ($ligne=mysqli_fetch_row($res)) { 
    echo"<tr>";
    echo"<th>".$ligne[0]; echo"</th>";
    echo"<th>".$ligne[1]; echo"</th>";
    echo"<th>".$ligne[2]; echo"</th>";
    echo"<th>".$ligne[3]; echo"</th>";
    
    echo"</tr>";
}
echo"</table>";
?></center> 
 </body>
     </html> 