# Image is used for CI and has been managed in https://hub.docker.com/repository/docker/scaledbi/r.ci 

FROM r-base:4.1.2

RUN apt-get update  \
  && apt-get install git libssl-dev ssh texlive-latex-base texlive-fonts-recommended libcurl4-openssl-dev libxml2-dev -y \
  && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('devtools', 'roxygen2'), repos='http://cran.us.r-project.org')"