FROM owasp/dependency-check:latest

LABEL org.opencontainers.image.source="https://github.com/minova-afis/DependencyCheck_Builder" \
      homepage="https://github.com/minova-afis/DependencyCheck_Builder" \
      maintainer="scholz@minova.aero"

USER root

ARG NIST_NVD_API_KEY="NVD_API_KEY_IS_UNSET"
ENV NIST_NVD_API_KEY=${NIST_NVD_API_KEY}

RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly --nvdApiKey $NIST_NVD_API_KEY --nvdApiDelay 1000
ENTRYPOINT [ "/usr/share/dependency-check/bin/dependency-check.sh"]
