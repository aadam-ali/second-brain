# OSI Model Transport Layer (4)

When sending data, the transport layer is responsible for taking data
from the session layer (5) and breaking it up into `segments` before
sending it to the network layer (3). When receving data, the transport
layer is responsible for building the `segments` into a consumable
format for the session layer.

It's also responsible for flow control - optimising transmission speeds
based on connection quality - and error control - ensuring data is
received without losses or errors, requesting retransmission if
necessary.

Transport layer protocols include TCP (Transmission Control Protocol)
and UDP (User Datagram Protocol).

Related:
  * [OSI Model](OSI%20Model.md)
