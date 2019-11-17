variable "AWS_ACCESS_KEY_ID" {

}
variable "AWS_SECRET_ACCESS_KEY" {

}
variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "AMIS" {
  type = "map"
  default = {
    ap-south-1 = "ami-054aff5bdc25a1e0d"
  }
}

