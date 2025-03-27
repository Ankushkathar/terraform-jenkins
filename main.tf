
resource "null_resource" "stopweb" {

triggers = {
   always_run = "${timestamp()}"
}

connection {
  type = "ssh"
  user = "ram"
  password = "test"
  host = "192.168.1.3"
 }

  provisioner "remote-exec" {
   inline = [
   "touch /home/ram/myfile"
   ]
}

}

