variable "user_count" {
  type = number
  description = "Number of random users to generate"
}


variable "environments" {
  type = list(string)
  description = "List of Environments: DEV, Staging, QA, Production"
}