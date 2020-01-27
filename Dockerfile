#Stage 1 - Install dependencies and build the app
FROM google/dart
LABEL maintainer="John Pape <jpapejr@icloud.com>"

WORKDIR /app

RUN apt update && apt install -y nodejs npm
RUN npm i -g nodemon

COPY . /app
RUN pub get
RUN pub get --offline && pub global activate webdev

ENTRYPOINT [ "/usr/local/bin/nodemon", "--exec", "dart /app/lib/main.dart", "-e", "dart" ]