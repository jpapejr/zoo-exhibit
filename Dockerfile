#Stage 1 - Install dependencies and build the app
FROM google/dart AS build
LABEL maintainer="John Pape <jpapejr@icloud.com>"

WORKDIR /app

# RUN apt update && apt install -y nodejs npm
# RUN npm i -g nodemon

COPY . /app
RUN pub get
RUN pub get --offline && pub global activate webdev
RUN /root/.pub-cache/bin/webdev build

#Stage 2, runtime
FROM twalter/openshift-nginx as runtime
LABEL maintainer="John Pape <jpapejr@icloud.com>"

WORKDIR /app
COPY --from=build /app/build /usr/share/nginx/html
USER root
RUN chmod go+w -R /usr/share/nginx/html
USER nginx

