FROM registry.access.redhat.com/ubi7-dev-preview/ubi-minimal  
MAINTAINER <yanai@example.com>

### Add Atomic/OpenShift Labels - https://github.com/projectatomic/ContainerApplicationGenericLabels#####
LABEL name="yanai-app" \
      vendor="Yanai Testing" \
      version="1.0" \
      release="1" \
      summary="Yanai Corp's Starter app" \
      description="Starter app will do ....." 

COPY licenses /licenses
