# mean-stack-sample

---

### 構成


#### Dockerコマンド
```
docker-compose up --build
```

#### コンテナログイン（バッチとかジェネレータとかはここから）
```
docker exec -it meanstacksample_app bash
```

#### コンテナアタッチ（開発のログを監視）
```
docker attach meanstacksample_app
```
