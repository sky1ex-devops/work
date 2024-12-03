job "whoami" {
  datacenters = ["dc1"]
  type        = "service"
  group "client" {
    count = 1
    
    network {
      port "http" {
        to = 6303
      }
    }

    service {
      name     = "agent-task-whoami"
      tags     = ["whoami", "traefik.enable=true", "traefik.http.routers.router1.rule=Host(`who.local`)"]
 # admin : 123456
    
      port = "http"
      provider = "consul"
    }
    
    task "agent-task-whoami" {
      driver = "docker"

      config {
        image = "traefik/whoami"
        ports = ["http"]
      }

    resources {
      cpu    = 30
      memory = 100


        
      }

    }
  }
}