
       _               _              
   ___| |__   ___  ___| | _______   __
  / __| '_ \ / _ \/ __| |/ / _ \ \ / /
 | (__| | | |  __/ (__|   < (_) \ V / 
  \___|_| |_|\___|\___|_|\_\___/ \_/  
                                      
By Prisma Cloud | version: 3.1.67 

terraform scan results:

Passed checks: 80, Failed checks: 24, Skipped checks: 0

Check: CKV_AZURE_36: "Ensure 'Trusted Microsoft Services' is enabled for Storage Account access"
	PASSED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/enable-trusted-microsoft-services-for-storage-account-access


[0mCheck: CKV_AZURE_3: "Ensure that 'enable_https_traffic_only' is enabled"
	PASSED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-3


[0mCheck: CKV_AZURE_34: "Ensure that 'Public access level' is set to Private for blob containers"
	PASSED for resource: azurerm_storage_container.httpd_files_container
	File: \c10-02-storage-account.tf:17-21
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/set-public-access-level-to-private-for-blob-containers


[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.app_vmss_nsg
	File: \c12-02-app-linux-vmss-nsg-inline-basic.tf:4-24
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted


[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.app_vmss_nsg
	File: \c12-02-app-linux-vmss-nsg-inline-basic.tf:4-24
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2


[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.app_vmss_nsg
	File: \c12-02-app-linux-vmss-nsg-inline-basic.tf:4-24
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3


[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_group.app_vmss_nsg
	File: \c12-02-app-linux-vmss-nsg-inline-basic.tf:4-24
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet


[0mCheck: CKV_AZURE_178: "Ensure linux VM enables SSH with keys for secure communication"
	PASSED for resource: azurerm_linux_virtual_machine_scale_set.app_vmss
	File: \c12-03-app-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-178


[0mCheck: CKV_AZURE_179: "Ensure VM agent is installed"
	PASSED for resource: azurerm_linux_virtual_machine_scale_set.app_vmss
	File: \c12-03-app-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-179


[0mCheck: CKV_AZURE_149: "Ensure that Virtual machine does not enable password authentication"
	PASSED for resource: azurerm_linux_virtual_machine_scale_set.app_vmss
	File: \c12-03-app-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-azure-virtual-machine-does-not-enable-password-authentication


[0mCheck: CKV_AZURE_183: "Ensure that VNET uses local DNS addresses"
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


[0mCheck: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.web_vmss_nsg
	File: \c7-02-web-linux-vmss-nsg-inline-basic.tf:5-25
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-azure-http-port-80-access-from-the-internet-is-restricted


[0mCheck: CKV_AZURE_9: "Ensure that RDP access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.web_vmss_nsg
	File: \c7-02-web-linux-vmss-nsg-inline-basic.tf:5-25
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-2


[0mCheck: CKV_AZURE_10: "Ensure that SSH access is restricted from the internet"
	PASSED for resource: azurerm_network_security_group.web_vmss_nsg
	File: \c7-02-web-linux-vmss-nsg-inline-basic.tf:5-25
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-3


[0mCheck: CKV_AZURE_77: "Ensure that UDP Services are restricted from the Internet "
	PASSED for resource: azurerm_network_security_group.web_vmss_nsg
	File: \c7-02-web-linux-vmss-nsg-inline-basic.tf:5-25
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-udp-services-are-restricted-from-the-internet


[0mCheck: CKV_AZURE_178: "Ensure linux VM enables SSH with keys for secure communication"
	PASSED for resource: azurerm_linux_virtual_machine_scale_set.web_vmss
	File: \c7-03-web-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-178


[0mCheck: CKV_AZURE_179: "Ensure VM agent is installed"
	PASSED for resource: azurerm_linux_virtual_machine_scale_set.web_vmss
	File: \c7-03-web-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-179


[0mCheck: CKV_AZURE_149: "Ensure that Virtual machine does not enable password authentication"
	PASSED for resource: azurerm_linux_virtual_machine_scale_set.web_vmss
	File: \c7-03-web-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-azure-virtual-machine-does-not-enable-password-authentication


[0mCheck: CKV_AZURE_118: "Ensure that Network Interfaces disable IP forwarding"
	PASSED for resource: azurerm_network_interface.bastion_host_linuxvm_nic
	File: \c8-02-bastion-host-linuvm.tf:27-39
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-network-interfaces-disable-ip-forwarding


[0mCheck: CKV_AZURE_1: "Ensure Azure Instance does not use basic authentication(Use SSH Key Instead)"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:42-66
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/bc-azr-networking-1


[0mCheck: CKV_AZURE_178: "Ensure linux VM enables SSH with keys for secure communication"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:42-66
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-178


[0mCheck: CKV_AZURE_179: "Ensure VM agent is installed"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:42-66
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-179


[0mCheck: CKV_AZURE_149: "Ensure that Virtual machine does not enable password authentication"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:42-66
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-azure-virtual-machine-does-not-enable-password-authentication


[0mCheck: CKV_AZURE_92: "Ensure that Virtual Machines use managed disks"
	PASSED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:42-66
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-that-virtual-machines-use-managed-disks


[0mCheck: CKV2_AZURE_31: "Ensure VNET subnet is configured with a Network Security Group (NSG)"
	PASSED for resource: azurerm_subnet.websubnet
	File: \c6-03-web-subnet-and-nsg.tf:2-7
Check: CKV2_AZURE_31: "Ensure VNET subnet is configured with a Network Security Group (NSG)"
	PASSED for resource: azurerm_subnet.dbsubnet
	File: \c6-04-db-subnet-and-nsg.tf:2-7
Check: CKV2_AZURE_31: "Ensure VNET subnet is configured with a Network Security Group (NSG)"
	PASSED for resource: azurerm_subnet.bastionsubnet
	File: \c6-05-bastion-subnet-and-nsg.tf:2-7
Check: CKV2_AZURE_31: "Ensure VNET subnet is configured with a Network Security Group (NSG)"
	PASSED for resource: azurerm_subnet.appsubnet
	File: \c6-06-app-subnet-and-nsg.tf:2-7
Check: CKV2_AZURE_8: "Ensure the storage container storing the activity logs is not publicly accessible"
	PASSED for resource: azurerm_storage_container.httpd_files_container
	File: \c10-02-storage-account.tf:17-21
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-logging-policies/ensure-the-storage-container-storing-the-activity-logs-is-not-publicly-accessible


[0mCheck: CKV_AZURE_59: "Ensure that Storage accounts disallow public access"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-storage-accounts-disallow-public-access
[0m
		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV_AZURE_33: "Ensure Storage logging is enabled for Queue service for read, write and delete requests"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-logging-policies/enable-requests-on-storage-logging-for-queue-service
[0m
		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV_AZURE_44: "Ensure Storage Account is using the latest version of TLS encryption"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-storage-policies/bc-azr-storage-2
[0m
		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV_AZURE_206: "Ensure that Storage Accounts use replication"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/azr-general-206
[0m
		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV_AZURE_190: "Ensure that Storage blobs restrict public access"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/azr-networking-190
[0m
		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV_AZURE_49: "Ensure Azure linux scale set does not use basic authentication(Use SSH Key Instead)"
	FAILED for resource: azurerm_linux_virtual_machine_scale_set.app_vmss
	File: \c12-03-app-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azr-general-13
[0m
		[37m21 | [33mresource "azurerm_linux_virtual_machine_scale_set" "app_vmss" {
		[37m22 | [33m  name                 = "${local.resource_name_prefix}-app-vmss"
		[37m23 | [33m  computer_name_prefix = "app-vmss-app1"
		[37m24 | [33m  location             = azurerm_resource_group.rg.location
		[37m25 | [33m  resource_group_name  = azurerm_resource_group.rg.name
		[37m26 | [33m  sku                  = "Standard_DS1_v2"
		[37m27 | [33m  instances            = 1
		[37m28 | [33m  admin_username       = "azureuser"
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
		[37m43 | [33m
		[37m44 | [33m
		[37m45 | [33m  upgrade_mode = "Automatic"
		[37m46 | [33m
		[37m47 | [33m  network_interface {
		[37m48 | [33m    name                      = "app-vmss-nic"
		[37m49 | [33m    primary                   = true
		[37m50 | [33m    network_security_group_id = azurerm_network_security_group.app_vmss_nsg.id
		[37m51 | [33m    ip_configuration {
		[37m52 | [33m      name                                   = "internal"
		[37m53 | [33m      primary                                = true
		[37m54 | [33m      subnet_id                              = azurerm_subnet.appsubnet.id
		[37m55 | [33m      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.app_lb_backend_address_pool.id]
		[37m56 | [33m    }
		[37m57 | [33m  }
		[37m58 | [33m
		[37m59 |   #   custom_data = filebase64("${path.module}/app-scripts/redhat-webvm-script.sh")
		[37m60 | [33m  custom_data = base64encode(local.appvm_custom_data)
		[37m61 | [33m
		[37m62 | [33m}
Check: CKV_AZURE_97: "Ensure that Virtual machine scale sets have encryption at host enabled"
	FAILED for resource: azurerm_linux_virtual_machine_scale_set.app_vmss
	File: \c12-03-app-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-that-virtual-machine-scale-sets-have-encryption-at-host-enabled
[0m
		[37m21 | [33mresource "azurerm_linux_virtual_machine_scale_set" "app_vmss" {
		[37m22 | [33m  name                 = "${local.resource_name_prefix}-app-vmss"
		[37m23 | [33m  computer_name_prefix = "app-vmss-app1"
		[37m24 | [33m  location             = azurerm_resource_group.rg.location
		[37m25 | [33m  resource_group_name  = azurerm_resource_group.rg.name
		[37m26 | [33m  sku                  = "Standard_DS1_v2"
		[37m27 | [33m  instances            = 1
		[37m28 | [33m  admin_username       = "azureuser"
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
		[37m43 | [33m
		[37m44 | [33m
		[37m45 | [33m  upgrade_mode = "Automatic"
		[37m46 | [33m
		[37m47 | [33m  network_interface {
		[37m48 | [33m    name                      = "app-vmss-nic"
		[37m49 | [33m    primary                   = true
		[37m50 | [33m    network_security_group_id = azurerm_network_security_group.app_vmss_nsg.id
		[37m51 | [33m    ip_configuration {
		[37m52 | [33m      name                                   = "internal"
		[37m53 | [33m      primary                                = true
		[37m54 | [33m      subnet_id                              = azurerm_subnet.appsubnet.id
		[37m55 | [33m      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.app_lb_backend_address_pool.id]
		[37m56 | [33m    }
		[37m57 | [33m  }
		[37m58 | [33m
		[37m59 |   #   custom_data = filebase64("${path.module}/app-scripts/redhat-webvm-script.sh")
		[37m60 | [33m  custom_data = base64encode(local.appvm_custom_data)
		[37m61 | [33m
		[37m62 | [33m}
Check: CKV_AZURE_160: "Ensure that HTTP (port 80) access is restricted from the internet"
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
Check: CKV_AZURE_49: "Ensure Azure linux scale set does not use basic authentication(Use SSH Key Instead)"
	FAILED for resource: azurerm_linux_virtual_machine_scale_set.web_vmss
	File: \c7-03-web-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azr-general-13
[0m
		[37m21 | [33mresource "azurerm_linux_virtual_machine_scale_set" "web_vmss" {
		[37m22 | [33m  name                 = "${local.resource_name_prefix}-web-vmss"
		[37m23 | [33m  computer_name_prefix = "vmss-app1"
		[37m24 | [33m  location             = azurerm_resource_group.rg.location
		[37m25 | [33m  resource_group_name  = azurerm_resource_group.rg.name
		[37m26 | [33m  sku                  = "Standard_DS1_v2"
		[37m27 | [33m  instances            = 1
		[37m28 | [33m  admin_username       = "azureuser"
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
		[37m43 | [33m
		[37m44 | [33m
		[37m45 | [33m  upgrade_mode = "Automatic"
		[37m46 | [33m
		[37m47 | [33m  network_interface {
		[37m48 | [33m    name                      = "web-vmss-nic"
		[37m49 | [33m    primary                   = true
		[37m50 | [33m    network_security_group_id = azurerm_network_security_group.web_vmss_nsg.id
		[37m51 | [33m    ip_configuration {
		[37m52 | [33m      name                                   = "internal"
		[37m53 | [33m      primary                                = true
		[37m54 | [33m      subnet_id                              = azurerm_subnet.websubnet.id
		[37m55 | [33m      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.web_lb_backend_address_pool.id]
		[37m56 | [33m    }
		[37m57 | [33m  }
		[37m58 | [33m
		[37m59 | [33m  custom_data = filebase64("${path.module}/app-scripts/redhat-webvm-script.sh")
		[37m60 |   # custom_data = base64encode(local.webvm_custom_data)
		[37m61 | [33m
		[37m62 | [33m}
Check: CKV_AZURE_97: "Ensure that Virtual machine scale sets have encryption at host enabled"
	FAILED for resource: azurerm_linux_virtual_machine_scale_set.web_vmss
	File: \c7-03-web-linux-vmss-resource.tf:21-62
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-that-virtual-machine-scale-sets-have-encryption-at-host-enabled
[0m
		[37m21 | [33mresource "azurerm_linux_virtual_machine_scale_set" "web_vmss" {
		[37m22 | [33m  name                 = "${local.resource_name_prefix}-web-vmss"
		[37m23 | [33m  computer_name_prefix = "vmss-app1"
		[37m24 | [33m  location             = azurerm_resource_group.rg.location
		[37m25 | [33m  resource_group_name  = azurerm_resource_group.rg.name
		[37m26 | [33m  sku                  = "Standard_DS1_v2"
		[37m27 | [33m  instances            = 1
		[37m28 | [33m  admin_username       = "azureuser"
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
		[37m43 | [33m
		[37m44 | [33m
		[37m45 | [33m  upgrade_mode = "Automatic"
		[37m46 | [33m
		[37m47 | [33m  network_interface {
		[37m48 | [33m    name                      = "web-vmss-nic"
		[37m49 | [33m    primary                   = true
		[37m50 | [33m    network_security_group_id = azurerm_network_security_group.web_vmss_nsg.id
		[37m51 | [33m    ip_configuration {
		[37m52 | [33m      name                                   = "internal"
		[37m53 | [33m      primary                                = true
		[37m54 | [33m      subnet_id                              = azurerm_subnet.websubnet.id
		[37m55 | [33m      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.web_lb_backend_address_pool.id]
		[37m56 | [33m    }
		[37m57 | [33m  }
		[37m58 | [33m
		[37m59 | [33m  custom_data = filebase64("${path.module}/app-scripts/redhat-webvm-script.sh")
		[37m60 |   # custom_data = base64encode(local.webvm_custom_data)
		[37m61 | [33m
		[37m62 | [33m}
Check: CKV_AZURE_50: "Ensure Virtual Machine Extensions are not Installed"
	FAILED for resource: azurerm_linux_virtual_machine.bastion_host_linuxvm
	File: \c8-02-bastion-host-linuvm.tf:42-66
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/bc-azr-general-14
[0m
		[37m42 | [33mresource "azurerm_linux_virtual_machine" "bastion_host_linuxvm" {
		[37m43 | [33m  name                  = "${local.resource_name_prefix}-bastion-linuxvm"
		[37m44 | [33m  computer_name         = "bastion-linuxvm"
		[37m45 | [33m  location              = azurerm_resource_group.rg.location
		[37m46 | [33m  resource_group_name   = azurerm_resource_group.rg.name
		[37m47 | [33m  size                  = "Standard_DS1_v2"
		[37m48 | [33m  admin_username        = "azureuser"
		[37m49 | [33m  network_interface_ids = [azurerm_network_interface.bastion_host_linuxvm_nic.id]
		[37m50 | [33m  admin_ssh_key {
		[37m51 | [33m    username   = "azureuser"
		[37m52 | [33m    public_key = file("${path.module}/ssh-keys/keys.pub")
		[37m53 | [33m  }
		[37m54 | [33m  os_disk {
		[37m55 | [33m    caching              = "ReadWrite"
		[37m56 | [33m    storage_account_type = "Standard_LRS"
		[37m57 | [33m  }
		[37m58 | [33m  source_image_reference {
		[37m59 | [33m    publisher = "RedHat"
		[37m60 | [33m    offer     = "RHEL"
		[37m61 | [33m    sku       = "83-gen2"
		[37m62 | [33m    version   = "latest"
		[37m63 | [33m  }
		[37m64 | [33m
		[37m65 | [33m  custom_data = base64encode(local.bastion_host_custom_data)
		[37m66 | [33m}
Check: CKV_AZURE_119: "Ensure that Network Interfaces don't use public IPs"
	FAILED for resource: azurerm_network_interface.bastion_host_linuxvm_nic
	File: \c8-02-bastion-host-linuvm.tf:27-39
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-networking-policies/ensure-that-network-interfaces-dont-use-public-ips
[0m
		[37m27 | [33mresource "azurerm_network_interface" "bastion_host_linuxvm_nic" {
		[37m28 | [33m  name                = "${local.resource_name_prefix}-bastion-host-linuxvm-nic"
		[37m29 | [33m  location            = azurerm_resource_group.rg.location
		[37m30 | [33m  resource_group_name = azurerm_resource_group.rg.name
		[37m31 | [33m
		[37m32 | [33m  ip_configuration {
		[37m33 | [33m    name                          = "bastion-host-ip-1"
		[37m34 | [33m    subnet_id                     = azurerm_subnet.bastionsubnet.id
		[37m35 | [33m    private_ip_address_allocation = "Dynamic"
		[37m36 | [33m    public_ip_address_id          = azurerm_public_ip.bastion_host_publicip.id
		[37m37 | [33m    primary                       = true
		[37m38 | [33m  }
		[37m39 | [33m}

Check: CKV2_AZURE_40: "Ensure storage account is not configured with Shared Key authorization"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14

		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV2_AZURE_47: "Ensure storage account is configured without blob anonymous access"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14

		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV2_AZURE_33: "Ensure storage account is configured with private endpoint"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14

		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV2_AZURE_41: "Ensure storage account is configured with SAS expiration policy"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14

		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV2_AZURE_38: "Ensure soft-delete is enabled on Azure storage account"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14

		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV2_AZURE_1: "Ensure storage for critical data are encrypted with Customer Managed Key"
	FAILED for resource: azurerm_storage_account.storage_account
	File: \c10-02-storage-account.tf:2-14
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-general-policies/ensure-storage-for-critical-data-are-encrypted-with-customer-managed-key
[0m
		[37m2  | [33mresource "azurerm_storage_account" "storage_account" {
		[37m3  | [33m  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
		[37m4  | [33m  resource_group_name      = azurerm_resource_group.rg.name
		[37m5  | [33m  location                 = azurerm_resource_group.rg.location
		[37m6  | [33m  account_tier             = var.storage_account_tier
		[37m7  | [33m  account_replication_type = var.storage_account_replication_type
		[37m8  | [33m  account_kind             = var.storage_account_kind
		[37m9  | [33m  static_website {
		[37m10 | [33m    index_document     = var.static_website_index_document
		[37m11 | [33m    error_404_document = var.static_website_error_404_document
		[37m12 | [33m  }
		[37m13 | [33m
		[37m14 | [33m}

Check: CKV2_AZURE_21: "Ensure Storage logging is enabled for Blob service for read requests"
	FAILED for resource: azurerm_storage_container.httpd_files_container
	File: \c10-02-storage-account.tf:17-21
	Guide: [1mhttps://docs.prismacloud.io/en/enterprise-edition/policy-reference/azure-policies/azure-logging-policies/ensure-storage-logging-is-enabled-for-blob-service-for-read-requests
[0m
		[37m17 | [33mresource "azurerm_storage_container" "httpd_files_container" {
		[37m18 | [33m  name                  = "httpd-files-container"
		[37m19 | [33m  storage_account_name  = azurerm_storage_account.storage_account.name
		[37m20 | [33m  container_access_type = "private"
		[37m21 | [33m}

