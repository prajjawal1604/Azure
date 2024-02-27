

       _               _              
   ___| |__   ___  ___| | _______   __
  / __| '_ \ / _ \/ __| |/ / _ \ \ / /
 | (__| | | |  __/ (__|   < (_) \ V / 
  \___|_| |_|\___|\___|_|\_\___/ \_/  
                                      
By Prisma Cloud | version: 3.2.0 
Update available 3.2.0 -> 3.2.19
Run pip3 install -U checkov to update 


terraform scan results:

Passed checks: 84, Failed checks: 12, Skipped checks: 0

Check: CKV_AZURE_183: "Ensure that VNET uses local DNS addresses"
	PASSED for resource: azurerm_virtual_network.vnet
	File: \c6-02-virtual-network.tf:2-8
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/azr-networking-183
[0mCheck: CKV_AZURE_182: "Ensure that VNET has at least 2 connected DNS Endpoints"
	PASSED for resource: azurerm_virtual_network.vnet
	File: \c6-02-virtual-network.tf:2-8
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/azr-networking-182
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.web_subnet_nsg
	File: \c6-03-web-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.web_subnet_nsg
	File: \c6-03-web-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.web_subnet_nsg
	File: \c6-03-web-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_group.web_subnet_nsg
	File: \c6-03-web-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["100"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["100"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["100"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["110"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["110"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["110"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["110"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["120"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["120"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["120"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.db_subnet_nsg
	File: \c6-04-db-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.db_subnet_nsg
	File: \c6-04-db-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.db_subnet_nsg
	File: \c6-04-db-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_group.db_subnet_nsg
	File: \c6-04-db-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["100"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["100"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["100"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["100"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["110"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["110"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["110"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["110"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["120"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["120"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["120"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.db_nsg_rule_inbound["120"]
	File: \c6-04-db-subnet-and-nsg.tf:43-57
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.bastion_subnet_nsg
	File: \c6-05-bastion-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.bastion_subnet_nsg
	File: \c6-05-bastion-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.bastion_subnet_nsg
	File: \c6-05-bastion-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_group.bastion_subnet_nsg
	File: \c6-05-bastion-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.bastion_nsg_rule_inbound["100"]
	File: \c6-05-bastion-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.bastion_nsg_rule_inbound["100"]
	File: \c6-05-bastion-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.bastion_nsg_rule_inbound["100"]
	File: \c6-05-bastion-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.bastion_nsg_rule_inbound["110"]
	File: \c6-05-bastion-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.bastion_nsg_rule_inbound["110"]
	File: \c6-05-bastion-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.bastion_nsg_rule_inbound["110"]
	File: \c6-05-bastion-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.app_subnet_nsg
	File: \c6-06-app-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.app_subnet_nsg
	File: \c6-06-app-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.app_subnet_nsg
	File: \c6-06-app-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_group.app_subnet_nsg
	File: \c6-06-app-subnet-and-nsg.tf:10-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.app_nsg_rule_inbound["100"]
	File: \c6-06-app-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.app_nsg_rule_inbound["100"]
	File: \c6-06-app-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.app_nsg_rule_inbound["100"]
	File: \c6-06-app-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.app_nsg_rule_inbound["110"]
	File: \c6-06-app-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.app_nsg_rule_inbound["110"]
	File: \c6-06-app-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.app_nsg_rule_inbound["110"]
	File: \c6-06-app-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_118: "Ensure that Network Interfaces disable IP forwarding"
	PASSED for resource: azurerm_network_interface.web_linuxvm_nic
	File: \c7-03-web-linuxvm-network-interface.tf:2-20
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-network-interfaces-disable-ip-forwarding
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.web_linuxvm_nsg
	File: \c7-04-web-linuxvm-network-security-group.tf:4-8
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.web_linuxvm_nsg
	File: \c7-04-web-linuxvm-network-security-group.tf:4-8
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.web_linuxvm_nsg
	File: \c7-04-web-linuxvm-network-security-group.tf:4-8
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_group.web_linuxvm_nsg
	File: \c7-04-web-linuxvm-network-security-group.tf:4-8
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["100"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["100"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["100"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["110"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["110"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["110"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["110"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["120"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["120"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["120"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet
[0mCheck: CKV_AZURE_1: "Ensure Azure Instance does not use basic authentication(Use SSH Key Instead)"
	PASSED for resource: azurerm_linux_virtual_machine.web_linuxvm
	File: \c7-05-web-linuxvm-resource.tf:21-45
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-1
[0mCheck: CKV_AZURE_178: "Ensure linux VM enables SSH with keys for secure communication"
	PASSED for resource: azurerm_linux_virtual_machine.web_linuxvm
	File: \c7-05-web-linuxvm-resource.tf:21-45
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-178
[0mCheck: CKV_AZURE_179: "Ensure VM agent is installed"
	PASSED for resource: azurerm_linux_virtual_machine.web_linuxvm
	File: \c7-05-web-linuxvm-resource.tf:21-45
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-179
[0mCheck: CKV_AZURE_149: "Ensure that Virtual machine does not enable password authentication"
	PASSED for resource: azurerm_linux_virtual_machine.web_linuxvm
	File: \c7-05-web-linuxvm-resource.tf:21-45
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-azure-virtual-machine-does-not-enable-password-authentication
[0mCheck: CKV_AZURE_92: "Ensure that Virtual Machines use managed disks"
	PASSED for resource: azurerm_linux_virtual_machine.web_linuxvm
	File: \c7-05-web-linuxvm-resource.tf:21-45
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-that-virtual-machines-use-managed-disks
[0mCheck: CKV_AZURE_118: "Ensure that Network Interfaces disable IP forwarding"
	PASSED for resource: azurerm_network_interface.bastion_host_linuxvm_nic
	File: \c8-02-bastion-host-linuvm.tf:11-23
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-network-interfaces-disable-ip-forwarding
[0mCheck: CKV_AZURE_1: "Ensure Azure Instance does not use basic authentication(Use SSH Key Instead)"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:26-48
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-1
[0mCheck: CKV_AZURE_178: "Ensure linux VM enables SSH with keys for secure communication"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:26-48
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-178
[0mCheck: CKV_AZURE_179: "Ensure VM agent is installed"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:26-48
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-179
[0mCheck: CKV_AZURE_149: "Ensure that Virtual machine does not enable password authentication"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:26-48
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-azure-virtual-machine-does-not-enable-password-authentication
[0mCheck: CKV_AZURE_92: "Ensure that Virtual Machines use managed disks"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:26-48
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-that-virtual-machines-use-managed-disks
[0mCheck: CKV_AZURE_119: "Ensure that Network Interfaces don't use public IPs"
	PASSED for resource: azurerm_network_interface.web_linuxvm_nic
	File: \c7-03-web-linuxvm-network-interface.tf:2-20
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-network-interfaces-dont-use-public-ips
[0mCheck: CKV2_AZURE_31: "Ensure VNET subnet is configured with a Network Security Group (NSG)"
	PASSED for resource: azurerm_subnet.websubnet
	File: \c6-03-web-subnet-and-nsg.tf:2-7
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azure-2-31
[0mCheck: CKV2_AZURE_31: "Ensure VNET subnet is configured with a Network Security Group (NSG)"
	PASSED for resource: azurerm_subnet.dbsubnet
	File: \c6-04-db-subnet-and-nsg.tf:2-7
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azure-2-31
[0mCheck: CKV2_AZURE_31: "Ensure VNET subnet is configured with a Network Security Group (NSG)"
	PASSED for resource: azurerm_subnet.bastionsubnet
	File: \c6-05-bastion-subnet-and-nsg.tf:2-7
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azure-2-31
[0mCheck: CKV2_AZURE_31: "Ensure VNET subnet is configured with a Network Security Group (NSG)"
	PASSED for resource: azurerm_subnet.appsubnet
	File: \c6-06-app-subnet-and-nsg.tf:2-7
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azure-2-31
[0mCheck: CKV2_AZURE_39: "Ensure Azure VM is not configured with public IP and serial console access"
	PASSED for resource: azurerm_network_interface.web_linuxvm_nic
	File: \c7-03-web-linuxvm-network-interface.tf:2-20
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azure-2-39
[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	FAILED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["100"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0m
		[37m34 | [33mresource "azurerm_network_security_rule" "web_nsg_rule_inbound" {
		[37m35 | [33m  for_each                    = local.web_inbound_ports_map
		[37m36 | [33m  name                        = "web-nsg-rule-inbound-${each.value}"
		[37m37 | [33m  priority                    = each.key
		[37m38 | [33m  direction                   = "Inbound"
		[37m39 | [33m  access                      = "Allow"
		[37m40 | [33m  protocol                    = "Tcp"
		[37m41 | [33m  source_port_range           = "*"
		[37m42 | [33m  destination_port_range      = each.value
		[37m43 | [33m  source_address_prefix       = "*"
		[37m44 | [33m  destination_address_prefix  = "*"
		[37m45 | [33m  resource_group_name         = azurerm_resource_group.rg.name
		[37m46 | [33m  network_security_group_name = azurerm_network_security_group.web_subnet_nsg.name
		[37m47 | [33m}
Check: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	FAILED for resource: azurerm_network_security_rule.web_nsg_rule_inbound["120"]
	File: \c6-03-web-subnet-and-nsg.tf:34-47
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0m
		[37m34 | [33mresource "azurerm_network_security_rule" "web_nsg_rule_inbound" {
		[37m35 | [33m  for_each                    = local.web_inbound_ports_map
		[37m36 | [33m  name                        = "web-nsg-rule-inbound-${each.value}"
		[37m37 | [33m  priority                    = each.key
		[37m38 | [33m  direction                   = "Inbound"
		[37m39 | [33m  access                      = "Allow"
		[37m40 | [33m  protocol                    = "Tcp"
		[37m41 | [33m  source_port_range           = "*"
		[37m42 | [33m  destination_port_range      = each.value
		[37m43 | [33m  source_address_prefix       = "*"
		[37m44 | [33m  destination_address_prefix  = "*"
		[37m45 | [33m  resource_group_name         = azurerm_resource_group.rg.name
		[37m46 | [33m  network_security_group_name = azurerm_network_security_group.web_subnet_nsg.name
		[37m47 | [33m}
Check: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	FAILED for resource: azurerm_network_security_rule.bastion_nsg_rule_inbound["100"]
	File: \c6-05-bastion-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0m
		[37m33 | [33mresource "azurerm_network_security_rule" "bastion_nsg_rule_inbound" {
		[37m34 | [33m  for_each                    = local.bastion_inbound_ports_map
		[37m35 | [33m  name                        = "bastion-nsg-rule-inbound-${each.value}"
		[37m36 | [33m  priority                    = each.key
		[37m37 | [33m  direction                   = "Inbound"
		[37m38 | [33m  access                      = "Allow"
		[37m39 | [33m  protocol                    = "Tcp"
		[37m40 | [33m  source_port_range           = "*"
		[37m41 | [33m  destination_port_range      = each.value
		[37m42 | [33m  source_address_prefix       = "*"
		[37m43 | [33m  destination_address_prefix  = "*"
		[37m44 | [33m  resource_group_name         = azurerm_resource_group.rg.name
		[37m45 | [33m  network_security_group_name = azurerm_network_security_group.bastion_subnet_nsg.name
		[37m46 | [33m}
Check: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	FAILED for resource: azurerm_network_security_rule.bastion_nsg_rule_inbound["110"]
	File: \c6-05-bastion-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2
[0m
		[37m33 | [33mresource "azurerm_network_security_rule" "bastion_nsg_rule_inbound" {
		[37m34 | [33m  for_each                    = local.bastion_inbound_ports_map
		[37m35 | [33m  name                        = "bastion-nsg-rule-inbound-${each.value}"
		[37m36 | [33m  priority                    = each.key
		[37m37 | [33m  direction                   = "Inbound"
		[37m38 | [33m  access                      = "Allow"
		[37m39 | [33m  protocol                    = "Tcp"
		[37m40 | [33m  source_port_range           = "*"
		[37m41 | [33m  destination_port_range      = each.value
		[37m42 | [33m  source_address_prefix       = "*"
		[37m43 | [33m  destination_address_prefix  = "*"
		[37m44 | [33m  resource_group_name         = azurerm_resource_group.rg.name
		[37m45 | [33m  network_security_group_name = azurerm_network_security_group.bastion_subnet_nsg.name
		[37m46 | [33m}
Check: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	FAILED for resource: azurerm_network_security_rule.app_nsg_rule_inbound["100"]
	File: \c6-06-app-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0m
		[37m33 | [33mresource "azurerm_network_security_rule" "app_nsg_rule_inbound" {
		[37m34 | [33m  for_each                    = local.app_inbound_ports_map
		[37m35 | [33m  name                        = "app-nsg-rule-inbound-${each.value}"
		[37m36 | [33m  priority                    = each.key
		[37m37 | [33m  direction                   = "Inbound"
		[37m38 | [33m  access                      = "Allow"
		[37m39 | [33m  protocol                    = "Tcp"
		[37m40 | [33m  source_port_range           = "*"
		[37m41 | [33m  destination_port_range      = each.value
		[37m42 | [33m  source_address_prefix       = "*"
		[37m43 | [33m  destination_address_prefix  = "*"
		[37m44 | [33m  resource_group_name         = azurerm_resource_group.rg.name
		[37m45 | [33m  network_security_group_name = azurerm_network_security_group.app_subnet_nsg.name
		[37m46 | [33m}
Check: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	FAILED for resource: azurerm_network_security_rule.app_nsg_rule_inbound["110"]
	File: \c6-06-app-subnet-and-nsg.tf:33-46
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0m
		[37m33 | [33mresource "azurerm_network_security_rule" "app_nsg_rule_inbound" {
		[37m34 | [33m  for_each                    = local.app_inbound_ports_map
		[37m35 | [33m  name                        = "app-nsg-rule-inbound-${each.value}"
		[37m36 | [33m  priority                    = each.key
		[37m37 | [33m  direction                   = "Inbound"
		[37m38 | [33m  access                      = "Allow"
		[37m39 | [33m  protocol                    = "Tcp"
		[37m40 | [33m  source_port_range           = "*"
		[37m41 | [33m  destination_port_range      = each.value
		[37m42 | [33m  source_address_prefix       = "*"
		[37m43 | [33m  destination_address_prefix  = "*"
		[37m44 | [33m  resource_group_name         = azurerm_resource_group.rg.name
		[37m45 | [33m  network_security_group_name = azurerm_network_security_group.app_subnet_nsg.name
		[37m46 | [33m}
Check: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	FAILED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["100"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted
[0m
		[37m29 | [33mresource "azurerm_network_security_rule" "web_vmnic_nsg_rule_inbound" {
		[37m30 | [33m  for_each                    = local.web_vmnic_inbound_ports_map
		[37m31 | [33m  name                        = "Rule-Port-${each.value}"
		[37m32 | [33m  priority                    = each.key
		[37m33 | [33m  direction                   = "Inbound"
		[37m34 | [33m  access                      = "Allow"
		[37m35 | [33m  protocol                    = "Tcp"
		[37m36 | [33m  source_port_range           = "*"
		[37m37 | [33m  destination_port_range      = each.value
		[37m38 | [33m  source_address_prefix       = "*"
		[37m39 | [33m  destination_address_prefix  = "*"
		[37m40 | [33m  resource_group_name         = azurerm_resource_group.rg.name
		[37m41 | [33m  network_security_group_name = azurerm_network_security_group.web_linuxvm_nsg.name
		[37m42 | [33m}
Check: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	FAILED for resource: azurerm_network_security_rule.web_vmnic_nsg_rule_inbound["120"]
	File: \c7-04-web-linuxvm-network-security-group.tf:29-42
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3
[0m
		[37m29 | [33mresource "azurerm_network_security_rule" "web_vmnic_nsg_rule_inbound" {
		[37m30 | [33m  for_each                    = local.web_vmnic_inbound_ports_map
		[37m31 | [33m  name                        = "Rule-Port-${each.value}"
		[37m32 | [33m  priority                    = each.key
		[37m33 | [33m  direction                   = "Inbound"
		[37m34 | [33m  access                      = "Allow"
		[37m35 | [33m  protocol                    = "Tcp"
		[37m36 | [33m  source_port_range           = "*"
		[37m37 | [33m  destination_port_range      = each.value
		[37m38 | [33m  source_address_prefix       = "*"
		[37m39 | [33m  destination_address_prefix  = "*"
		[37m40 | [33m  resource_group_name         = azurerm_resource_group.rg.name
		[37m41 | [33m  network_security_group_name = azurerm_network_security_group.web_linuxvm_nsg.name
		[37m42 | [33m}
Check: CKV_AZURE_50: "Ensure Virtual Machine Extensions are not Installed"
	FAILED for resource: azurerm_linux_virtual_machine.web_linuxvm
	File: \c7-05-web-linuxvm-resource.tf:21-45
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azr-general-14
[0m
		[37m21 | [33mresource "azurerm_linux_virtual_machine" "web_linuxvm" {
		[37m22 | [33m  name                  = "${local.resource_name_prefix}-web-linuxvm"
		[37m23 | [33m  computer_name         = "web-linux-vm" # Hostname of the VM (Optional)
		[37m24 | [33m  resource_group_name   = azurerm_resource_group.rg.name
		[37m25 | [33m  location              = azurerm_resource_group.rg.location
		[37m26 | [33m  size                  = "Standard_DS1_v2"
		[37m27 | [33m  admin_username        = "azureuser"
		[37m28 | [33m  network_interface_ids = [azurerm_network_interface.web_linuxvm_nic.id]
		[37m29 | [33m  admin_ssh_key {
		[37m30 | [33m    username   = "azureuser"
		[37m31 | [33m    public_key = file("${path.module}/ssh-keys/keys.pub")
		[37m32 | [33m  }
		[37m33 | [33m  os_disk {
		[37m34 | [33m    caching              = "ReadWrite"
		[37m35 | [33m    storage_account_type = "Standard_LRS"
		[37m36 | [33m  }
		[37m37 | [33m  source_image_reference {
		[37m38 | [33m    publisher = "RedHat"
		[37m39 | [33m    offer     = "RHEL"
		[37m40 | [33m    sku       = "83-gen2"
		[37m41 | [33m    version   = "latest"
		[37m42 | [33m  }
		[37m43 | [33m  custom_data = filebase64("${path.module}/app-scripts/redhat-webvm-script.sh")
		[37m44 |   #   custom_data = base64encode(local.webvm_custom_data)
		[37m45 | [33m}
Check: CKV_AZURE_50: "Ensure Virtual Machine Extensions are not Installed"
	FAILED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:26-48
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azr-general-14
[0m
		[37m26 | [33mresource "azurerm_linux_virtual_machine" "bastion_host_linuxvm" {
		[37m27 | [33m  name                  = "${local.resource_name_prefix}-bastion-linuxvm"
		[37m28 | [33m  computer_name         = "bastion-linuxvm"
		[37m29 | [33m  location              = azurerm_resource_group.rg.location
		[37m30 | [33m  resource_group_name   = azurerm_resource_group.rg.name
		[37m31 | [33m  size                  = "Standard_DS1_v2"
		[37m32 | [33m  admin_username        = "azureuser"
		[37m33 | [33m  network_interface_ids = [azurerm_network_interface.bastion_host_linuxvm_nic.id]
		[37m34 | [33m  admin_ssh_key {
		[37m35 | [33m    username   = "azureuser"
		[37m36 | [33m    public_key = file("${path.module}/ssh-keys/keys.pub")
		[37m37 | [33m  }
		[37m38 | [33m  os_disk {
		[37m39 | [33m    caching              = "ReadWrite"
		[37m40 | [33m    storage_account_type = "Standard_LRS"
		[37m41 | [33m  }
		[37m42 | [33m  source_image_reference {
		[37m43 | [33m    publisher = "RedHat"
		[37m44 | [33m    offer     = "RHEL"
		[37m45 | [33m    sku       = "83-gen2"
		[37m46 | [33m    version   = "latest"
		[37m47 | [33m  }
		[37m48 | [33m}
Check: CKV_AZURE_119: "Ensure that Network Interfaces don't use public IPs"
	FAILED for resource: azurerm_network_interface.bastion_host_linuxvm_nic
	File: \c8-02-bastion-host-linuvm.tf:11-23
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-network-interfaces-dont-use-public-ips
[0m
		[37m11 | [33mresource "azurerm_network_interface" "bastion_host_linuxvm_nic" {
		[37m12 | [33m  name                = "${local.resource_name_prefix}-bastion-host-linuxvm-nic"
		[37m13 | [33m  location            = azurerm_resource_group.rg.location
		[37m14 | [33m  resource_group_name = azurerm_resource_group.rg.name
		[37m15 | [33m
		[37m16 | [33m  ip_configuration {
		[37m17 | [33m    name                          = "bastion-host-ip-1"
		[37m18 | [33m    subnet_id                     = azurerm_subnet.bastionsubnet.id
		[37m19 | [33m    private_ip_address_allocation = "Dynamic"
		[37m20 | [33m    public_ip_address_id          = azurerm_public_ip.bastion_host_publicip.id
		[37m21 | [33m    primary                       = true
		[37m22 | [33m  }
		[37m23 | [33m}

Check: CKV2_AZURE_31: "Ensure VNET subnet is configured with a Network Security Group (NSG)"
	FAILED for resource: azurerm_subnet.bastion_service_subnet
	File: \c8-04-AzureBastionService.tf:3-8
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azure-2-31
[0m
		[37m3 | [33mresource "azurerm_subnet" "bastion_service_subnet" {
		[37m4 | [33m  name                 = var.bashtion_service_subnet_name
		[37m5 | [33m  resource_group_name  = azurerm_resource_group.rg.name
		[37m6 | [33m  virtual_network_name = azurerm_virtual_network.vnet.name
		[37m7 | [33m  address_prefixes     = var.bastion_service_address_prefix
		[37m8 | [33m}

