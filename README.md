instance profile terraform module
=======================

A terraform module for creating an instance profile IAM role
* This module will create a role and set up the trust relationship to ec2

Module Input Variables
----------------------

- `iam_role_default_name` - The name to give to the iam role
- `iam_role_policy` - The policy doc to pass into the role permissions

Usage
-----

You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. `main.tf`

```
module "instance_profile" {
    source = "github.com/misdepartment/tf_aws_instance_profile"

    iam_role_default_name = "${var.app_name}-role"
    iam_role_policy = "${file("docs/instance_role_policy.txt")}"
}
```

2. Create your policy document and update the path as-needed - or - use terraform templates to create the role and pass the rendered content.

Authors
=======

Created and maintained by `thepastelsuit`
