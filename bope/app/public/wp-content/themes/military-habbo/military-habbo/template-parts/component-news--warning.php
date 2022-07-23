<?php
$url = "https://bopehabbo.net/api/v2/avisos_oficial.php";
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$avisosOficial = json_decode(curl_exec($ch), true);

$sliceAviso = array_slice($avisosOficial, 0, 3);
?>

<?php foreach($sliceAviso as $avisos): ?>
  <div class="list-group-item news--warning">
    <div class="responsible">
      <div class="responsibile--photo" style="background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?user=<?php echo $avisos['nome']; ?>&amp;action=std&amp;direction=2&amp;head_direction=3&amp;size=m) no-repeat -7px -20px, var(--Yellow600);"></div>
        <span><?php echo $avisos['nome']; ?></span>
        <br>
        <small>Aviso Global</small>
        <div class="responsibile--description">
          <p><?php echo $avisos['aviso']; ?></p>
      </div>
    </div>
  </div>
<?php endforeach; ?>