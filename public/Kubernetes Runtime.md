---
title: Kubernetes Runtime
---
Worker nodes have at least one runtime for running tasks. In most new
clusters this runtime is `containerd`, older clusters may be using
`Docker` - this is no longer supported.

The runtime is responsible for pulling in new container images and
managing the lifecycle of containers.
