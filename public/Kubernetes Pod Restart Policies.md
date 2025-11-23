---
title: Kubernetes Pod Restart Policies
---
Kubernetes cannot restart pods but can restart the containers running
within pods, this is done by the Kubelet. If a pod fails, a new one is
created to replace it and the failed one is deleted.

The restart behaviour is defined in `spec.restartPolicy` and can be one
of three values:

- `Always` - will always try to restart a container
- `Never` - will never try to restart a container
- `OnFailure` - will try to restart a container if it fails

The restart policy applies to all containers running in a pod except for
any init containers.

Related:
- [kubelet](kubelet.md)
