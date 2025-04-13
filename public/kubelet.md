# Kubelet

As the primary Kubernetes agent, the kubelet is responsible for managing
all communication with the cluster.

The tasks it carries out are: watching the API Server for new tasks,
instructing the relevant runtime to execute tasks, and reporting the
status of tasks to the API server.

Related:
- [[kubernetes-api-server]]
