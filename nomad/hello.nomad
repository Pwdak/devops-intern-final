job "hello" {
  datacenters = ["dc1"]
  type        = "service"

  group "hello-group" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "devops-hello:latest"
        force_pull = false   
      }

      resources {
        cpu    = 100   # minimal CPU allocation
        memory = 128   # minimal memory allocation (MB)
      }
    }
  }
}