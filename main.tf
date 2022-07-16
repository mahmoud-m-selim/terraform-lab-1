module "network" {
    source = "./network"
    cidr           = var.cidr
    cidr_public_1  = var.cidr_public_1
    cidr_private_1 = var.cidr_private_1
    cidr_public_2  = var.cidr_public_2
    cidr_private_2 = var.cidr_private_2
    region         = var.region
}