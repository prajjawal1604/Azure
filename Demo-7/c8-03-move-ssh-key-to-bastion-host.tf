# Create a Null Resource and Provisioners
resource "null_resource" "null_copy_ssh_key_to_bastion" {
  depends_on = [azurerm_linux_virtual_machine.bastion_host_linuxvm]

  # Connection Block for Provisioners to connect to Azure VMs
  connection {
    type        = "ssh"
    host        = azurerm_linux_virtual_machine.bastion_host_linuxvm.public_ip_address
    user        = azurerm_linux_virtual_machine.bastion_host_linuxvm.admin_username
    private_key = file("${path.module}/ssh-keys/keys")
  }


  ## File Provisioner: Copies the key.pub file to the Bastion Host VM
  provisioner "file" {
    source      = "${path.module}/ssh-keys/keys"
    destination = "/tmp/terraform-key"
    #   on_failure = continue
    #   when = create
  }
  ## Remote Exec Provisioner: Using  remote-exec provisioner fix the private key permission
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/terraform-key"
    ]
  }
}
# Create Time Provisioners - By defalut they are created in the order they are defined.
# Destory Time Provisioners - Will be executed in the reverse order of creation.