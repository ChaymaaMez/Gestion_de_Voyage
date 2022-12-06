<?php
	// Initialiser la session
	session_start();
	// Vérifiez si l'utilisateur est connecté, sinon redirigez-le vers la page de connexion
	if(!isset($_SESSION["username"])){
		header("Location: login.php");
		exit(); 
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Espace admin</title>
	<link rel="stylesheet" href="style.css" />
	<style type="text/css">
		body{
			background-color: slategray;
		}
		button{
			width: 150px;
			height: 50px;
			background-color: darkred;
			font-size: large;
			font-family: fantasy;
			color: white;
			}
		a{
			border: solid;
			border-color: white;
			border-bottom: antiquewhite;

		}
		h3{
			color: darkred;
		}			
	</style>
	</head>
	<body>
		<div class="sucess">
		<h1>Welcome <?php echo $_SESSION['username']; ?>!</h1>
		<p>Your espace admin</p>
		<a href="../calendrier.php"><button>Calendrier</button></a></button>
		<a href="../hotel/liste-hotel.php"><button>Hotel</button></a></button><a href="../taxi/liste-taxi.php"><button>Taxi</button></a></button>
		<a href="../vol/liste-vol.php"><button>Vol</button></a></button><a href="../location/liste-car.php"><button>Car</button></a></button>
		<a href="../compte-user.php"><button>compte users</button></a></button>
		<a href="../facture/index.php"><button>Facture</button></a><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

		<a href="../index-agence.html"><h3>Déconnexion</h3></a>
		</div>
	</body>
</html>