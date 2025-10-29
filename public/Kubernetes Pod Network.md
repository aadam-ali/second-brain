# Kubernetes Pod Network

All clusters run a pod network which all pods are automatically
connected to. Generally, this would be flat Layer 2 overlay network that
covers every node, allowing every pod to communicate with each other
regardless of which node it's running on.

Pod networks are configured by third party plugins that are installed on
the cluster when it is built. They set up the network using the
Container Network Interface (CNI).

By default, most third party plugins implement a very open pod network
without much security to allow easy of use, Network Policies and other
techniques should be used to ensure network security.

Related:
- [Kubernetes Network Policies](Kubernetes%20Network%20Policies.md)
