<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Military_Habbo
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<!-- SEO -->
  <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no" />
  <meta http-equiv=”Content-Type” content=”text/html; charset=utf-8″ />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <meta name="keywords" content="habbo, habbo hotel, exercito habbo, ex habbo, hb, noticias habbo, fã site habbo, fã site hb, hb, forca aerea habbo, fab habbo, fab hb" />
  <meta name="theme-color" content="#000" />
  <meta property="og:url" content="#" />
  <meta property="og:type" content="website" />
  <meta property="og:title" content="Batalhão de Operações Especiais - Principal" />
  <meta property="og:description" content="Website de registros da Batalhão de Operações Especiais Habbo - Habbo Hotel" />
  <meta property="og:image" content="assets/img/Footer/b24134s36114s42114s12104s0611474120e374ae98bce4a67c12e75e7d291.gif" />
  <meta property="og:image:type" content="image/png">
  <meta property="og:image:width" content="800"> <!-- PIXELS -->
  <meta property="og:image:height" content="800"> <!-- PIXELS -->
  <meta property="og:site_name" content="Batalhão de Operações Especiais - Principal" />
  <meta name="twitter:card" content="summary" />
  <meta property="twitter:title" content="Batalhão de Operações Especiais - Principal" />
  <meta property="twitter:description" content="Website de registros da Batalhão de Operações Especiais Habbo - Habbo Hotel" />
  <meta property="twitter:image" content="assets/img/Footer/b24134s36114s42114s12104s0611474120e374ae98bce4a67c12e75e7d291.gif" />
  <!-- End SEO -->

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

  <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/style.css" />

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">
	<a class="skip-link show-for-sr" href="#primary"><?php esc_html_e( 'Skip to content', 'military-habbo' ); ?></a>

	<header>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top navbar--bope shadow">
      <div class="container flex-row-reverse">
        <a class="navbar-brand d-md-none icon--airfoce" href="#">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/Departaments/fab.gif" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/Navbar/Image-2181.png" alt="">
                Início</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/Navbar/1197__-51B.png" alt="">
                Guias</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/Navbar/Image-1598.png" alt="">
                Fardamentos</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/Navbar/IM_20A_1.gif" alt=""> Discord
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li>
                  <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/Navbar/Hotel.png" alt="">
                Instituição
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li>
                  <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/Navbar/1844__-1Tx.png" alt="">
                Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="background--animate">
      <img class="background--animate-logo" src="<?php echo get_template_directory_uri(); ?>/assets/img/Header/163-Sem-T-tulo-20220721190618.png"/>
    </div>
		
  </header>
