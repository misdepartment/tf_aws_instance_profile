# Terraform module for defining AWS IAM roles and profiles.

# See https://www.terraform.io/docs/providers/aws/r/iam_role.html.
resource "aws_iam_role" "default" {
    name = "${var.iam_role_default_name}"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

# See https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html.
resource "aws_iam_instance_profile" "default" {
    name = "${var.iam_role_default_name}"
    role = "${aws_iam_role.default.name}"
}

# See https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html.
resource "aws_iam_role_policy" "default_policy" {
    name = "${var.iam_role_default_name}-policy"
    role = "${aws_iam_role.default.name}"
    policy = "${var.iam_role_policy}"
}
