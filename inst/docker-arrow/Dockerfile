FROM rocker/r-base:4.1.2

# see https://arrow.apache.org/install/
RUN apt update && \
    apt install -y -V ca-certificates lsb-release wget && \
    wget "https://apache.jfrog.io/artifactory/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb" && \
    apt-get -y --no-install-recommends install \
      ./apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb

RUN apt update && \
    apt install -y -V -f \
    libarrow-dev \
    libarrow-dataset-dev \
    libarrow-glib-dev \
    libarrow-flight-dev \
    libparquet-dev \
    libparquet-glib-dev 

RUN install2.r --error \
    --deps TRUE \
    arrow