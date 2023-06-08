provider "github" {
  token = ""
  owner = "scrapyy"
}


resource "github_repository" "my_awesome_repo" {
  name        = "my_awesome_repo"
  description = "My awesome codebase"

  visibility = "public"
  auto_init = "true"
}


