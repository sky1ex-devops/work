job "consul_client" {
  datacenters = ["dc1"]

  group "consul" {
    count = 1
    
    service {
      name     = "service-start-consul-client"
      tags     = ["consul"]
      provider = "nomad"
    }
    
    task "task-consul-sclient" {
      driver = "exec"

      config {
        command = "consul"
        args = ["agent", "-config-dir", "/etc/consul.d/client/config.json"]
      }

      resources {
        cpu    = 100
        memory = 1024
        network {
          mbits = 10
          }
        }
      }

    }
  }
