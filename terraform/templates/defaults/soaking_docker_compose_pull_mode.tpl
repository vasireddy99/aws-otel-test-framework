version: "3.8"
services:
  mocked_server:
    image: ${mocked_server_image}
    ports:
      - "80:8080"
      - "443:443"
    deploy:
      resources:
        limits:
          memory: 1G
  ot-metric-emitter:
    privileged: true
    image: quay.io/freshtracks.io/avalanche:latest
    command: --port=${sample_app_listen_address_port} --metric-count=${rate} --label-count=10
    ports:
      - ${sample_app_external_port}:${sample_app_listen_address_port}
    deploy:
      resources:
        limits:
          memory: 16G
