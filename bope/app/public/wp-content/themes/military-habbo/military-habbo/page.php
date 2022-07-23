<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Military_Habbo
 */

get_header();
?>
<section class="intern">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="card card--intern">
            <?php
               while ( have_posts() ) :
                  the_post();

                  get_template_part( 'template-parts/content', 'page' );

               endwhile;
		         ?>
				</div>
			</div>

			<div class="col-md-4">
				<?php get_template_part( 'template-parts/component', 'highlights-praca' ); ?>
				<?php get_template_part( 'template-parts/component', 'highlights-oficial' ); ?>
			</div>
			
		</div>
	</div>
</section>
<?php
get_footer();
