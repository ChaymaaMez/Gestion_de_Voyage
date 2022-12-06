   <html>
    <head>
       <meta charset="utf-8">
       <title>lists hotel</title>
        <style type="text/css">
       body{
         background-color: #cfcbd2;
       }
      
       table{
        
         font-family: cursive;
         font-size: large;
         width: 1500px;
         height: 200px;
       }
    </style>
    </head>
      <body> 
      <center>     
  <h1> Our reservation</h1>
                
      
    
<?php 


$connection=mysqli_connect("localhost","root","");  
$select=mysqli_select_db($connection,"agence_voyage");


$req="SELECT * FROM  hotel1 " ;
$res=mysqli_query($connection,$req);
echo"<table border=1 width=50%  >";
echo"<tr>";
    echo"<th>"."Name";echo"</th>";
    echo"<th>"."email";echo"</th>";
    echo"<th>"."phone";echo"</th>";
    echo"<th>"."check_in";echo"</th>";
    echo"<th>"."check_out";echo"</th>";
    echo"<th>"."nmb_room";echo"</th>";
    echo"<th>"."nmb_child";echo"</th>";
    echo"<th>"."nmb_adults";echo"</th>";
    echo"<th>"."message";echo"</th>";
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
     echo"<th>".$ligne[7]; echo"</th>";
     echo"<th>".$ligne[8]; echo"</th>";
    echo"</tr>";
}
echo"</table>";
?></center>
</body>
     </html>