#variable "enviro" {
 # default = "dev"
#}




terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "prexhaj"

    workspaces {
      name = "my-first-workspace"
    }
  }
}