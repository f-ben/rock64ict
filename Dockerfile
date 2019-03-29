FROM arm64v8/openjdk:jre-slim
ARG ICT_VERSION=0.6
RUN apt-get update \
    && apt-get install nano wget -y \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /ict
RUN wget https://github.com/iotaledger/ict/releases/download/${ICT_VERSION}/ict-${ICT_VERSION}.jar
VOLUME /ict
EXPOSE 1337
EXPOSE 2187
ENTRYPOINT java -jar *.jar --config-create
