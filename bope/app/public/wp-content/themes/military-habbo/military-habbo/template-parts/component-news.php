<section class="news">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-3">

        <div class="list-group">
          <?php get_template_part( 'template-parts/component', 'news--warning' ); ?> 
        </div>

      </div>

      <div class="col-sm-12 col-md-12 col-lg-6">

        <div class="card news--information">
          <div class="card-header">NOVIDADES</div>
          <div class="card-body">
            <ul class="list-unstyled">

              <li>
                <div class="news--information-image">
                  <figure>
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/img/News/sticker_arrow_right.gif" alt="Imagem Notícia">
                  </figure>
                </div>
                <div class="news--information-description">
                  <h5>FAÇA PARTE DO GRUPO</h5>
                  <span>Entre em contato</span>
                </div>
              </li>

              <li>
                <div class="news--information-image">
                  <figure>
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/img/News/sticker_arrow_right.gif" alt="Imagem Notícia">
                  </figure>
                </div>
                <div class="news--information-description">
                  <h5>FAÇA PARTE DO GRUPO</h5>
                  <span>Entre em contato</span>
                </div>
              </li>

            </ul>
          </div>
        </div>

      </div>

      <div class="col-sm-12 col-md-12 col-lg-3">
        <?php get_template_part( 'template-parts/component', 'news--quick-acess' ); ?>
      </div>
    </div>
  </div>
</section>