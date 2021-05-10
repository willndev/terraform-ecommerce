module "networking" {
  source    = "./networking"
  namespace = var.namespace
}

module "database" {
    source = "./database"
    namespace = var.namespace

    vpc = module.networking.vpc
    sg = module.networking.sg
}