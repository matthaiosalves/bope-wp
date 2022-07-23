<?php
$url = "https://bopehabbo.net/api/v2/acesso_rapido.php";
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$acessoRapido = json_decode(curl_exec($ch), true);

$sliceAcesso = array_slice($acessoRapido, 0, 3);
?>
<div class="card news--quick-acess">
<?php foreach($sliceAcesso as $item): ?>
  <a class="list-group-item" href="<?php echo $item['ac_link']; ?>">
    <div class="news--quick-acess-image">
      <figure>
        <img src="https://1.bp.blogspot.com/-KNfZH2uRYKQ/XK0oYpacyqI/AAAAAAABOsg/JvXUkVqmuU8eHE0eOZtjVosY2PiIEqGKQCKgBGAs/s1600/Image%2B524.png" alt="Icone">
      </figure>
    </div>
    <div class="news--quick-acess-title">
      <h5><?php echo $item['ac_titulo']; ?></h5>
    </div>
  </a>
<?php endforeach; ?>   
</div>