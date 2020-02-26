output "private_ip" {
  value = "${aws_instance.nfs_server[0].private_ip}"
}

output "nfs_folder" {
  value = "/nfsroot"
}

output "instance_id" {
  value = aws_instance.nfs_server.*.id
}

output "ssh_command" {
  value = "ssh -o StrictHostKeyChecking=no -i ${var.ssh_prv_key_path} centos@${aws_instance.nfs_server[0].public_ip}"
}