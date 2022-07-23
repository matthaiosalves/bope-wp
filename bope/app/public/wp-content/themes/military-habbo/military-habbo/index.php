<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Military_Habbo
 */

get_header();
?>
<main>
<?php get_template_part( 'template-parts/component', 'military-search' ); ?>
<?php get_template_part( 'template-parts/component', 'highlights' ); ?>
<?php get_template_part( 'template-parts/component', 'be-welcome' ); ?>
<?php get_template_part( 'template-parts/component', 'news' ); ?>
<?php get_template_part( 'template-parts/component', 'departament' ); ?>
<?php get_template_part( 'template-parts/component', 'airplane--button' ); ?>
</main>
<?php
// get_sidebar(); Só irei colocar para as paginas internas
get_footer();
