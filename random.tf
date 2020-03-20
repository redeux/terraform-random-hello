variable "hello" {
  type        = string
  description = "just a string with who we want to greet"
}

variable "second_hello" {
  type        = string
  description = "just a second hello"
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
    hello = var.second_hello
  }
}

output "pet" {
  value = random_pet.server.id
}

output "list_of_pets" {
  value = [random_pet.server.id, random_pet.number_2.id]
}