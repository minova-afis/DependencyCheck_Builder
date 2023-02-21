FROM owasp/dependency-check:latest

LABEL org.opencontainers.image.source="https://github.com/minova-afis/DependencyCheck_Builder" \
      homepage="https://github.com/minova-afis/DependencyCheck_Builder" \
      maintainer="scholz@minova.aero"

USER root
RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly
ENTRYPOINT [ "/usr/share/dependency-check/bin/dependency-check.sh"]
