Bussiness_Division  = "devOps"
Environment         = "dev"
Resource_Group_Name = "rg"
Resource_Location   = "Central India"

vnet_name          = "vnet"
vnet_address_space = ["10.1.0.0/16"]

web_subnet_name          = "webSubnet"
web_subnet_address_space = ["10.1.1.0/24"]

app_subnet_name          = "appSubnet"
app_subnet_address_space = ["10.1.11.0/24"]

db_subnet_name          = "dbSubnet"
db_subnet_address_space = ["10.1.21.0/24"]

bastion_subnet_name          = "bastionSubnet"
bastion_subnet_address_space = ["10.1.100.0/24"]

bashtion_service_subnet_name   = "AzureBastionSubnet"
bastion_service_address_prefix = ["10.1.101.0/27"]

# web_linuxvm_instance_count = 3
# lb_inbound_nat_ports = [ "1022", "2022", "3022", "4022", "5022" ]