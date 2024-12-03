job "consul_server" {
  datacenters = ["dc1"]

  group "consul" {
    count = 1
    
    service {
      name     = "service-start-consul-server"
      tags     = ["consul"]
      provider = "nomad"
    }
    
    task "task-consul-server" {
      driver = "docker"

      config {
        image = "sky1ex7/server_consul:1.20.1"
        ipv4_address = "172.28.0.2"
        network_mode = "consul_net"
      }

      resources {
        cpu    = 30
        memory = 1024
        network {
          mbits = 10
          }
        }
      }

    }
  }
