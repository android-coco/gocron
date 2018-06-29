FROM golang:1.10-alpine as builder

WORKDIR /go/src/gocron

COPY . .

RUN apk update \
    && apk add --no-cache git ca-certificates make bash nodejs yarn

RUN make install-vue \
    && make build-vue \
    && make statik \
    && CGO_ENABLED=0 make gocron

FROM alpine:3.7

RUN apk add --no-cache ca-certificates \
    && addgroup -S app \
    && adduser -S -g app app

WORKDIR /app

COPY --from=builder /go/src/gocron/bin/gocron .

RUN chown -R app:app ./

EXPOSE 5920

USER app

ENTRYPOINT ["/app/gocron", "web"]
