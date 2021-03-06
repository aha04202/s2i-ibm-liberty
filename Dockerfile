FROM     ibmcom/websphere-liberty:full-java8-ibmjava-ubi
LABEL    maintainer="ISE"
ENV        BUILDER_VERSION 0.0.1
LABEL      io.k8s.description="Liberty S2I Image" \
                  io.k8s.display-name="Liberty S2I Builder" \
                  io.openshift.tags="runner,builder,liberty,kernel" \
                  io.openshift.s2i.scripts-url=image:///usr/local/s2i \
                  io.openshift.expose-services="9080/tcp:http, 9443/tcp:https" \
                  io.openshift.s2i.destination=“/tmp”
ENV       STI_SCRIPTS_PATH="/usr/local/s2i" \
               WORKDIR="/usr/local/workdir" \
               S2I_DESTINATION="/tmp"
COPY ./s2i/bin/ /usr/local/s2i
USER    1001
