FROM docker

LABEL maintainer "@egorpe"

ENV JP_VERSION=0.1.3

RUN apk -v --no-cache --update add \
        python3 \
        bash \
        make \
        curl \
        wget \
        zip \
        git \
        ansible
    && curl -o /usr/local/bin/jp \
        -L https://github.com/jmespath/jp/releases/download/$JP_VERSION/jp-linux-amd64 \
    && chmod +x /usr/local/bin/jp

VOLUME [ "/root/.aws" ]
VOLUME [ "/root/.ssh" ]
VOLUME [ "/opt/app" ]

WORKDIR /opt/app

CMD [ "/usr/bin/ansible", "--version" ]
