job "job-http-echo" {
  datacenters = ["dc1"]
  type        = "service"
  group "echo" {
    count = 1
  
    network {
      port "http" {}
    }
    
    service {
      name  = "test-service-nomad"
      tags = [
        "traefik.enable=true", 
        "traefik.http.routers.router0.entrypoints=websecure",
        "traefik.http.routers.router0.rule=Host(`test.local.rnds`)",
        "traefik.http.routers.router0.tls=true",
        #"traefik.http.routers.router0.middlewares=test-auth",
        #"traefik.http.middlewares.test-redirectscheme.redirectscheme.permanent=true",
        #"traefik.http.middlewares.test-auth.basicauth.users=admin:$apr1$RH3KYO4Y$UGWDfCPUst97ivW91bi260", # admin:123456
        # "traefil.http.routers.router0.entryPoint.tls.certificates.certFile=/traefik/certs/test.local.crt",
        # "traefil.http.routers.router0.entryPoint.tls.certificates.certFile=/traefik/certs/test.local.key"
        # "traefik.http.routers.router0.tls.certificates.certFile=cert/test.local.crt"
        # "traefik.http.routers.router0.tls.certificates.keyFile=cert/test.local.key" 
        # "traefik.http.middlewares.test-redirectscheme.redirectscheme.scheme=https"
        # "traefik.http.middlewares.test-redirectscheme.redirectscheme.port=443"
        # "traefik.http.services.test-service-nomad.loadbalancer.server.port=80"
        # "traefik.http.routers.router0.entrypoints=websecure"
        # "traefik.http.routers.websecure.tls.certresolver=test.local"
        # "traefik.http.routers.router0.tls.options="

      ]

      provider = "consul"
      port = "http"
    }
    
    task "task-service" {
      driver = "docker"

      config {
        image = "hashicorp/http-echo:latest"
        args = [
          "-listen", ":${NOMAD_PORT_http}",
          "-text", "Hello there from 127.0.0.1:${NOMAD_PORT_http}"
        ]
        ports = ["http"]
      }

      resources {
        cpu    = 30
        memory = 100

        }
      }

    }
  }
