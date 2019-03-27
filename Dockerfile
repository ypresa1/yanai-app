FROM registry.access.redhat.com/ubi7-dev-preview/ubi-minimal  
MAINTAINER Datadog <package@datadoghq.com>

LABEL name="datadog/docker-dd-agent:latest-rhel" \
      vendor="Datadog" \
      version="${AGENT_VERSION}" \
      release="" \
      summary="A containerized version of the Datadog Agent." \
      description="The Datadog Agent provides real-time performance tracking and visualization of your operating system and application metrics." \
      url="https://www.datadoghq.com" \
      run='docker run -d --name dd-agent -v /var/run/docker.sock:/var/run/docker.sock:ro \
           -v /proc/:/host/proc/:ro \
           -v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro \
           -e API_KEY={your_api_key_here} \
           -e SD_BACKEND=docker \
           ${IMAGE}' \
      io.k8s.description="Datadog Agent provides real-time performance tracking and visualization of your Kubernetes clusters, containers, operating system and application metrics." \
      io.k8s.display-name="Datadog Agent"
