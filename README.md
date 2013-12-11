sinatra入門
====================

# 目的 #
sinatraでwebアプリを使ってデプロイまできるようにする

# 前提 #
| ソフトウェア   | バージョン   | 備考        |
|:---------------|:-------------|:------------|
| OS X           |10.8.5        |             |
| ruby           |2.0.0-p247    |             |
| rvm            |1.24.0        |             |
| sinatra        |1.4.4         |             |
| thin           |1.6.0         |             |

# 構成 #

## セットアップ ##

# 詳細 #

## セットアップ ##

    $ rvm use ruby-2.0.0-p247
    $ rvm gemset create sinatra
    $ rvm use ruby-2.0.0-p247@sinatra
    $ bundle

## アプリケーションサンプル1 ##

### プログラム作成 ###

+ [server.rb](sample1/server.rb)

        require 'sinatra'
    
        get '/' do
         "Hello, world!"
        end

### プログラム実行 ###

    $ ruby sample1/server.rb

### プログラム確認 ###

    http://localhost:4567/

## アプリケーションサンプル2 ##

### プログラム作成 ###

+ [game.rb](sampl2/game.rb)

### プログラム実行 ###

    $ ruby sample2/game.rb

### プログラム確認 ###

    http://localhost:4567/throw/scissors

## アプリケーションサンプル3 ##

### プログラム作成 ###

+ [inline.rb](sampl3/inline.rb)

### プログラム実行 ###

    $ ruby sample3/inline.rb

### プログラム確認 ###

    http://localhost:4567/index

## アプリケーションサンプル4 ##

### プログラム作成 ###

+ [app.rb](sample4/app.rb)
+ [index.erb](sample4/views/index.erb)
+ [profile.erb](sample4/views/profile.html.erb)
+ [help.erb](sample4/views/help.html.erb)

### プログラム実行 ###

    $ ruby sample4/add.rb

### プログラム確認 ###

    http://localhost:4567/index

## アプリケーションサンプル5 ##

### プログラム作成 ###

    sample5
    ├── config.ru
    ├── controllers
    │   ├── application_controller.rb
    │   └── example_controller.rb
    ├── helpers
    │   └── application_helper.rb
    └── views
        ├── example.erb
        ├── layout.erb
        └── not_found.erb

### プログラム実行 ###

    $ cd sample5
    $ rackup -p 4567 -s thin

### プログラム確認 ###

    http://localhost:4567/

# 参照 #

[Sinatra](http://www.sinatrarb.com/intro-jp.html)

[入門 Sinatra――Web制作のためのシンプルなRuby DSL](http://www.oreilly.co.jp/books/9784873115597/)

[第23回　Rackとは何か（1）Rackの生まれた背景](http://gihyo.jp/dev/serial/01/ruby/0023)

[第24回　Rackとは何か（2）Rackの使い方](http://gihyo.jp/dev/serial/01/ruby/0024)

[第25回　Rackとは何か（3）ミドルウェアのすすめ](http://gihyo.jp/dev/serial/01/ruby/0025)


