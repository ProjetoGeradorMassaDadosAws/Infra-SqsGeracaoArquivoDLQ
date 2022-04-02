terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.2"
    }
  }
}

provider "aws" {
  ####
  # Sera usado as variaveis de ambiente cadastradas no projeto do codebuild.
}

resource "aws_sqs_queue" "sqs_geracao_arquivo_dlq" {
  name                      = var.QueueName
  delay_seconds             = 0
  max_message_size          = 1024
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
}