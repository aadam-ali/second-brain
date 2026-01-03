---
title: Metric Types - Counter
---
A metric that is ever growing, it's value can only increase or be reset to
zero on restart or reaching of an upper bound. This is often referred to
as increasing monotonically.

Counters should not be used for values that can decrease.

Examples:
 * Car odometer
 * Number of requests

Related:
  * [20251111 Practical Monitoring - Mike Julian](../public/sources/books/20251111%20Practical%20Monitoring%20-%20Mike%20Julian.md)
  * <https://prometheus.io/docs/concepts/metric_types/#counter>
  * <https://en.wikipedia.org/wiki/Monotonic_function>
