module "alb" {
  source          = "git::https://chandralekha882:Opcqa123!@github.com/chandralek/modules.git//alb"
  VPC_ID          = data.terraform_remote_state.VPC.outputs.VPC_ID
  MGMT_VPC_ID     = data.terraform_remote_state.VPC.outputs.MGMT_VPC_ID
  PUBLIC_SUBNETS  = data.terraform_remote_state.VPC.outputs.PUBLIC_SUBNETS
  TAGS            = var.TAGS
}