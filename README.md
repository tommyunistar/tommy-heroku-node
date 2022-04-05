## Heroku node example

This repo is the same code of the article [站在 Docker 的肩膀上，部署任何語言的 Web 應用到 Heroku](https://medium.com/@larry850806/deploy-any-web-application-to-heroku-with-docker-b64b9b0eb93)

## How to deploy to Heroku

### create a app on Heroku

```sh
heroku create <YOUR_APP_NAME>
heroku git:remote --app <YOUR_APP_NAME>


heroku create tommy-heroku-node # 創見專案名稱
heroku git:remote --app tommy-heroku-node # 可以不用添加
```

### push docker image

```sh
docker build -t api-server . # build Dockerfile : api-server

heroku container:login # 登入
heroku container:push web  # 尋找 Dockerfile 構建推送image
heroku container:release web # 開啟heroku web
```

### open in browser

```sh
heroku open
```

### change data
```sh
docker build -t api-server .
heroku container:login
heroku container:push web --app tommy-heroku-node
heroku container:release web --app tommy-heroku-node
heroku open --app tommy-heroku-node

```

[heroku docker](https://devcenter.heroku.com/articles/build-docker-images-heroku-yml)
[Heroku + Docker in 10 Minutes](https://towardsdatascience.com/heroku-docker-in-10-minutes-f4329c4fd72f)
