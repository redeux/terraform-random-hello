variable "hello" {
  type        = string
  description = "just a string with who we want to greet"
}

variable "secret_key" {
  type        = string
  description = "just a string with who we want to greet"
}

resource "random_pet" "server" {
  keepers = {
    hello = var.hello
  }
}

output "pet" {
  value = random_pet.server.id
}