<?php
$url = "https://bopehabbo.net/api/v2/oficial_destaque.php";
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$pracaDestaque = json_decode(curl_exec($ch), true);
?>
<?php foreach($pracaDestaque as $praca): ?>
  <div class="card card--highlights-praca">
    <img src="https://www.habbo.com.br/habbo-imaging/avatarimage?user=<?php echo $praca['usuario']; ?>&action=std&direction=2&head_direction=3&gesture=sml&size=l"/>
    <div class="card--highlights-description">
      <h5><?php echo $praca['usuario']; ?></h5>
      <span><?php echo $praca['pat_nome']; ?></span>
    </div>
  </div>
<?php endforeach; ?>
  
