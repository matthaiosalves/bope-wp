<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Military_Habbo
 */

?>

<footer>
  <div class="footer--copyright">
    <div class="container">
      <h6>Siga-nos nas redes sociais</h6>
      <div class="footer--social">
        <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/Footer/instagram_2.png" alt="Social" target="_blank"></a>
        <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/Footer/youtube_2.png" alt="Social" target="_blank"></a>
        <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/Footer/room_icon_3.gif" alt="Social" target="_blank"></a>
        <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/Footer/b24134s36114s42114s12104s0611474120e374ae98bce4a67c12e75e7d291.gif" alt="Social" target="_blank"></a>
      </div>
      <hr>
      <small><a href="https://www.habbo.com.br/" target="_blank"><img class="footer--habbo-icon" src="<?php echo get_template_directory_uri(); ?>/assets/img/Footer/1503__-3eM.png" alt="Habbo"></a> © <?php the_time( 'Y' ); ?> - Desenvolvido por Matheus Alves</small>
    </div>
  </div>
</footer>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="<?php echo get_template_directory_uri(); ?>/assets/js/app.js"></script>
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1724764367903153" crossorigin="anonymous"></script>

<?php wp_footer(); ?>

</body>
</html>