FROM: alpine
RUN apk add --no-cache curl
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
RUN curl -L https://get.helm.sh/helm-v2.14.3-linux-amd64.tar.gz | tar xvz
RUN mv linux-amd64/helm /usr/bin/helm
RUN chmod +x /usr/bin/helm
RUN curl -L https://github.com/digitalocean/doctl/releases/download/v1.32.3/doctl-1.32.3-linux-amd64.tar.gz  | tar xz
RUN mv doctl /usr/bin/doctl
