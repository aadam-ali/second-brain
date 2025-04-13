# Kubernetes Assigning Pods to Nodes

There are multiple ways that Kubernetes can assign pods to nodes.

`nodeSelectors` accept a list of labels, the scheduler will then assign
pods to nodes that have all the labels.

Affinity and anti-affinity rules are similar to `nodeSelectors` but
offer more control over the selection logic, and, allow hard (absolute)
and soft rules (preferred). Additionally, they allow pods to be
constrained based on labels on other pods.

Topology spread constraints are used to spread pods across
failure-domains (e.g. availability zones) - custom domains can be
defined.

Resource requests and limits let the cluster know how much resource a
pod needs, the scheduler uses that information to assign the pod to a
node with enough resource available.

Related:
- [[kubernetes-scheduler]]
