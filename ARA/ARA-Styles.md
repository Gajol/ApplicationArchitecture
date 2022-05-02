# Application Architecture Styles

## Big Ball of Mud - Anti-Pattern:

A "Ball of Mud" application is an application without structure, software making direct database calls, with no concerns for design.  In 1997, Brian Foote and Joseph Yoder, coined this the Big Ball of Mud:


  *A Big Ball of Mud is a haphazardly structured, sprawling, sloppy, duct-tape-and-baling-wire, spaghetti-code jungle. These systems show unmistakable signs of unregulated growth, and repeated, expedient repair. Information is shared promiscuously among distant elements of the system, often to the point where nearly all the important information becomes global or duplicated.*

The overall structure of the system may never have been well defined.

Our department has an abundance of *ball of mud* applications.

## Event Driven Architecture Patterns

Event Driven Architecture (EDA) is a architecture pattern based on the production, detection, consumption of, and reaction to events.  This architectural style is extremely useful in distributed systems for scalability and performance.  EDA architectures are not simple, nor are they easy to test.  EDA leverages the Publish/Subscribe Enterprise Integration Pattern[^EIP]

### Request-Response communication has the following characteristics:
- Low latency
- Typically synchronous
- Point-to-point, or, via broker/gateways
- “Bespoke API”
- e.g. HTTP, SOAP, gRPC

### Event streams are based on these concepts:
- Messaging / Pub Sub (sending data from A to B and C)
- Continuous data processing (filtering, transformations, aggregations, business logic)
- Often asynchrounous
- Event-driven, supporting patterns like Event Sourcing and CQRS
- General-purpose events
- e.g. Apache Kafka

### EDA Integration Patterns
- single partition / single consumer : simple pattern, provides orderin, but due to a single partition does not scale
- single partition / multiple consumer : fan-out, sharing events with multiple consumers
- at-least once delivery : product ensures message is committed by the delivery mechanism.  
- multi-partitions / multi-consuers : ordering is by partition, consumers must understand partition ordering

[^EIP: [Hohpe, Gregor, and Bobby Woolf. Enterprise Integration Patterns: Designing, Building, and Deploying Messaging Solutions. The Addison-Wesley Signature Series. Boston: Addison-Wesley, 2004.](www.worldcat.org./isbn/978-0321200686)
