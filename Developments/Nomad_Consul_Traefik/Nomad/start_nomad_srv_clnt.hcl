log_level = "ERROR"

data_dir = "/home/lex/DEVOPS/developments/Nomad/task"

server {
  enabled = true

  bootstrap_expect = 1
}

consul {
  address = "127.0.0.1:8500"
  auto_advertise      = true
  server_auto_join    = true
  client_auto_join    = true
}

bind_addr = "0.0.0.0"

advertise {
  http = "172.17.0.1"
}

client {
  enabled = true

  options {
    "docker.privileged.enabled" = "true" 
    "docker.auth.config" = "/home/lex/.docker/config.json"
  }
}

