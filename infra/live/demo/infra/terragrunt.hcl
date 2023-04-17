terraform {
  source = "github.com/BlockTrekker/blockchain-terraform-deployment.git//infra?ref=master"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  GCP_PROJECT_ID                 = "blocktrekker"
  GKE_NODES_SA_NAME              = "baas-gke-nodes-baas0"
  GKE_CLUSTER_NAME               = "baas0"
  GKE_MASTER_REGION              = "us-central1"
  GKE_NODE_POOL_NAME             = "pool-0"
  GKE_NODE_LOCATIONS             = ["us-central1-c", "us-central1-b"]
  K8S_CONTEXT                    = "blocktrekker-baas0"
  GKE_MASTER_AUTHORIZED_NETWORKS = ["203.0.113.1/32", "198.51.100.0/24", ]
  IP_ADDRESS_REGION              = "us-central1"
  IP_ADDRESS_NAME_PREFIX         = "staging"
  ILB_IP_ADDRESS_NAME_PREFIX     = "staging-ilb"
  GKE_NODE_MACHINE_TYPE          = "n1-highmem-8"
  GKE_NODE_IMAGE_TYPE            = "UBUNTU"
  GKE_NETWORK_NAME = "baas0"
  GKE_SUBNETWORK_NAME = "baas0-0"
  GKE_SECONDARY_PODS_NAME = "baas0-gke-pods"
  GKE_SECONDARY_SERVICES_NAME = "baas0-gke-services"
  VALUES_PATH = "../../../../../../../../deploy/chains/staging"
  IP_LIST = {
    "goerli-1"  = "goerli"
    "goerli-2"  = "goerli"
    "prysm-1"  = "prysm"
    "prysm-2"  = "prysm"
    "nitro-1"  = "nitro"
    "nitro-2"  = "nitro"
  }
//  NODES_USERS = {
//    "kov-1" = "btc123"
//  }
//  NODES_PASSWORDS = {
//    "kov-1" = "btcpwd"
//  }
  ENV_NAME= "staging"
}
