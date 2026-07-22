# ADR-0002

## Title

Repository Ownership Strategy

---

## Status

Accepted

---

## Date

2026-07-16

---

## Context

The Platform Engineering ecosystem will grow to include multiple repositories supporting infrastructure, automation, monitoring, security and Kubernetes workloads.

Without clearly defined ownership boundaries, repositories tend to become monolithic and tightly coupled.

---

## Decision

Each repository owns one capability only.

Repository responsibilities are:

| Repository | Responsibility |
|------------|---------------|
| platform-automation | Reusable GitHub Actions, Composite Actions and engineering automation |
| platform-infra | Infrastructure outside Kubernetes |
| platform-monitoring | Observability platform |
| platform-security | Platform security services |
| devops-kubernetes-lab1 | Kubernetes workloads deployed through GitOps |

Applications must never own platform infrastructure.

Platform repositories must remain application agnostic.

---

## Consequences

### Positive

- Clear ownership
- Independent deployment pipelines
- Independent release cadence
- Easier scaling
- Reduced coupling

### Negative

- Increased number of repositories
- Cross-repository coordination
- Shared engineering standards become mandatory

---

## Alternatives Considered

### Monolithic Repository

Rejected.

Reason:

Infrastructure, automation and applications would evolve together, reducing maintainability.

### Infrastructure Managed Together With Kubernetes Applications

Rejected.

Reason:

Infrastructure lifecycle differs from Kubernetes application lifecycle.

---

## References

02-repository-strategy.md

ADR-0001