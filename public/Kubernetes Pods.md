---
title: Kubernetes Pods
---
Pods are Kuberentes' minimum unit of scheduling, they provide an
abstraction layer over the workloads they run: containers, WASM apps,
virtual machines (requires extra config), serverless functions (requires
extra config), and more.

They enable resource sharing for one or more containers via a shared
execution environment (network stack, volumes, memory, hostname, process
tree, and more)

Starting pods is an atomic operation, meaning a pod is only marked as
ready once all its containers are running. If a pod can't be scheduled,
it is marked as pending.

When pods die, they are replaced with a new one that appears the same
but has a new ID and IP address.

Pods are usually deployed by higher level controllers such as
Deployments, they provide high availability, self healing, scalability,
rolling updates and more. Static pods do not share these benefits since
they're only managed by the Kubelet of the node they run on.

Related:
- [Kubernetes Deployments](Kubernetes%20Deployments.md)
- [kubelet](kubelet.md)
