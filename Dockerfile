FROM openjdk:11-slim

# アプリケーションディレクトリの作成
RUN mkdir /app
WORKDIR /app

# アプリケーションの配置
ADD . /app

ENTRYPOINT ["java","-jar","/app/target/app.jar"]
