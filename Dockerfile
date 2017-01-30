FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.8

RUN gem install boxgrinder-build --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["boxgrinder-build"]
CMD ["--help"]
