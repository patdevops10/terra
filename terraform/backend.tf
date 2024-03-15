terraform {
  backend "s3" {
    bucket         = aws_s3_bucket.tf_state_bucket.bucket
    key            = "terraform.tfstate"
    region         = "us-east-1"  # Cambia a la región donde creaste el bucket
    encrypt        = true
  }
}