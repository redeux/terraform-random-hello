variable "hello" {
  type        = string
  description = "just a string with who we want to greet"
}

variable "secret_key" {
  type        = string
  description = "this is a secret"
}

resource "random_pet" "server" {
  keepers = {
    hello      = var.hello
    secret_key = var.secret_key
  }
}

resource "random_pet" "number_2" {
  keepers = {
    hello = var.hello
  }
}

output "pet" {
  value = random_pet.server.id
}
