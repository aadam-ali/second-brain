# Kubernetes Controllers

Kubernetes leverages controllers to implement the majority of cluster
intelligence. They run on the control plane as background watch loops,
reconciling the current state with the desired state.

Controllers are spawned and managed by the controller manager.

Well known examples include: Deployment controller, StatefulSet
controller, and ReplicaSet controller.
