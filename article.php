<?php
require "/includes/config.php"
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

    <?php include '/includes/header.php'; ?>

    <?php

   
    
    $article=mysqli_query($connection, "SELECT * FROM `articles` WHERE `id` = " . (int) $_GET['id']);
  

    if(mysqli_num_rows($article) <=0 )
    {
      ?>
      <div id="content">
      <div class="container">
        <div class="row">
          <section class="content__left col-md-8">
            <div class="block">
              <h3>Статья не найдена</h3>
              <div class="block__content">
                
                <div class="full-text">
                  Запрашиваемая вами статья не существует!
                </div>
              </div>
            </div>

          </section>
          <section class="content__right col-md-4">

            <?php include "/includes/sidebar.php"; ?>
            
          </section>
        </div>
      </div>
    </div>
    <?php
    }
    else{
      $art=mysqli_fetch_assoc($article);
      mysqli_query($connection, "UPDATE `articles` SET `views` = `views`+1 WHERE `id`=" .(int) $art['id']); //увеличивает количество просмотров на статье
      ?>
      <div id="content">
      <div class="container">
        <div class="row">
          <section class="content__left col-md-8">
            <div class="block">
              <a> <?php echo $art['views']; ?> Просмотров</a>
              

              <h3><?php echo $art['title']; ?></h3>
              <div class="block__content">
                <img src="/static/images/<?php echo $art['image']; ?>" style="max-width: 100%">
                <div class="full-text">
                  <?php echo $art['text']; ?>
                </div>
              </div>
            </div>

        <div class="block">
        <h3>Комментарии</h3>
        <div class="block__content">
          <div class="articles articles__vertical">

            <?php 

        $comments=mysqli_query($connection, "SELECT * FROM `comments`  WHERE `articles_id`=".$art['id']." ORDER BY `id` DESC" );
        
       if(mysqli_num_rows($comments) <=0){
        echo('Нет комментариев');
       }


       
        while ($comment=mysqli_fetch_assoc($comments))
        {
          ?>
          <article class="article">
            <div class="article__image" style="background-image: url(http://www.gravatar.com/avatar/<?php echo md5($comment['email']); ?>);"></div>
            <div class="article__info">
              <a href="/article.php?id=<?php echo $comment['articles_id']; ?>"><?php echo $comment['author'] ?></a>
            <div class="article__info__meta"></div>
            <div class="article__info__preview"><?php echo $comment['text']; ?></div>
            </div>
          </article>
          <?php
        }
        ?>

            </div>
        </div>
        </div>

        <div class="block" id="comment-add-form">
              <h3>Добавить комментарий</h3>
              <div class="block__content">
                <form class="form" method="POST" action="/article.php?id=<?php echo $art['id'] ?>">
                
                  <?php
                                  if(isset($_POST['do_post'])){
                  if(isset($_POST['name'])){
                    $name=$_POST['name'];
                  }
                   if(isset($_POST['email'])){
                    $email=$_POST['email'];
                  }
                   if(isset($_POST['text'])){
                    $text=$_POST['text'];
                  }
                  
                   mysqli_query($connection, "INSERT INTO `comments` (`author`,`email`,`text`, `articles_id`, `pubdate`) VALUES ('".$name."','".$email."','".$text."','".$art['id']."' ,NOW()  )");
                  
                  
                } 
                 ?>
                  <div class="form__group">
                    <div class="row">
                      <div class="col-md-6">
                        <input type="text" class="form__control" required="" name="name" placeholder="Имя">
                      </div>
                      <div class="col-md-6">
                        <input type="email" class="form__control" required="" name="email" placeholder="Email (Не будет отображаться)">
                      </div>
                    </div>
                  </div>
                  <div class="form__group">
                    <textarea name="text" required="" class="form__control" placeholder="Текст комментария ..."></textarea>
                  </div>
                  <div class="form__group">
                    <input type="submit" class="form__control" name="do_post" value="Добавить комментарий">
                  </div>
                </form>
              </div>
        </div>

          </section>
          <section class="content__right col-md-4">

            <?php include "/includes/sidebar.php"; ?>
            
          </section>
        </div>
      </div>
    </div>

      <?php
    }
    ?>

    

    

     <? include '/includes/footer.php' ?>

  </div>

</body>
</html>