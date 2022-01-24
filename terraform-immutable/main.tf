module "cart" {
  source                 = "git::https://github.com/rayuduroyal/roboshop.git/terraform-immutable//app-module"
  INSTANCE_TYPE          = var.INSTANCE_TYPE
  ENV                    = var.ENV
  SPOT_INSTANCE_COUNT    = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT      = var.OD_INSTANCE_COUNT
  COMPONENT              = "user"
  PORT                   = 8080
  IS_PRIVATE_IB          = true
  LB_RULE_PRIORITY       = 100
  APP_VERSION            = var.APP_VERSION
  NEXUS_USER             = var.NEXUS_USER
  NEXUS_PASS             = var.NEXUS_PASS
  min_size               = 1
  min_size               = 2
  desired_capacity       = 1
}


