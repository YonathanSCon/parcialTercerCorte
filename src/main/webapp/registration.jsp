<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Formulario de Crear Cuenta</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Registrate</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Nombre de Usuario" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Correo Electrónico" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Contraseña" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repite de nuevo la contraseña" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Número de contacto" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
										class="label-agree-term"><span><span></span></span>Estoy de acuerdo con todos
										los términos de servicio. <a href="#" class="term-service">Términos de Servicio</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Registrarse" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">Soy un miembro</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">

	var status = document.getElementById("status").value;
	if(status == "success") {
		swal("Felicidades", "¡Tu cuenta se ha creado con exito!", "success");
	}
	if(status == "invalidName") {
		swal("Atencion", "Porfavor, digita un nombre de usuario", "error");
	}
	if(status == "invalidEmail") {
		swal("Atencion", "Porfavor, digita un email de preferencia", "error");
	}
	if(status == "invalidUpassword") {
		swal("Atencion", "Porfavor, digita una contraseña cualquiera", "error");
	}
	if(status == "invalidConfirmPassword") {
		swal("Atencion", "Porfavor, digita nuevamente la contraseña", "error");
	}
	if(status == "invalidMobile") {
		swal("Atencion", "Porfavor, digita un numero de telefono", "error");
	}
	if(status == "InvalidMobileLength") {
		swal("Atencion", "Porfavor, el número de contacto debe ser de 10 digitos o menos", "error");
	}
	
</script>


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>