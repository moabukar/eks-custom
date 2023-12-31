# Variables Configuration

variable "cluster-name" {
  default     = "eks-cluster"
  type        = string
  description = "The name of your EKS Cluster"
}

variable "aws-region" {
  default     = "us-west-2"
  type        = string
  description = "The AWS Region to deploy EKS"
}

variable "availability-zones" {
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
  type        = list
  description = "The AWS AZ to deploy EKS"
}

variable "k8s-version" {
  default     = "1.13"
  type        = string
  description = "Required K8s version"
}

variable "kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the node kubelet process"
}

variable "public-kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the public node kubelet process"

}

variable "vpc-subnet-cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "The VPC Subnet CIDR"
}

variable "private-subnet-cidr" {
  default     = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
  type        = list
  description = "Private Subnet CIDR"
}

variable "public-subnet-cidr" {
  default     = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]
  type        = list
  description = "Public Subnet CIDR"
}

variable "db-subnet-cidr" {
  default     = ["10.0.192.0/21", "10.0.200.0/21", "10.0.208.0/21"]
  type        = list
  description = "DB/Spare Subnet CIDR"
}

variable "eks-cw-logging" {
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  type        = list
  description = "Enable EKS CWL for EKS components"
}

variable "node-instance-type" {
  default     = "t2.small"
  type        = string
  description = "Worker Node EC2 instance type"
}

variable "root-block-size" {
  default     = "20"
  type        = string
  description = "Size of the root EBS block device"

}

variable "desired-capacity" {
  default     = 2
  type        = string
  description = "Autoscaling Desired node capacity"
}

variable "max-size" {
  default     = 2
  type        = string
  description = "Autoscaling maximum node capacity"
}

variable "min-size" {
  default     = 1
  type        = string
  description = "Autoscaling Minimum node capacity"
}

variable "public-min-size" {
  default     = 1
  type        = string
  description = "Public Node groups min ASG capacity"
}

variable "public-max-size" {
  default     = 1
  type        = string
  description = "Public Node groups max ASG capacity"
}

variable "public-desired-capacity" {
  default     = 1
  type        = string
  description = "Public Node groups desired ASG capacity"
}

variable "ec2-key-public-key" {
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCf80aTVPB2up3BYJYML0zG5H7UL78hIp+MRxIDLTYtYwomlZBWfGim8Xlnf7rcDfpvQ31gp4YN8fBAdqOE5hls8fDSHYyowjbIpCsKCSHfi/Zqb8OVfPxVQ3PAoyxGeI+zJiIGOvnu1EkD9+Pa8x9OX0iLeXb7o2S8ijMYnKVoD239QDH2VYFmFVigpe9efj9mfcU0OWSCRe+moRfpaGFHYT2yq88UIAX+h7yGU68FO88dyAhPBuM/wXr0dQyhoPfHG7+UaSVo5Ac9dPFD3wUdZqwO5z4dhkkralMxQ/n0wTaF7pNDojBY08fLROlZKemylAyapuzxtHR6EsDEBTcD "
  type        = string
  description = "AWS EC2 public key data"
}
