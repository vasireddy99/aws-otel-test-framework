# this file is defined in validator/src/main/resources/validations
validation_config = "default-mocked-server-prometheus-validation.yml"

sample_app = "prometheus"

//sample_app_image = "quay.io/freshtracks.io/avalanche:latest"
//public.ecr.aws/aws-otel-test/prometheus-sample-app:latest
sample_app_image = "quay.io/freshtracks.io/avalanche:latest"

soaking_sample_app = "prometheus"

soaking_data_type = "prometheus"

sample_app_mode = "pull"

ecs_taskdef_directory = "prometheus"
