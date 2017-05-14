# コンテナ
FROM node:6.9.1
ENV LANG C.UTF-8

# OS

# Entrykit
ENV ENTRYKIT_VERSION 0.4.0
RUN wget https://github.com/progrium/entrykit/releases/download/v${ENTRYKIT_VERSION}/entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && tar -xvzf entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && rm entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && mv entrykit /bin/entrykit \
  && chmod +x /bin/entrykit \
  && entrykit --symlink

# App
RUN mkdir -p /app
WORKDIR /app

# Node
RUN npm install -g gulp

# Entry Point
ENTRYPOINT [ \
  "prehook", "node -v", "--", \
  "prehook", "npm -v", "--", \
  "prehook", "npm install", "--"]
