#Random String Resource
resource "random_string" "myrandom" {
  length  = 8
  special = false
  upper   = false
  numeric = false
}