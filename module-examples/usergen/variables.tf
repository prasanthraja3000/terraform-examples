variable "user_count" {
  type = number
  default = 0
}

variable "environments" {
  type = list(string)
  default = [ "" ]
}