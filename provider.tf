provider "aws" {
  region  = "${var.AWS_REGION}"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile = "iam_myuser_profile"
}
