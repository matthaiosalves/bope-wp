<section class="military-search">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="military-search--image-board">
          <h5>Buscar Militar</h5>
        </div>

        <form>
          <input name="usuario" type="text" placeholder="Buscar por militar...">
          <button type="button" class="keypressbutton" id="procurarMilitarR">
            <img class="button--image-search" src="<?php echo get_template_directory_uri(); ?>/assets/img/Military-Search/frank.png" alt="Procura militar">
          </button>
        </form>


        <div id="saida2" style="display:none;margin-top:-63px;">
          <div id="carregando" class="grey darken-3">
              <div class="resultado-box white-text" style="margin-bottom:0px;">
                  <div class="row">
                      <div class="col-md-12">
                        <img class="military-search--image-loading" src="<?php echo get_template_directory_uri(); ?>/assets/img/Military-Search/loading.gif">
                      </div>
                  </div>
              </div>
          </div>
        </div>
        <div id="saida"></div>
        
      </div>
    </div>
  </div>
</section>