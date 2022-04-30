# Patterns
Patterns are known, proven solutions.  Patterns help us communicate architecture and design to each other.

Drive strategy with patterns.

Patterns are used at different layers and perspectives; such as:

- software design patterns : Decorator, Factory, Visitor, Pub/Sub, ..
- user experience patterns


## Software Design Patterns
In software engineering, a software design pattern is a general, reusable solution to a commonly occurring problem within a given context in software design.  There are many great books on software design patterns.  Wikipedia's Software Design Patterns[^Pattern-3] is a good resource.

Famous design pattern books include:

- 1995 - Design Patterns: Elements of Reusable Object-Oriented Software[^Pattern-4] : Define a set of creational, behavioural and structural software patterns like builder, factory, facada, bridge, mediator, command and observer.
- 2003 - Fowler - Patterns of Enterprise Application Architecture[^Pattern-5] : Defines many categories of patterns including Domain, Data Source, Web Presentation, Distribution, Offline, and Session State Patterns.  Specific patterns include data gateway, model-view-controller, and client session state.


## User Interface Patterns
Many patterns exist for a successful user-experience (search, navigation, filters, comparisons, grids, ...)
- [Blueprints by CodePros - Patterns](http://tympanus.net/codrops/category/blueprints/) : The Blueprints are a collection of basic and minimal website concepts, components, plugins and layouts with minimal style for easy adaption and usage, or simply for inspiration.


- [Google Material UI](https://material.io/search.html?q=pattern) : An extensive library of UI patterns including [Search](https://material.io/archive/guidelines/patterns/search.html), Navigations, On-boarding and other common use-case patterns.


## Business Patterns

Caveman Pattern
: Reliving old problem experience with new projects even though the risk is extremely low.  (O'Reilly Fundamentals of SW Architecture)


Conway's Law
: Conway's Law asserts that organizations are constrained to produce application designs which are copies of their communication structures. This often leads to unintended friction points. The [*Inverse Conway Maneuver*](https://www.thoughtworks.com/radar/techniques/inverse-conway-maneuver
) recommends evolving your team and organizational structure to promote your desired architecture. Ideally your technology architecture will display [isomorphism](https://en.wikipedia.org/wiki/Isomorphism_(sociology)) with your business architecture.

  - Isomorphism : In sociology, an isomorphism is a similarity of the processes or structure of one organization to those of another, be it the result of imitation or independent development under similar constraints.  In our application development context, isomorphism implies, that different technology branches, division and sections develop their products under similar constraints.


## Cloud Design Patterns

1. [Microsoft Azure Cloud Design Patterns](https://docs.microsoft.com/en-us/azure/architecture/patterns/)
1. [AWS Prescriptive Guidance Patterns](- [AWS Prescriptive Guidance Patterns](https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/welcome.html)) : 2,000 pages of patterns for cloud, DevOps, communication, testing, governance, IoT, Security, Serverless, Spark, ETL, A/B Testing, Canary Testing, ...


## Microservices Patterns
Sam Newman's book, "Building Microservices, Defining Fine-Grained Systems"[^Pattern-1] defines many patterns, including patterns to migrate from monoliths to microservices.   These patterns include:

  - Strangle Fig Pattern: . You intercept calls to the existing system—in our case the existing monolithic application. If the call to that piece of functionality is implemented in our new microservice architecture, it is redirected to the microservice.
  - Saga Pattern
  - References legacy Enterprise Integration Patterns (EIP)[^Pattern-2]
  - Backend for Front-End (BFF) : similar to an aggregating gateway, but limited to a single user-interface.  For example have a BFF for an Android vs Applie client.

References for microservices patterns:

  - [Sam Newman Patterns](https://samnewman.io/patterns/)
  - [Martin Fowler](https://martinfowler.com/)



[^Pattern-1]: [Building Microservices - Sam Newman](www.worldcat.org/isbn/978-1492034025)

[^Pattern-2]: [Hohpe, Gregor, and Bobby Woolf. Enterprise Integration Patterns: Designing, Building, and Deploying Messaging Solutions. The Addison-Wesley Signature Series. Boston: Addison-Wesley, 2004.
](www.worldcat.org./isbn/978-0321200686)

[^Pattern-3]: [Wikipedia - Software Design Patterns](https://en.wikipedia.org/wiki/Software_design_pattern)

[^Pattern-4]: [Design Patterns: Elements of Reusable Object-Oriented Software](www.worldcat.org/isbn/0-201-63361-2)  : Gamma, Erich, ed. Design Patterns: Elements of Reusable Object-Oriented Software. Addison-Wesley Professional Computing Series. Reading, Mass: Addison-Wesley, 1995.

[^Pattern-5]: [Fowler - Patterns of Enterprise Application Architecture](www.worldcat.org/isbn/978-0-321-12742-6) : Fowler, Martin. Patterns of Enterprise Application Architecture. The Addison-Wesley Signature Series. Boston: Addison-Wesley, 2003.
