terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }
  }
}


resource "local_file" "this" {
  content  = var.content
  filename = "my_file.txt"
}
