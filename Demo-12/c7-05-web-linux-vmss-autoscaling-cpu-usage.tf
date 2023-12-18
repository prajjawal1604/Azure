# ---------------------------------------------------
# Auto Scaling for VMSS (Virtual Machine Scale Set)
# ---------------------------------------------------

resource "azurerm_monitor_autoscale_setting" "web_vmss_autoscale" {
  name                = "${local.resource_name_prefix}-web-vmss-autoscale-profiles"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  target_resource_id  = azurerm_linux_virtual_machine_scale_set.web_vmss.id

  # Notification
  notification {
    email {
      send_to_subscription_administrator    = true
      send_to_subscription_co_administrator = true
      custom_emails                         = ["panditprajjawal@gmail.com"]
    }
  }

  # Profile-1: Default Profile
  profile {
    name = "defaultProfile"
    capacity {
      default = 2
      minimum = 1
      maximum = 6
    }
    ## Rule-1: Percentage CPU
    # Scale-Out Rule
    rule {
      metric_trigger {
        metric_name        = "Percentage CPU"
        metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
        # metric_namespace   = "microsoft.compute/virtualmachinescalesets"
        time_grain       = "PT1M"
        statistic        = "Average"
        time_window      = "PT10M"
        time_aggregation = "Average"
        operator         = "GreaterThan"
        threshold        = 75
      }
      scale_action {
        direction = "Increase"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT5M"
      }
    }

    # Scale-In Rule
    rule {
      metric_trigger {
        metric_name        = "Percentage CPU"
        metric_resource_id = azurerm_linux_virtual_machine_scale_set.web_vmss.id
        # metric_namespace   = "microsoft.compute/virtualmachinescalesets"
        time_grain       = "PT1M"
        statistic        = "Average"
        time_window      = "PT5M"
        time_aggregation = "Average"
        operator         = "LessThan"
        threshold        = 35
      }
      scale_action {
        direction = "Decrease"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT5M"
      }
    }
  }
}