<?php
$url = "https://bopehabbo.net/api/v2/slides.php";
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$slide = json_decode(curl_exec($ch), true);
?>
<div id="carouselExampleControls" class="carousel slide carousel--airforce" data-bs-ride="carousel">
  <div class="carousel-inner">
    <?php if(!$slide): ?>
        <div class="carousel-item active">
          <a href="#" target="_blank">
            <img class="d-block w-100" src="https://i.imgur.com/wOmIVJ3.png"/>
          </a>
        </div>
      <?php else: ?>
        <?php foreach($slide as $key => $conteudo): ?>
          <div class="carousel-item <?php echo ($key === 0) ? ' active' : ''; ?>">
              <a href="<?php echo $conteudo['slide_link']; ?>" target="_blank">
                <img class="d-block w-100" src="<?php echo $conteudo['slide_imagem']; ?>"/>
              </a>
          </div>
        <?php endforeach; ?>
    <?php endif;?>
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>