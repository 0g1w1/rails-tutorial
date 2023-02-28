# Ruby on Rails チュートリアル（[第 7 版](https://railstutorial.jp/chapters/beginning?version=7.0#sec-git_setup)）

## 環境構築

Gemfileを下記の通り用意する  
Gemfile:
```Gemfile
source "https://rubygems.org"
gem "rails", "~> 7.0.4"
```

rails newする
```
docker-compose run --rm web rails new . -f -d mysql
```

Gemfileが更新されるので、イメージをビルドする
```
docker-compose build
```

DBの設定を行う  
database.yml:
```diff
default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
- password:
- host: localhost
+ password: root
+ host: db
```

DBを作成する
```
docker-compose run --rm web rails db:create
```

コンテナを起動する
```
docker-compose up -d
```
