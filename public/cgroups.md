# Cgroups

Cgroups (control groups) are a feature of the Linux kernel that limit,
and isolate resource usage for a collection of processes.

Cgroups provide:
* **Resource limiting** - groups can be configured to not use more than
  a defined amount of memory, disk I/O, CPU, and maximum open files
* **Prioritisation** - providing a greater share of CPU utlisation or
  disk I/O throughput to groups which require it
* **Accounting** - measures a group's resource utilisation
* **Control** - freezing groups of processes, their checkpointing and
  restarting

Related:
  * [[namespaces]]
