FROM hashicorp/terraform:0.12.24

LABEL maintainer="Stanislav Khotinok <stanislav.khotinok@gmail.com>"

ARG TERRAGRUNT_VERSION=v0.23.10

RUN apk add --update --no-cache bash git openssh

ADD https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 /usr/local/bin/terragrunt

RUN chmod +x /usr/local/bin/terragrunt

WORKDIR /apps

ENTRYPOINT []