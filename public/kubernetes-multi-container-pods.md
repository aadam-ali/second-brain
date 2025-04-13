# Kubernetes Multi-Container Pods

Kubernetes supports two types of multi-container pods, init containers
and sidecar containers.

Init containers are defined in the Kubernetes API. They are guaranteed
to run only once, before the main application container starts. They are
used to prepare the environment e.g. ensuring upstream servers are
serving requests.

Sidecar containers run alongside the main application container,
providing functionality without having to extend the logic of the main
application. Common uses of sidecars are to forward logs, or intercept
traffic for the purpose of encryption and telemetry (usually implemented
by a service mesh).
