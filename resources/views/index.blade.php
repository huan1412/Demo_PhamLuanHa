<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Demo laravel + vuejs</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="./css/app.css">
    </head>
    <body>
        <div id="app">
            <div class="header">
               <div class="container">
                  <div class="title text-center"><h1>Demo component show 5 news in one page</h1></div>
                  <div class="button-load"><button class="random-btn btn btn-info " @click="getRandNews">Load random news</button></div>
               </div>
            </div>
            <div class="body-content">
               <div class="container">
                  <div class="list-news">
                     <div class="item-news" v-for="post in posts">
                        <div class="news-title h3" v-text="post.title"></div>
                        <div class="news-img">
                           <img v-bind:src="post.image"/>
                        </div>
                        <div class="news-info">
                           <div class="news-date"><i class="glyphicon glyphicon-time"></i> <span v-text="post.date_add"></span></div>
                           <div class="news-content" v-text="post.sub_content"></div>
                           <div class="news-viewmore"><a v-bind:href="post.subject">Xem thêm</a></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/vue@2.6.9/dist/vue.js"></script>
        <script src="./js/app.js" type="text/javascript"></script> 
    </body>
</html>