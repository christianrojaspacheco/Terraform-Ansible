variable "name" {
  default = "bob"
}

resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }
  byte_length = 24
}

output "random" {
  value = "${random_id.random.hex}"
}

output "hello_world" {
  value = "Hello, ${var.name}"
}

