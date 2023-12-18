FROM icr.io/appcafe/open-liberty:full-java11-openj9-ubi

COPY --chown=1001:0 \
    src/main/liberty/config \
    /config/
    
RUN features.sh

COPY --chown=1001:0 \
    order-service.jar \
    /config/apps

RUN configure.sh
