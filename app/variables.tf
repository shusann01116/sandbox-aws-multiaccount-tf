variable "workspace_iam_role" {
  type = map(string)
  default = {
    "development" = "arn:aws:iam::aws:policy/AdministratorAccess"
  }
}

variable "initial_account_gmail" {
  type = map(string)
  description = "Gmail prefix used in initial account created under the OU in the environment"
  default = {
    "management" = "templateseizin"
    "corporation" = "templateseizin"
  }
}
