FROM docker.io/library/ubuntu:jammy

ARG R_VERSION
ENV R_VERSION=${R_VERSION}
ENV R_HOME="/usr/local/lib/R"

COPY scripts/install_R_source.sh /rocker_scripts/install_R_source.sh
RUN /rocker_scripts/install_R_source.sh

ENV CRAN="https://p3m.dev/cran/__linux__/jammy/latest"
ENV LANG=en_US.UTF-8

COPY scripts/bin/ /rocker_scripts/bin/
COPY scripts/setup_R.sh /rocker_scripts/setup_R.sh
RUN /rocker_scripts/setup_R.sh