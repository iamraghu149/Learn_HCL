provider "aws" {
  #Configurations options
  region = "ap-south-1"
}

  provider "aws" {
    region = "us-west-2"
    alias = "west"
  }

  provider "github" {
    token = "ghp_08Mu4azJfLVo2F5ivNfRGrtZNxdumd4U2024"
  }
