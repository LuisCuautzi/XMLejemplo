<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:param name="TipoMenu" select="TipoMenu"></xsl:param>

	<xsl:template match="Menu">
		<html lang="en">
			<head>
				<meta charset="utf-8"/>
				<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<title>
					<xsl:value-of select="Datos/NombreRestaurant"/>
				</title>
				<!-- Cafe House Templatehttp://www.templatemo.com/tm-466-cafe-house-->
				<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'/>
				<link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'/>
				<link href="css/bootstrap.min.css" rel="stylesheet"/>
				<link href="css/font-awesome.min.css" rel="stylesheet"/>
				<link href="css/templatemo-style.css" rel="stylesheet"/>
				<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />

				<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
				<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
				<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

			</head>
			<body>
				<!-- Preloader -->
				<div id="loader-wrapper">
					<div id="loader"></div>
					<div class="loader-section section-left"></div>
					<div class="loader-section section-right"></div>
				</div>
				<!-- End Preloader -->
				<div class="tm-top-header">
					<div class="container">
						<div class="row">
							<div class="tm-top-header-inner">
								<div class="tm-logo-container">
									<img src="img/logo.png" alt="Logo" class="tm-site-logo"/>
									<h1 class="tm-site-name tm-handwriting-font">
										<xsl:value-of select="Datos/NombreRestaurant"/>
									</h1>
								</div>
								<div class="mobile-menu-icon">
									<i class="fa fa-bars"></i>
								</div>
								<nav class="tm-nav">
									<ul>
										<xsl:for-each select="Opciones/Opcion">
											<xsl:choose>
												<xsl:when test="$TipoMenu=@Id">
													<li>
														<a href="{@Url}" class="active">
															<xsl:value-of select="@Texto"/>
														</a>
													</li>
												</xsl:when>
												<xsl:otherwise>
													<li>
														<a href="{@Url}">
															<xsl:value-of select="@Texto"/>
														</a>
													</li>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<xsl:choose>
					<xsl:when test="$TipoMenu=1">
						<xsl:call-template name="Carta"></xsl:call-template>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="Home"></xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>

				<footer>
					<div class="tm-black-bg">
						<div class="container">
							<div class="row margin-bottom-60">
								<nav class="col-lg-3 col-md-3 tm-footer-nav tm-footer-div">
									<h3 class="tm-footer-div-title">Main Menu</h3>
									<ul>
										<li>
											<a href="#">Home</a>
										</li>
										<li>
											<a href="#">About Us</a>
										</li>
										<li>
											<a href="#">Directory</a>
										</li>
										<li>
											<a href="#">Blog</a>
										</li>
										<li>
											<a href="#">Our Services</a>
										</li>
									</ul>
								</nav>
								<div class="col-lg-5 col-md-5 tm-footer-div">
									<h3 class="tm-footer-div-title">About Us</h3>
									<p class="margin-top-15">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.</p>
									<p class="margin-top-15">Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.</p>
								</div>
								<div class="col-lg-4 col-md-4 tm-footer-div">
									<h3 class="tm-footer-div-title">Get Social</h3>
									<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante.</p>
									<div class="tm-social-icons-container">
										<a href="#" class="tm-social-icon">
											<i class="fa fa-facebook"></i>
										</a>
										<a href="#" class="tm-social-icon">
											<i class="fa fa-twitter"></i>
										</a>
										<a href="#" class="tm-social-icon">
											<i class="fa fa-linkedin"></i>
										</a>
										<a href="#" class="tm-social-icon">
											<i class="fa fa-youtube"></i>
										</a>
										<a href="#" class="tm-social-icon">
											<i class="fa fa-behance"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div class="container">
							<div class="row tm-copyright">
								<p class="col-lg-12 small copyright-text text-center">Copyright 2084 Your Cafe House</p>
							</div>
						</div>
					</div>
				</footer>
				<!-- JS -->
				<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
				<!-- jQuery -->
				<script type="text/javascript" src="js/templatemo-script.js"></script>
				<!-- Templatemo Script -->

			</body>
		</html>

	</xsl:template>
	<xsl:template name="Home">
		<section class="tm-welcome-section">
			<div class="container tm-position-relative">
				<div class="tm-lights-container">
					<img src="img/light.png" alt="Light" class="light light-1"/>
					<img src="img/light.png" alt="Light" class="light light-2"/>
					<img src="img/light.png" alt="Light" class="light light-3"/>
				</div>
				<div class="row tm-welcome-content">
					<h2 class="white-text tm-handwriting-font tm-welcome-header">
						<img src="img/header-line.png" alt="Line" class="tm-header-line"/>
						BIENVENIDO A<img src="img/header-line.png" alt="Line" class="tm-header-line"/>
					</h2>
					<h2 class="gold-text tm-welcome-header-2">
						<xsl:value-of select="Datos/NombreRestaurant"/>
					</h2>
					<p class="gray-text tm-welcome-description">
						<xsl:value-of select="Datos/Descripcion"/>
					</p>
					<a href="#main" class="tm-more-button tm-more-button-welcome">Details</a>
				</div>
				<img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive"/>
			</div>
		</section>
		<div class="tm-main-section light-gray-bg">
			<div class="container" id="main">
				<section class="tm-section row">
					<div class="col-lg-9 col-md-9 col-sm-8">
						<h2 class="tm-section-header gold-text tm-handwriting-font">el mejor café para ti</h2>
						<h2>
							<xsl:value-of select="Datos/NombreRestaurant"/>
						</h2>
						<p class="tm-welcome-description">
							<xsl:value-of select="concat(Datos/Direccion, 'Tel: ', Datos/Telefono)"/>
						</p>
						<a href="#" class="tm-more-button margin-top-30">Leer más...</a>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 tm-welcome-img-container">
						<div class="inline-block shadow-img">
							<img src="{Datos/Imagen}" alt="Image" class="img-circle img-thumbnail"/>
						</div>
					</div>
				</section>
				<section class="tm-section tm-section-margin-bottom-0 row">
					<div class="col-lg-12 tm-section-header-container">
						<h2 class="tm-section-header gold-text tm-handwriting-font">
							<img src="img/logo.png" alt="Logo" class="tm-site-logo"/> Especialidades
						</h2>
						<div class="tm-hr-container">
							<hr class="tm-hr"/>
						</div>
					</div>
					<div class="col-lg-12 tm-popular-items-container">
						<xsl:for-each select="Platillos/Tipo[@Nombre != 'Bebidas']/Platillo[@Orden = 1]">
							<div class="tm-popular-item">
								<img src="{Imagen}" alt="Popular" class="tm-popular-item-img"/>
								<div class="tm-popular-item-description">
									<h3 class="tm-handwriting-font tm-popular-item-title">
										<span class="tm-handwriting-font bigger-first-letter">
											<xsl:value-of select="substring(@Nombre, 1, 1)"/>
										</span>
										<xsl:value-of select="substring(@Nombre, 2, string-length(@Nombre))"/>
									</h3>
									<hr class="tm-popular-item-hr"/>
									<p>
										<xsl:value-of select="Descripcion"/>
									</p>
									<div class="order-now-container">
										<a href="#" class="order-now-link tm-handwriting-font">
											<xsl:value-of select="Precio"/>
										</a>
									</div>
								</div>
							</div>
						</xsl:for-each>
					</div>
				</section>
				<section class="tm-section row">
					<div class="col-lg-12 tm-section-header-container">
						<h2 class="tm-section-header gold-text tm-handwriting-font">
							<img src="img/logo.png" alt="Logo" class="tm-site-logo"/>Especialidad del día
						</h2>
						<div class="tm-hr-container">
							<hr class="tm-hr"/>
						</div>
					</div>
					<div class="col-lg-12 tm-special-container margin-top-60">
						<div class="tm-special-container-left">
							<!-- left -->

							<xsl:for-each select="Platillos/Tipo[@Nombre = 'Comidas']/Platillo[@Especialidad='SI']">
								<div class="tm-special-item">
									<div class="tm-special-img-container">
										<img src="{Imagen[position()=1]}" alt="Special" class="tm-special-img img-responsive"/>
										<a href="#">
											<div class="tm-special-description">
												<h3 class="tm-special-title">
													<xsl:value-of select="@Nombre"/>
												</h3>
												<p>
													<xsl:value-of select="TextoEspecial"/>
												</p>
											</div>
										</a>
									</div>
								</div>
							</xsl:for-each>

						</div>
						<div class="tm-special-container-right">
							<!-- right -->
							<div>
								<xsl:for-each select="Platillos/Tipo[@Nombre = 'Comidas']/Platillo[@Especialidad='SI']">
									<div class="tm-special-item">
										<div class="tm-special-img-container">
											<img src="{Imagen[position()=2]}" alt="Special" class="img-responsive"/>
											<a href="#">
												<div class="tm-special-description">
													<h3 class="tm-special-title">
														<xsl:value-of select="Ingredientes/Ingrediente[position()=2]/@Nombre"/>
													</h3>
													<p>
														<xsl:value-of select="Ingredientes/Ingrediente[position()=2]"/>
													</p>
												</div>
											</a>
										</div>
									</div>
								</xsl:for-each>
							</div>

							<div class="tm-special-container-lower">
								<div class="tm-special-item">
									<div class="tm-special-img-container">
										<img src="img/special-3.jpg" alt="Special" class="img-responsive"/>
										<a href="#">
											<div class="tm-special-description">
												<p>Vivamus elementum</p>
											</div>
										</a>
									</div>
								</div>
								<div class="tm-special-item">
									<div class="tm-special-img-container">
										<img src="img/special-4.jpg" alt="Special" class="img-responsive"/>
										<a href="#">
											<div class="tm-special-description">
												<p>Quisque rutrum.</p>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="tm-section">
					<div class="row">
						<div class="col-lg-12 tm-section-header-container">
							<h2 class="tm-section-header gold-text tm-handwriting-font">
								<img src="img/logo.png" alt="Logo" class="tm-site-logo"/> Menu Diario
							</h2>
							<div class="tm-hr-container">
								<hr class="tm-hr"/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="tm-daily-menu-container margin-top-60">
							<div class="col-lg-4 col-md-4">
								<img src="img/menu-board.png" alt="Menu board" class="tm-daily-menu-img"/>
							</div>
							<div class="col-lg-8 col-md-8">
								<p>
									<xsl:value-of select="PlatillosDiarios/DescripcionMenu"/>
								</p>
								<ol class="margin-top-30">
									<xsl:for-each select="PlatillosDiarios/Nombre">
										<li>
											<xsl:value-of select="@Platillo"></xsl:value-of>

										</li>
									</xsl:for-each>
								</ol>
								<a href="#" class="tm-more-button margin-top-30">Leer más...</a>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="Carta">
		<section class="tm-welcome-section">
			<div class="container tm-position-relative">
				<div class="tm-lights-container">
					<img src="img/light.png" alt="Light" class="light light-1"/>
					<img src="img/light.png" alt="Light" class="light light-2"/>
					<img src="img/light.png" alt="Light" class="light light-3"/>
				</div>
				<div class="row tm-welcome-content">
					<h2 class="white-text tm-handwriting-font tm-welcome-header">
						<img src="img/header-line.png" alt="Line" class="tm-header-line"/>
						Nuestro Menu<img src="img/header-line.png" alt="Line" class="tm-header-line"/>
					</h2>
					<h2 class="gold-text tm-welcome-header-2">
						<xsl:value-of select="Datos/NombreRestaurant"/>
					</h2>
					<p class="gray-text tm-welcome-description">
						<xsl:value-of select="Datos/Descripcion"/>
					</p>
					<a href="#main" class="tm-more-button tm-more-button-welcome">Details</a>
				</div>
				<img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive"/>
			</div>
		</section>
		<div class="tm-main-section light-gray-bg">
			<div class="container" id="main">
				<section class="tm-section row">
					<div class="col-lg-9 col-md-9 col-sm-8">
						<h2 class="tm-section-header gold-text tm-handwriting-font">Variedad de Menu</h2>
						<h2>
							<xsl:value-of select="Datos/NombreRestaurant"/>
						</h2>
						<p class="tm-welcome-description">
							<xsl:value-of select="Datos/Descripcion"/>
						</p>
						<a href="#" class="tm-more-button margin-top-30">Ver Carta</a>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 tm-welcome-img-container">
						<div class="inline-block shadow-img">
							<img src="img/fachada.jpg" alt="Image" class="img-circle img-thumbnail"/>
						</div>
					</div>
				</section>
				<section class="tm-section row">
					<div class="col-lg-12 tm-section-header-container margin-bottom-30">
						<h2 class="tm-section-header gold-text tm-handwriting-font">
							<img src="img/logo.png" alt="Logo" class="tm-site-logo"/> Nuestro Menú
						</h2>
						<div class="tm-hr-container">
							<hr class="tm-hr"/>
						</div>
					</div>
					<div>
						<div class="col-lg-3 col-md-3">
							<div class="tm-position-relative margin-bottom-30">
								<nav class="tm-side-menu">
									<ul>
										<xsl:for-each select="Platillos/Tipo">
											<li>
												<a class="tipomenu active" style="cursor: pointer;" id="li{@Nombre}" data-identificador="{@Nombre}">
													<xsl:value-of select="@Nombre"/>
												</a>
											</li>
										</xsl:for-each>
									</ul>
								</nav>
								<img src="img/vertical-menu-bg.png" alt="Menu bg" class="tm-side-menu-bg"/>
							</div>
						</div>

						<xsl:for-each select="Platillos/Tipo">
							<div class="tm-menu-product-content col-lg-9 col-md-9 contenedores" id="{@Nombre}">
								<!-- menu content -->
								<div>
								<xsl:for-each select="Platillo">
									<div class="tm-product">
										<img src="{Imagen}" alt="Product"/>
										<div class="tm-product-text">
											<h3 class="tm-product-title">
												<xsl:value-of select="@Nombre"/>
											</h3>
											<p class="tm-product-description">
												<xsl:value-of select="Descripcion"/>
											</p>
										</div>
										<div class="tm-product-price">
											<a href="#" class="tm-product-price-link tm-handwriting-font">
												<span class="tm-product-price-currency">$</span>45
											</a>
										</div>
									</div>
									
								</xsl:for-each>
								</div>
							</div>
						</xsl:for-each>
					</div>
				</section>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
