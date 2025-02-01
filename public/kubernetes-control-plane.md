# Kubernetes Control Plane

The control plane is a set of services that manages the behaviour of
Kubernetes:
- [[kubernetes-api-server]]
- [[kubernetes-cluster-store]]
- [[kubernetes-controllers]]
- [[kubernetes-scheduler]]
- [[kubernetes-cloud-controller-manager]]

Whilst a simple setup would contain a single control plane node, it is
recommended to have three or five spread across availability zones in
production to achieve high availability. Additionally, it is recommended
that user workloads do not run on control plane nodes in production.

Control plane nodes, unlike worker nodes must be running Linux.
