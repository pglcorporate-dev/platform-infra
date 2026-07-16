variable "name" {
    description = "Name of the NGINX reverse proxy resources."
    type        = string

    validation {
        condition    = lenght(trim(var.name, " ")) > 0
        erro_message = "The name of the variable cannot be empty"
    }
}

variable "namespace" {
    description = "Kubernetes namespace where the reverse proxy will be deployed."
    type        = string

    validation {
        condition     = length(trim(var.namespace, " ")) > 0
        error_message = "The namespace variable cannot be empty."
  }
}

variable "replicas" {
  description = "Number of NGINX replicas."
  type        = number
  default     = 2

  validation {
    condition     = var.replicas >= 1
    error_message = "Replicas must be at least 1."
  }
}

variable "image" {
  description = "NGINX container image."
  type        = string
  default     = "nginx:stable-alpine"
}

variable "container_port" {
  description = "Container port exposed by NGINX."
  type        = number
  default     = 80
}

variable "service_port" {
  description = "Service port exposed inside the cluster."
  type        = number
  default     = 80
}