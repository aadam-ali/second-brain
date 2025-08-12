# Kubernetes Cluster Store

The cluster store persists the desired state of the cluster - it is the
only stateful component of the control plane

It is based on `etcd`. Generally, a replica is run on each control plane
node to ensure high availability - it is also possible to run a separate
`etcd` cluster to improve performance.

`etcd` prefers to run an odd number of replicas to avoid split-brain
conditions - when nodes lose communication with each other and cannot
ascertain if they have a majority. In the occurrence of a split-brain,
`etcd` goes into read only mode.

Since `etcd` is a distributed database, write consistency is crucial. To
ensure this when multiple sources are attempting to modify the same
value, `etcd` makes use of the RAFT consensus algorithm.

Related:
- [kubernetes-control-plane](kubernetes-control-plane.md)
