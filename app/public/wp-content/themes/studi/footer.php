
<footer>
    <?php $idOptionsPage = 97; ?>
<?php $facebook = get_field('facebook'); ?>
<pre>
    <?php var_dump($facebook); ?>
</pre>  
<a href="<?php $facebook = the_field('facebook', $idOptionsPage); ?>" > Facebook</a>  
<a href="<?php $facebook = the_field('twitter', $idOptionsPage); ?>" > Twitter</a>  
<a href="<?php $facebook = the_field('linkendin', $idOptionsPage); ?>" > Linkendin</a>  
<a href="<?php $facebook = the_field('instagram', $idOptionsPage); ?>" > Instagram</a>  




<p> mon footer Cyril</p></footer>


</body>
</html>
