FROM alpine:3

ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.name="helm-kubectl-doctl" \
      org.label-schema.url="https://hub.docker.com/r/frestyle/helm-kubectl-doctl/" \
      org.label-schema.vcs-url="https://github.com/frestyle/helm-kubectl-doctl" \
      org.label-schema.build-date=$BUILD_DATE

# Note: Latest version of kubectl may be found at:
# https://github.com/kubernetes/kubernetes/releases
ENV KUBE_LATEST_VERSION="v1.20.2"
# Note: Latest version of helm may be found at
# https://github.com/kubernetes/helm/releases
ENV HELM_VERSION="v3.5.0"

# Note: Latest version of doctl may be found at
# https://github.com/digitalocean/doctl/releases
ENV DOCTL_VERSION='1.54.1'


RUN apk add --no-cache ca-certificates bash git openssh curl \
    && wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
    && chmod +x /usr/local/bin/helm \
    && wget -q  https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz -O - | tar -xzO doctl > /usr/local/bin/doctl \    
    && chmod +x /usr/local/bin/doctl \
    && chmod g+rwx /root \
    && mkdir /config \
    && chmod g+rwx /config    

WORKDIR /config

CMD bash
