FROM golang:alpine as build
RUN apk add --no-cache ca-certificates git
WORKDIR /build
ADD . . 
RUN go mod download
ARG TARGETOS linux
ARG TARGETARCH
RUN --mount=type=cache,target=/root/.cache/go-build \
    --mount=type=cache,target=/go/pkg \
        CGO_ENABLED=0 GOOS=linux GOARCH=$TARGETARCH \
        go build -ldflags '-extldflags "-static"' -o badge


FROM scratch
COPY --from=build /etc/ssl/certs/ca-certificates.crt \
     /etc/ssl/certs/ca-certificates.crt
EXPOSE 8080
COPY --from=build /build/docker-badge /docker-badge
COPY --from=build /build/static /static
ENTRYPOINT ["/docker-badge"]

ARG git_sha="no-git-repo"
ARG build_date="${date}"
ARG version="v0.1.0"

LABEL   org.opencontainers.image.title="docker-badge" \
        org.opencontainers.image.source="https://gitea.alacasa.uk/ivan/badge.git" \
        org.opencontainers.image.version="${version}" \
        org.opencontainers.image.revision="${git_sha}" \
        org.opencontainers.image.created="${build_date}" 

