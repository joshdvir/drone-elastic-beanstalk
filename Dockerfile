# Docker image for the Drone Elastic Beanstalk plugin
#
#     cd $GOPATH/src/github.com/drone-plugins/drone-elastic-beanstalk
#     make deps build docker

FROM alpine:3.2

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*

ADD drone-elastic-beanstalk /bin/
ENTRYPOINT ["/bin/drone-elastic-beanstalk"]