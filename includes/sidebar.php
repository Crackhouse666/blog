<div class="block">
    <h3>Текст</h3>
    <div class="block__content">
      Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст
    </div>
</div>

<div class="block">
    <h3>Топ читаемых статей</h3>
    <div class="block__content">
      <div class="articles articles__vertical">
        <?php 
        $articles=mysqli_query($connection, "SELECT * FROM `articles`  ORDER  BY `views` DESC LIMIT 5");
        ?>

        <?php
        while ($art=mysqli_fetch_assoc($articles))
        {
          ?>
          <article class="article">
            <div class="article__image" style="background-image: url(/static/images/<?php echo $art['image']; ?>);"></div>
            <div class="article__info">
              <a href="/article.php?id=<?php echo $art['id']; ?>"><?php echo $art['title']; ?></a>
              <div class="article__info__meta">
                <?php
                $art_cat=false;
                foreach ($categories as $cat) 
                {
                  if ($cat['id']==$art['categorie_id']) {
                    $art_cat=$cat;
                    break;
                  }
                }
                ?>
                <small>Категория: <a href="/articles.php?categorie=<?php echo $art_cat['id']; ?>"> <?php echo $art_cat['title']; ?></a></small>
              </div>
            <div class="article__info__preview"><?php echo mb_substr($art['text'], 0, 50, 'utf-8') ." ..."; ?></div>
            </div>
          </article>
          <?php
        }
        ?>
    </div>
  </div>
</div>
<div class="block">
        <h3>Комментарии</h3>
        <div class="block__content">
          <div class="articles articles__vertical">

            <?php 
        $comments=mysqli_query($connection, "SELECT * FROM `comments`  ORDER  BY `id` DESC LIMIT 5");
        ?>

        <?php
        while ($comment=mysqli_fetch_assoc($comments))
        {
          ?>
          <article class="article">
            <div class="article__image" style="background-image: url(http://www.gravatar.com/avatar/<?php echo md5($comment['email']); ?>);"></div>
            <div class="article__info">
              <a href="/article.php?id=<?php echo $comment['articles_id']; ?>"><?php echo $comment['author'] ?></a>
            <div class="article__info__meta"></div>
            <div class="article__info__preview"><?php echo mb_substr($comment['text'], 0, 50, 'utf-8') ." ..."; ?></div>
            </div>
          </article>
          <?php
        }
        ?>

      </div>
  </div>
</div>
