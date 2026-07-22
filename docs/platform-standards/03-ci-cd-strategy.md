# CI/CD Strategy

## CI Responsibilities

Continuous Integration validates code quality.

Examples:

- Terraform Format
- Terraform Validate
- Terraform Plan
- Security Scanning
- Branch Validation
- Pull Request Validation

CI never deploys infrastructure.

---

## CD Responsibilities

Continuous Delivery deploys approved changes.

Deployments are environment-aware.

Development

↓

Certification

↓

Production

Deployments require approvals according to environment policies.

---

## Reusable Workflows

Reusable workflows are owned by platform-automation.

Repositories consume those workflows.

Business repositories do not duplicate CI logic.