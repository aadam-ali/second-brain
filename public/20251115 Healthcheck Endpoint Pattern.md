---
title: Healthcheck Endpoint Pattern
---
Healthcheck endpoints are often used to check if a service is running
and/or ready to receive traffic.

It's usually exposed at an endpoint `/health` or `/healthcheck`.

The main purpose is to check that the service responds to requests to
confirm its availability.

One could also include checks of dependencies such as databases, caches,
external APIs etc. This allows you to capture a fuller picture of the
service's overall health. When doing this, ensure the response data is
in a structured format and the HTTP status code accurately represents
the health of the service e.g. 200 when everything is healthy and 503
when any of the dependencies aren't.

Synthetic monitoring tools can then be used to query the endpoint at
regular intervals providing an SLI that can be used to confirm that
you're meeting SLOs and SLAs.

Related:
  - [20251111 Practical Monitoring - Mike Julian](../public/sources/books/20251111%20Practical%20Monitoring%20-%20Mike%20Julian.md)
  - <https://learn.microsoft.com/en-us/azure/architecture/patterns/health-endpoint-monitoring>
