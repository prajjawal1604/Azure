# # ---------------------------------------------------
# # Auto Scaling for VMSS (Virtual Machine Scale Set)
# # ---------------------------------------------------


# #-----------------------------------------------------
# # Profile-1: Default Profile
# #-----------------------------------------------------
# resource "azurerm_monitor_autoscale_setting" "web_vmss_autoscale" {
#   name                = "${local.resource_name_prefix}-web-vmss-autoscale-profiles"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   target_resource_id  = azurerm_linux_virtual_machine_scale_set.web_vmss.id

#   # Notification
#   notification {
#     email {
#       send_to_subscription_administrator    = true
#       send_to_subscription_co_administrator = true
#       custom_emails                         = ["panditprajjawal@gmail.com"]
#     }
#   }

#   # Profile-1: Default Profile
#   profile {
#     name = "defaultProfile"
#     capacity {
#       default = 2
#       minimum = 2
#       maximum = 6
#     }
#     ## Rule-1: Percentage CPU
#     # Scale-Out Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Percentage CPU"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         # metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain       = "PT1M"
#         statistic        = "Average"
#         time_window      = "PT5M"
#         time_aggregation = "Average"
#         operator         = "GreaterThan"
#         threshold        = 75
#       }
#       scale_action {
#         direction = "Increase"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     # Scale-In Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Percentage CPU"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         # metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain       = "PT1M"
#         statistic        = "Average"
#         time_window      = "PT5M"
#         time_aggregation = "Average"
#         operator         = "LessThan"
#         threshold        = 25
#       }
#       scale_action {
#         direction = "Decrease"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     ## Rule-2: Available Memory Bytes
#     # Scale-Out Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Available Memory Bytes"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain         = "PT1M"
#         statistic          = "Average"
#         time_window        = "PT5M"
#         time_aggregation   = "Average"
#         operator           = "LessThan"
#         threshold          = 7107341824
#       }
#       scale_action {
#         direction = "Increase"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     # Scale-In Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Available Memory Bytes"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain         = "PT1M"
#         statistic          = "Average"
#         time_window        = "PT5M"
#         time_aggregation   = "Average"
#         operator           = "GreaterThan"
#         threshold          = 2147483648
#       }
#       scale_action {
#         direction = "Decrease"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     # ## Rule-3: LB SYN Count Metric Rule
#     # # Scale-Out Rule
#     # rule {
#     #   metric_trigger {
#     #     metric_name        = "SYNCount"
#     #     metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#     #     metric_namespace   = "microsoft.network/loadbalancers"
#     #     time_grain         = "PT1M"
#     #     statistic          = "Average"
#     #     time_window        = "PT5M"
#     #     time_aggregation   = "Average"
#     #     operator           = "GreaterThan"
#     #     threshold          = 10
#     #   }
#     #   scale_action {
#     #     direction = "Increase"
#     #     type      = "ChangeCount"
#     #     value     = "1"
#     #     cooldown  = "PT5M"
#     #   }
#     # }

#     # # Scale-In Rule
#     # rule {
#     #   metric_trigger {
#     #     metric_name        = "SYNCount"
#     #     metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#     #     metric_namespace   = "microsoft.network/loadbalancers"
#     #     time_grain         = "PT1M"
#     #     statistic          = "Average"
#     #     time_window        = "PT5M"
#     #     time_aggregation   = "Average"
#     #     operator           = "LessThan"
#     #     threshold          = 10
#     #   }
#     #   scale_action {
#     #     direction = "Decrease"
#     #     type      = "ChangeCount"
#     #     value     = "1"
#     #     cooldown  = "PT5M"
#     #   }
#     # }
#   }
#   ##End Of Profile-1: Default Profile

#   #-----------------------------------------------------
#   # Profile-2: Recurrence Profile
#   #-----------------------------------------------------


#   profile {
#     name = "profile-2-weekdays"
#     capacity {
#       default = 4
#       minimum = 4
#       maximum = 20
#     }
#     recurrence {
#       timezone = "India Standard Time"
#       days     = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
#       hours   = [0]
#       minutes  = [0]
#     }
#     ## Rule-1: Percentage CPU
#     # Scale-Out Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Percentage CPU"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         # metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain       = "PT1M"
#         statistic        = "Average"
#         time_window      = "PT5M"
#         time_aggregation = "Average"
#         operator         = "GreaterThan"
#         threshold        = 75
#       }
#       scale_action {
#         direction = "Increase"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     # Scale-In Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Percentage CPU"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         # metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain       = "PT1M"
#         statistic        = "Average"
#         time_window      = "PT5M"
#         time_aggregation = "Average"
#         operator         = "LessThan"
#         threshold        = 25
#       }
#       scale_action {
#         direction = "Decrease"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     ## Rule-2: Available Memory Bytes
#     # Scale-Out Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Available Memory Bytes"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain         = "PT1M"
#         statistic          = "Average"
#         time_window        = "PT5M"
#         time_aggregation   = "Average"
#         operator           = "LessThan"
#         threshold          = 7107341824
#       }
#       scale_action {
#         direction = "Increase"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     # Scale-In Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Available Memory Bytes"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain         = "PT1M"
#         statistic          = "Average"
#         time_window        = "PT5M"
#         time_aggregation   = "Average"
#         operator           = "GreaterThan"
#         threshold          = 2147483648
#       }
#       scale_action {
#         direction = "Decrease"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     # ## Rule-3: LB SYN Count Metric Rule
#     # # Scale-Out Rule
#     # rule {
#     #   metric_trigger {
#     #     metric_name        = "SYNCount"
#     #     metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#     #     metric_namespace   = "microsoft.network/loadbalancers"
#     #     time_grain         = "PT1M"
#     #     statistic          = "Average"
#     #     time_window        = "PT5M"
#     #     time_aggregation   = "Average"
#     #     operator           = "GreaterThan"
#     #     threshold          = 10
#     #   }
#     #   scale_action {
#     #     direction = "Increase"
#     #     type      = "ChangeCount"
#     #     value     = "1"
#     #     cooldown  = "PT5M"
#     #   }
#     # }

#     # # Scale-In Rule
#     # rule {
#     #   metric_trigger {
#     #     metric_name        = "SYNCount"
#     #     metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#     #     metric_namespace   = "microsoft.network/loadbalancers"
#     #     time_grain         = "PT1M"
#     #     statistic          = "Average"
#     #     time_window        = "PT5M"
#     #     time_aggregation   = "Average"
#     #     operator           = "LessThan"
#     #     threshold          = 10
#     #   }
#     #   scale_action {
#     #     direction = "Decrease"
#     #     type      = "ChangeCount"
#     #     value     = "1"
#     #     cooldown  = "PT5M"
#     #   }
#     # }
#   }
#   ##End Of Profile-2

#   profile {
#     name = "profile-3-weekends"
#     capacity {
#       default = 3
#       minimum = 3
#       maximum = 6
#     }
#     recurrence {
#       timezone = "India Standard Time"
#       days     = ["Saturday", "Sunday"]
#       hours    = [0]
#       minutes  = [0]
#     }
#     ## Rule-1: Percentage CPU
#     # Scale-Out Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Percentage CPU"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         # metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain       = "PT1M"
#         statistic        = "Average"
#         time_window      = "PT5M"
#         time_aggregation = "Average"
#         operator         = "GreaterThan"
#         threshold        = 75
#       }
#       scale_action {
#         direction = "Increase"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     # Scale-In Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Percentage CPU"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         # metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain       = "PT1M"
#         statistic        = "Average"
#         time_window      = "PT5M"
#         time_aggregation = "Average"
#         operator         = "LessThan"
#         threshold        = 25
#       }
#       scale_action {
#         direction = "Decrease"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     ## Rule-2: Available Memory Bytes
#     # Scale-Out Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Available Memory Bytes"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain         = "PT1M"
#         statistic          = "Average"
#         time_window        = "PT5M"
#         time_aggregation   = "Average"
#         operator           = "LessThan"
#         threshold          = 7107341824
#       }
#       scale_action {
#         direction = "Increase"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     # Scale-In Rule
#     rule {
#       metric_trigger {
#         metric_name        = "Available Memory Bytes"
#         metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#         metric_namespace   = "microsoft.compute/virtualmachinescalesets"
#         time_grain         = "PT1M"
#         statistic          = "Average"
#         time_window        = "PT5M"
#         time_aggregation   = "Average"
#         operator           = "GreaterThan"
#         threshold          = 2147483648
#       }
#       scale_action {
#         direction = "Decrease"
#         type      = "ChangeCount"
#         value     = "1"
#         cooldown  = "PT5M"
#       }
#     }

#     # ## Rule-3: LB SYN Count Metric Rule
#     # # Scale-Out Rule
#     # rule {
#     #   metric_trigger {
#     #     metric_name        = "SYNCount"
#     #     metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#     #     metric_namespace   = "microsoft.network/loadbalancers"
#     #     time_grain         = "PT1M"
#     #     statistic          = "Average"
#     #     time_window        = "PT5M"
#     #     time_aggregation   = "Average"
#     #     operator           = "GreaterThan"
#     #     threshold          = 10
#     #   }
#     #   scale_action {
#     #     direction = "Increase"
#     #     type      = "ChangeCount"
#     #     value     = "1"
#     #     cooldown  = "PT5M"
#     #   }
#     # }

#     # # Scale-In Rule
#     # rule {
#     #   metric_trigger {
#     #     metric_name        = "SYNCount"
#     #     metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
#     #     metric_namespace   = "microsoft.network/loadbalancers"
#     #     time_grain         = "PT1M"
#     #     statistic          = "Average"
#     #     time_window        = "PT5M"
#     #     time_aggregation   = "Average"
#     #     operator           = "LessThan"
#     #     threshold          = 10
#     #   }
#     #   scale_action {
#     #     direction = "Decrease"
#     #     type      = "ChangeCount"
#     #     value     = "1"
#     #     cooldown  = "PT5M"
#     #   }
#     # }
#   }
#   ##End Of Profile-3

# }