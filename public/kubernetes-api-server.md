# Kubernetes API Server

The API server is the front door to Kubernetes, all requests to view and
modify the state of the cluster go through it - even internal control
plane services communicate through it. When requests come into the API
server, it queries or updates the current state in the
[[kubernetes-cluster-store|cluster store]].

It's a RESTful API server that is exposed over [[https-overview|HTTPS]] and handles
authorisation and authentication of requests.