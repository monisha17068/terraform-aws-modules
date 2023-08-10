output "bucket-region" {
  description = "The AWS region this bucket resides in."
  value       = "us-east-2"
}

output "bucket" {
  description = "The bucket names"
  value       = ["indium-test-dev", "indium-test-prod"]
}

