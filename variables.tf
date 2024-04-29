variable "region" {
  description = "The region where resources should be created"
  type        = string
  default     = "asia-southeast1"
}

variable "project_id" {
  description = "The project ID"
  type        = string
  default     = "terraform-test-421711"
}

variable "notebook_name" {
    description = "The name of the notebook instance"
    type        = string
    default     = "notebooks-instance-basic"
}

variable machine_type {
    description = "The machine type of the notebook instance"
    type        = string
    default     = "e2-medium"
}