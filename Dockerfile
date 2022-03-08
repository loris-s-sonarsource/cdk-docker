FROM alpine:latest

LABEL description="CDK"

RUN set -ex \
  && apk -v --no-cache --update add \
        nodejs \
        npm \
        python3 \
        ca-certificates \
        groff \
        less \
        bash \
        make \
        curl \
        wget \
        zip \
        git \
  && update-ca-certificates \
  && npm install -g aws-cdk

RUN adduser --gecos "" --disabled-password cdk-user
USER cdk-user
WORKDIR /home/cdk-user

CMD ["cdk"]
