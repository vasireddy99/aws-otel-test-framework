extensions:
  sigv4auth:
    region: "us-west-2"
receivers:
  prometheus:
    config:
      global:
        scrape_interval: 5s
      scrape_configs:
      - job_name: "ec2-testing"
        ec2_sd_configs:
          - region: us-west-2
            port: ${sample_app_listen_address_port}
exporters:
  prometheusremotewrite:
    endpoint: "https://${mock_endpoint}"
    auth:
      authenticator: sigv4auth
service:
  pipelines:
    metrics:
     receivers: [prometheus]
     exporters: [prometheusremotewrite]
  extensions: [sigv4auth]
  telemetry:
    logs:
      level: ${log_level}
