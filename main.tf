# # Copyright (c) HashiCorp, Inc.
# # SPDX-License-Identifier: MPL-2.0

# module "aft" {
#   source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"
#   ct_management_account_id    = var.ct_management_account_id
#   log_archive_account_id      = var.log_archive_account_id
#   audit_account_id            = var.audit_account_id
#   aft_management_account_id   = var.aft_management_account_id
#   ct_home_region              = var.ct_home_region
#   tf_backend_secondary_region = var.tf_backend_secondary_region

#   vcs_provider                                  = "github"
#   account_request_repo_name                     = "${var.github_username}/private-aft-account-request"
#   account_provisioning_customizations_repo_name = "${var.github_username}/private-aft-account-provisioning-frameworks"
#   global_customizations_repo_name               = "${var.github_username}/private-aft-global-account-customisation-framework"
#   account_customizations_repo_name              = "${var.github_username}/private-aft-account-customisations"
# }

resource "aws_iam_role" "test_role" {
  name = "test_role_new_bhhbharath_dev"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}