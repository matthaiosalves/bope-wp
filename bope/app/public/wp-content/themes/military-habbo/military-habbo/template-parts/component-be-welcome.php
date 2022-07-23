<?php
$url = "https://bopehabbo.net/api/v2/listar_soldados.php";
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$ultimosSoldados = json_decode(curl_exec($ch), true);

$sliceSoldados = array_slice($ultimosSoldados, 0, 4);
?>

<section class="be-welcome">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="card card--be-welcome">
          <div>
            <h2>Boas Vindas!</h2>
            <p>Os melhores já estão aqui.</p>
          </div>
          <div class="card-body">
            <div>
              <?php foreach($sliceSoldados as $soldados): ?>
                <img class="new--members" src="//www.habbo.com.br/habbo-imaging/avatarimage?user=<?php echo $soldados['nome']; ?>&direction=2&head_direction=3&gesture=sml&size=l" alt="Novos Membros">
              <?php endforeach; ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>