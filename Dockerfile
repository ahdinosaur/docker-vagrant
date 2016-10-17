FROM debian:jessie
MAINTAINER Mikey Williams <michael.williams@enspiral.com>

# install vagrant and virtualbox
RUN export DEBIAN_FRONTEND=noninteractive; \
  sh -c 'echo "deb http://httpredir.debian.org/debian/ jessie contrib" > /etc/apt/sources.list.d/contrib.list' && \
  apt-get update && \
  apt-get install -yq vagrant rsync virtualbox --no-install-recommends

ENTRYPOINT ["/usr/bin/vagrant"]
