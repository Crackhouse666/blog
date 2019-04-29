<?php
require "../includes/config.php" 
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title><?php echo $config['title'];  ?></title>

  <!-- Bootstrap Grid -->
  <link rel="stylesheet" type="text/css" href="/assets/bootstrap-grid-only/css/grid12.css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">

  <!-- Custom -->
  <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>

  <div id="wrapper">

    <?php include '../includes/header.php'; ?>

    <div id="content">
      <div class="container">
        <div class="row">
          <section class="content__left col-md-8">
            <div class="block">
              <h3>Текс о копирайте</h3>
              <div class="block__content">
                

                <div class="full-text">


                    <p>Barbeled dragonfish gulper eel sand lance pencil catfish morwong, airbreathing catfish snake eel triggerfish zebra loach. Eucla cod damselfish hairtail wolf-herring. Morid cod pink salmon triggerfish whalefish muskellunge yellowtail barracuda long-finned char nurseryfish tompot blenny x-ray tetra, spotted danio half-gill Australian grayling.

                    Arctic char zebra lionfish eucla cod masu salmon dogfish giant gourami tadpole cod wolffish turbot half-gill wormfish sand goby. Featherfin knifefish white shark zebra pleco Molly Miller giant sea bass. White marlin arapaima waryfish swampfish, yellow-edged moray longnose dace stingray labyrinth fish. Antarctic icefish sea bass horn shark striped bass, bonito lake whitefish, tarpon bluntnose knifefish, salmon ground shark." Gombessa Australian lungfish deepwater stingray forehead brooder yellow-and-black triplefin pipefish elephant fish rockfish tommy ruff deep sea anglerfish." Rivuline inanga; oilfish prickleback kissing gourami.</p>
                </div>
              </div>
            </div>

           

            
          </section>
          <section class="content__right col-md-4">
            <?php include "../includes/sidebar.php"; ?>
            
          </section>
        </div>
      </div>
    </div>

     <? include '../includes/footer.php' ?>

  </div>

</body>
</html>