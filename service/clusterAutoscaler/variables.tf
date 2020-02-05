variable "cluster_name" {
  description = "The name of the Kubernetes cluster."
  type = string
}
variable "worker_node_role_name" {
  description = "The name of the role assigned to the worker nodes."
  type = string
}

variable "autoscaling_max_size" {
  description = "The maximum autoscaling size."
  type        = number
  default     = 1
}
variable "autoscaling_min_size" {
  description = "The minimum autoscaling size."
  type        = number
  default     = 1
}
variable "autoscaling_desired_size" {
  description = "The desired autoscaling size."
  type        = number
  default     = 1
}
variable "autoscaling_scale_up_threshold" {
  description = "The autoscaling threshold for scaling up."
  type        = string
  default     = "70"
}
variable "autoscaling_scale_up_period" {
  description = "The duation the CPU utilization needs to exceed the threshold to scale up."
  type        = string
  default     = "120"
}
variable "autoscaling_scale_up_evaluation_periods" {
  description = "The evalution periods that need to exceed the threshold to scale up."
  type        = string
  default     = "2"
}
variable "autoscaling_scale_down_threshold" {
  description = "The autoscaling threshold for scaling down."
  type        = string
  default     = "30"
}
variable "autoscaling_scale_down_period" {
  description = "The duation the CPU utilization needs to fall below the threshold to scale down."
  type        = string
  default     = "120"
}
variable "autoscaling_scale_down_evaluation_periods" {
  description = "The evalution periods that need to fall below the threshold to scale down."
  type        = string
  default     = "2"
}
variable "scale_down_utilization_threshold" {
  description = "Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down."
  type        = string
  default     = "0.5"
}
variable "skip_nodes_with_system_pods" {
  description = "Cluster autoscaler will not terminate nodes running pods in the kube-system namespace."
  type        = bool
  default     = true
}
variable "scaling_cooldown" {
  description = "The amount of time, in seconds, after a scaling activity completes before another scaling activity can start."
  type        = number
  default     = 300
}
variable "create_autoscaler" {
  description = "Set this to false to deinstall the autoscaler."
  type = bool
  default = true
}

locals {
  autoscaler_sa_name = "cluster-autoscaler"
  autoscaler_version = "1.16.3"
}
