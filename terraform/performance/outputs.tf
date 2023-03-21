output "aoc_instance_id" {
  value = module.ec2_setup.collector_instance_id
}

output "validation_config_file" {
  value = local.validation_config_file
}
