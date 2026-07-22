# ADR-0003

## Title

Reusable CI/CD Platform Strategy

---

## Status

Accepted

---

## Date

2026-07-16

---

## Context

Every Platform Engineering repository requires Continuous Integration and Continuous Delivery.

Duplicating GitHub Actions workflows across repositories increases maintenance effort and creates inconsistencies.

---

## Decision

CI/CD logic will be centralized within the `platform-automation` repository.

Individual repositories will consume reusable GitHub Actions workflows using `workflow_call`.

Repository responsibilities:

CI

- Format validation
- Terraform validation
- Security scanning
- Static analysis
- Terraform planning

CD

- Environment promotion
- Terraform Apply
- Deployment approvals

Infrastructure repositories will not duplicate workflow logic.

---

## Consequences

### Positive

- Single source of truth
- Consistent pipelines
- Easier maintenance
- Easier onboarding
- Shared security controls

### Negative

- platform-automation becomes a shared dependency
- Workflow changes affect multiple repositories

---

## Alternatives Considered

### Duplicate GitHub Actions in Every Repository

Rejected.

Reason:

High maintenance cost and inconsistent implementations.

### One Monolithic Pipeline

Rejected.

Reason:

Difficult to maintain and not reusable.

---

## References

04-ci-cd-strategy.md

ADR-0001

ADR-0002