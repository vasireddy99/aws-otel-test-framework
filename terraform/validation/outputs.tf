output "validation_docker_compose"{
  value= data.template_file.docker_compose.rendered
}