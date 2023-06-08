terraform {
  cloud {
    organization = "my-awesome-org-rand-test"

    workspaces {
      name = "test"
    }
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

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


