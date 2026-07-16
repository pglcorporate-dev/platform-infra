# platform-infra
Central repository for platform core infrastructure. Includes networking, certificates, NGINX, and monitoring managed via Terraform, alongside Helm deployment values and automation scripts. 

Desire infra:

platform-infra
│
├── docs
├── diagrams
│
├── terraform
│   ├── nginx
│   ├── monitoring
│   ├── certificates
│   └── networking
│
├── helm-values
│
└── scripts

# Platform Infrastructure

Infrastructure as Code repository for reusable platform services.

## Purpose

This repository manages infrastructure that lives **outside Kubernetes**.

Examples:

- NGINX Reverse Proxy
- VM configuration
- Shared networking
- TLS certificates
- Platform services

Kubernetes workloads are managed separately through ArgoCD.

## Repository Structure

terraform/
    environments/
    modules/

.github/
    workflows/

docs/
    architecture/
    runbooks/

## Deployment Model

GitHub Actions

↓

Terraform

↓

Ubuntu VM

↓

Shared Platform Infrastructure