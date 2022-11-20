<?php
$items = $news->getNews();
if($items === false){
    $errMsg = 'Произошла ошибка при выводе новостной ленты';
}else {
    foreach($items as $key){
        
        echo 
        "<h2> {$key['title']} </h2>
        <p> {$key['description']} </p>
        <p> {$key['category']}</p>
        <p> Источник: {$key['source']}</p>
        <p> {$key['datetime']}</p>";
    }
}