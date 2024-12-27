log_level = "ERROR"

data_dir = "/home/lex/DEVOPS/nomad_data_dir"

server {
  enabled = true

  bootstrap_expect = 1
}

consul {
  address = "{{  ansible_enp7s0.ipv4.address }}:8500"
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

