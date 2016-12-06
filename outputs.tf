output "default_role_name" {
    value = "${aws_iam_role.default.name}"
}
output "default_role_unique_id" {
    value = "${aws_iam_role.default.unique_id}"
}
output "default_role_arn" {
    value = "${aws_iam_role.default.arn}"
}
output "default_profile_id" {
    value = "${aws_iam_instance_profile.default.id}"
}
output "default_profile_arn" {
    value = "${aws_iam_instance_profile.default.arn}"
}
output "default_profile_unique_id" {
    value = "${aws_iam_instance_profile.default.unique_id}"
}
