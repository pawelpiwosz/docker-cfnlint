FROM python:3-alpine

# For Travis build
ARG BUILD_DATE
ARG VCS_REF
ARG VER

LABEL maintainer="Pawel Piwosz <devops@pawelpiwosz.net>"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/pawelpiwosz/docker-cfn-linter"
LABEL org.label-schema.name="docker-cfn-linter"
LABEL org.label-schema.description="Lint your CloudFormation"
LABEL org.label-schema.version=$VER


# RUN apk --update add --no-cache --virtual .build-deps gcc musl-dev

RUN pip install --upgrade pip

RUN pip install cfn-lint

RUN mkdir /lintfiles
WORKDIR /lintfiles

ENTRYPOINT ["cfn-lint"]
