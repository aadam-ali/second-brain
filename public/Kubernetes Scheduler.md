---
title: Kubernetes Scheduler
---
The scheduler monitors the API server for new workload tasks and assigns
them to healthy worker nodes. It selects appropriate nodes by running
checks, filtering, and a ranking algorithm.

The scheduler checks for taints, affinity and anti-affinity rules, and
resource availability (network, CPU, memory). It then ranks the
remaining nodes based on whether they already have the necessary
image(s), available CPU and memory resource, and, the number of tasks
they're currently running - calculating a score and assigning the
workloads to the nodes with the most points.

If there are no valid nodes available, workloads are marked as `pending` -
triggering the provisioning of a new valid node if node autoscaling has
been configured.

Related:
- [Kubernetes API Server](Kubernetes%20API%20Server.md)
