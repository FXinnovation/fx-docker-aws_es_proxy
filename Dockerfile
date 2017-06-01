FROM alpine:3.5 

ENV AWSESPROXY_VERSION=0.3

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ADD ./resources /resources

RUN /resources/build && rm -rf resources

USER "awsesproxy"

ENTRYPOINT ["aws-es-proxy"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="aws-es-proxy" \
      "org.label-schema.base-image.name"="docker.io/library/alpine" \
      "org.label-schema.base-image.version"="3.5" \
      "org.label-schema.description"="aws-es-proxy in a container" \
      "org.label-schema.url"="https://github.com/abutaha/aws-es-proxy" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-aws_es_proxy" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.aws-es-proxy.version"=$AWSESPROXY_VERSION \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="docker run --rm fxinnovation/aws-es-proxy:[TAG] -h"
