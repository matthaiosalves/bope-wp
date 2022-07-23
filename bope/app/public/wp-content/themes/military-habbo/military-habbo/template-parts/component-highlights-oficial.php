<?php
$url = "https://bopehabbo.net/api/v2/oficial_destaque.php";
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$oficialDestaque = json_decode(curl_exec($ch), true);
?>
<?php foreach($oficialDestaque as $oficial): ?>
  <div class="card card--highlights-oficial">
    <img src="https://www.habbo.com.br/habbo-imaging/avatarimage?user=<?php echo $oficial['usuario']; ?>&action=std&direction=4&head_direction=3&gesture=sml&size=l"/>
    <div class="card--highlights-description">
      <h5><?php echo $oficial['usuario']; ?></h5>
      <span><?php echo $oficial['pat_nome']; ?></span>
    </div>
  </div>
<?php endforeach; ?>
  
