

# Application Architecture Guidance


## Goal:  Composable Enterprise
1. Integrations / Messaging
Methodology: DDD / Bounded Context
!!! : what was the API guideline - do one thing - either a command or a query but not both... - e.g., an API should get() info but or set() info but not both...???where was this.


## Goal:  Reduce Technical Debt

1. Rationalization.
  - [... - Feature Selection - Start with No](https://basecamp.com/gettingreal/05.3-start-with-no)
    - reduce features, focus on the priorities
  - [Steve Jobs - Focus on Saying No - 1997](https://www.youtube.com/watch?v=H8eP99neOVs)
    - *Apple suffered from lousy engineering management* - Steve Jobs answering a negative question about a removed feature.  Focusing is about saying no.   *When you say no, you piss off people.*
  - [Basecamp - Priorities - Whats the Big Idea](https://basecamp.com/gettingreal/04.1-whats-the-big-idea)
    - Are we staying true to the vision?
  - [Basecamp - The Starting Line - Fix Time and Budget, Flex on Scope](https://basecamp.com/gettingreal/02.4-fix-time-and-budget-flex-scope)
    - Prioritize, Focus on what you really want to deliver), Flexibility : Scope flexibility.  It’s better to make half a product than a half-assed product (more on this later). *How does a project get to be a year behind schedule? One day at a time.* - [Fred Brooks 1979 Software Project Management - The Mythical man Month](https://en.wikipedia.org/wiki/The_Mythical_Man-Month). [the mythical man-month - 1975 - isbn](http://www.worldcat.org/isbn/0-201-00650-2)


1. Reuse / Buy / Build.   
  - Reuse:  Attempt to reuse what we currently own, or what other government departments / partners are using.   
  - Buy: Buy solutions and integrate into our enterprise architecture
  - Build:  As a last resort, custom build a solution.  This should be limited to business capabilities and processes that are unique to our department.  Executive approval (Department Architecture Review Board)  required.


1. Document & Exercise Backup & Recovery
  All applications, regardless or criticality, must have a documented backup and recovery procedure.   This needs to be exercised on a regular basis (at least annually) and must be done prior to deployment to production.

  Business critical applications require a BCP and DR plan to be documented and reviewed on a regular basis.
  - [ ] Enterprise Architecture : Formally identify the criticality of applications and record this in the deparment's official configuration management database (CMDB).

## Goal: Reduce Content Duplication.

Content is duplicated within applications and across technologies.  The causes of this have not been formally documented, however some factors leading to users copying content are the lack of *trust* in being able to find or access the content in the future.  This can be paraphrased as *I need a local copy for me or my team*.   This leads to copies of information on shared-drives and transitory and corporate applications.   Some historical examples that have led to this "clone-and-own" culture include:
- Link Rot:  Application upgrades making links to content fail.   [Deep Linking](https://en.wikipedia.org/wiki/Deep_linking) is the use of a hyperlink that links to a specific, generally searchable or indexed, piece of web content on a website.  For example, a link to a specific case, request or document.  
- Access:  Users are concerned that the content may disappear due to the content owner removing, renaming or modifying user-access.   This is difficult to address at the application layer, and requires enterprise information and access-management governance.

1. URL Lifecycle
 When supporting [Deep Linking](https://en.wikipedia.org/wiki/Deep_linking) design must take into account the lifecycle of the link, and its ability to function through upgrades.   Consider patterns such as [Permalink](https://en.wikipedia.org/wiki/Permalink) and Data Object Identifier [(DOI)](https://en.wikipedia.org/wiki/Digital_object_identifier).  When provide a link to a user for reference, identify this should be a trusted-link which survives upgrades/replacements.

 1. URL Design
 Define a URL strategy for the application, including an inventory or URL's provided.  Define the manner in which URLs are clean, friendly and pretty [Clean URL](https://en.wikipedia.org/wiki/Clean_URL); support *http://example.com/name* as opposed to *http://example.com/index.php?page=name*.

 1. Enterprise Search
 Enterprise search will definitely help in enabling users to find the information they should have access to.   This is a major long-term initiative.

### References
*TODO* 37signals - use as support for guidelines
*TOD* CIO - use as support for guidelines

[Basecamp - The Starting  - Build Less](https://basecamp.com/gettingreal/02.1-build-less)
[...] less means:
  - Less features
  - Less options/preferences
  - Less people and corporate structure
  - Less meetings and abstractions
  - Less promises

[...] [Basecamp - Stay Lean - Less Mass:](https://basecamp.com/gettingreal/03.1-less-mass)
  - less "Thick process"
  - less "Long-Term Roadmaps"  (supported as by ITSS Study - Ian Lovsion 2017)
  - less of "The past ruling the future"


## Goal: Composable Applications
Applications should reduce coupling; especially at the high-level interactions between components. [Reference: Reduce Coupling - Martin Fowler IEEE 2002](https://www.martinfowler.com/ieeeSoftware/coupling.pdf).


Architectural patterns to support composable applications include:
*TODO* are these patterns or concepts??
1. High Cohesion [ref oreilly - chapt 3 - modularity](https://learning.oreilly.com/library/view/fundamentals-of-software/9781492043447/ch03.xhtml#idm46005301692696)
1. Low Coupling  : why persistence layers / data access layers added between application business logic and the database layer.

Principles supporting composable applications:
- SOLID : S - Single Responsibility Principle ([Martin, J. Principles of object-oriented analysis and design. (Prentice-Hall, 1993](http://www.worldcat.org/isbn/978-0-13-720871-5))

  ```
  If a class has more than one responsibility, then the responsibilities become coupled.
  Changes to one responsibility may impair or inhibit the class' ability to meet the others.
  This kind of coupling leads to fragile designs that break in unexpected ways when changed.
  ```

1. Decoupled Integration

1. Develop an API Strategy
API's are a critical component of our technology stack.  As applications and technology more-and-more through API's we need to mature our API strategy. The API Strategy should address concerns such as:
- API Discovery / Catalog:  How can developers discover integrations (*TODO*)
- API Testing: automated testing, performance testing, stubbed-out testing.
- API Standards follow [GC Standards on API](https://www.canada.ca/en/government/system/digital-government/modern-emerging-technologies/government-canada-standards-apis.html) guidance, align with [NZ API Guidance & Resources](https://snapshot.ict.govt.nz/guidance-and-resources/standards-compliance/api-standard-and-guidelines/api-standard-and-guidelines-part-b-technical/) & [UK API Technical & Data Standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards) guidance.   These are written to support integrated digital processes across departments and agencies; however their guidance is relevant for internal integrations.
- As we mature with our API Strategy, and enterprise approach to APIs for the following is important:
  - API Documentation(https://www.gov.uk/guidance/how-to-document-apis): discover, affordances (understand how to use API), integration with API.  Examples: [GOV.UK Frontend](https://frontend.design-system.service.gov.uk/?_ga=2.152481273.1904569585.1642645779-431822512.1642645779#gov-uk-frontend), [Stripe API](https://stripe.com/docs/api), [Mailchimp](https://mailchimp.com/developer/).
  - API Protocols: Leverage protocols and languages like gRPC and GraphQL for integrations.
  - API Management: As the number of components, micro-services and integrations grow, the need for an API management layer to provide orchestration and API lifecycle management increases.  API management provides a single point of entry for all connected systems and services.  Helps developers (IT, client-authentication, authentication, business-citizen) develop to APIs.
- References:
  - [Wikipedia API Management](https://en.wikipedia.org/wiki/API_management)
  - [Gartner Ensure API Management includes Cloud and Microservices](https://1drv.ms/b/s!AkwXSmFk-_xpgfcsgjdWFv2I6bIgDQ?e=JhBkfi)
  - [Gartner Human Capital Management (HCM) Integration Strategy - 2020](https://1drv.ms/b/s!AkwXSmFk-_xpgfgLA3GjpRzExHTf4A?e=mEUs6W)
  - [Gartner Choose Integration Technology - 3 Patterns of Integration](https://1drv.ms/b/s!AkwXSmFk-_xpgfgPsUqHLZZfvh4Xqw?e=uweb4l): 1) Data Consistency across platforms (ERP, CRM, Billing, ...), 2) Multistep Process / Pipeline and 3) Composite Service.  Recommends to identify integration needs (Application Integration, Data Integration, API Lifecycle Management, Integration Platform, BPM (Pega, ..), Master Data Management, Message Oriented Middleware (ESB, Streaming, ...), Robotic Process Automation(RPA)
)

1. Event-Driven Process and Streaming
Leverage events as a core principle.  Publish these events, subscribe to these events (streaming data flows).
- event-based data flows for batch and real-time prcoessing
- messaging-oriented over transactions.  [Interested Video Presentation on Why - Avdi Grimm - Nordic JS No Return: Moving beyond transactions](No Return: Moving beyond transactions)



### References
- [Gartner - The Future of ERP is Composable](https://www.gartner.com/document/3991664) :  Composable ERP is defined as an adaptive technology strategy that enables the foundational administrative and operational digital capabilities for an enterprise to keep up with the pace of business change. This strategy delivers a core of composable applications and, as a service, software platforms that are highly configurable, interoperable, and flexible to adapt to future modern technology.  

  Recommendations:
    - Defining business capabilities through road mapping exercises
    - Reduce reliance on customizations and proprietary-ERP
    - Continuously deliver incremental business value in a modular mode
    - Build an ERP team with wide-ranging skills (~DevOps for ERP); skill development and training




## Goal: Testable Applications
Testing applications and groups of applications effectively and efficiently requires anlaysis and design.  The application development needs to include capabilities to facilitate testability.  Testing scopes vary based on developer testing and quality assurance testing.  QA testing often involves elaborate efforts to setup a system (install, configure and provision) for a single test case.  


- Automation:  Adopt the DevOps of shift-left the integration and quality testing.  The automation should accommodate the CI/CD concepts, as well as the ability to provision and validate tests.

- The following principles are copied from Microsoft [[Shift Left Testing]](https://docs.microsoft.com/en-us/devops/develop/shift-left-make-testing-fast-reliable).  
  - Write tests at lowest level possible.  Favour unit tests over functional tests.   When functional tests fail, consider if unit tests should be more comprehensive.
  - Write-once, run anywhere (DRY - Do Not Repeat yourself):  Tests should be written to work in any environment (Dev, Sig, Prod).
  - Design Product for Testability.   Discuss how the system is testable during peer-reviews and Technology Review Board (TRB) reviews.
  - Test Code is a product.  Treat the software used to automate testcases as code.  The code is version-controlled, and discoverable (i.e., it exists in close proximity to the application code
  - Test ownership follows application software ownership.  The software development team owns creating automated tests for not only unit-tests but boundary/integration tests.  

- [ ] SDLC Checklist: FY 22/23:  The Quality Assurance Working Group and the SDLC Working Group should consider formalizing the above principles and guidance as part of the new SDLC process, milestones and checklist.

Development methodologies like test driven development (TDD) that predates DevOps.   How they are related is well described in this article - [[TDD for a DevOps World](https://medium.com/swlh/revisiting-test-driven-development-for-a-devops-world-401f1f8d3275)]; summary:
- TDD is clearly a quality enhancing practice. It’s a really good way to mitigate the risks of defects and to increase the chances of actually the sort of rugged code that needs to withstand change and increasing demands of a DevOps world where expectations are much higher.


## Goal: Future Proof Technology
The [MACH Aliance](https://machalliance.org/) was announced in December 2021.  AWS, MongoDB and others are associated with this alliance.

This manifesto is:
```
"Future proof enterprise technology and propel current and future digital experiences"
```
The GC CIO provides guidance, and these should be respected.   MACH aligns with the GC directions.
- __M__: Micro-Services (Modular): Individual pieces of business functionality that are independently developed, deployed, and managed. A swappable architecture.
- __A__: API: All functionality is exposed through an API.
- __C__: Cloud: SaaS that leverages the cloud, beyond storage and hosting, including elastic scaling and automatically updating.
- __H__: Headless: Front-end presentation is decoupled from back-end logic and channel, programming language, and is framework agnostic.

Our constraints may limit our ability to leverage the cloud.  For on-premise constrained systems DevOps practices to automate updating and Kubernetes autoscaling should be prioritized.

A view of how MACH applies to guidance and industry patterns is below.

|MACH|Description|ARA Guidance|Industry Paterns|
|--|--|--|--|
|M - Microservices|Individual *pieces* of business functionality can be deployed and manageed|Composable Applications|[Microservices Architecture Style](https://learning.oreilly.com/library/view/fundamentals-of-software/9781492043447/ch17.xhtml)|
|A - API|Functionality exposed via API||GC API-First, [GC Standards on API](https://www.canada.ca/en/government/system/digital-government/modern-emerging-technologies/government-canada-standards-apis.html)|
|C - Cloud|Leverage SaaS to its fullest including scalability and automation||
|H - Headless|Decouple front-end from back-end|||

Aside:  An interesting article on how a CMS is attempting to become MACH-compliant; with discussion on impacts to CMS features like editors, and the use of technologies like JAMstack. [MACH Sitecore Architecture](https://www.verndale.com/insights/emerging-technology/hitchhikers-guide-to-sitecore-architecture-in-2022)

## Goal: User Experience
Our user experience can be improved by looking at modern applications and their integration into varying computing platforms (desktop, mobile, tablet).  Some modern experiences can include:
- Push Notifications:  Business fit-for-purpose notifications using [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API) and integrated into Windows Operating System experience.  Replace mindset of email-based notifications into a notification platform with end-user ability to control notifications.
- Sharing Content Across Platforms:  Ability to share content across platforms similar to sharing news and social-media content.  Allows the ability to communicate effectively in different channels (intranet, CMS, ...).  [oEmbed](https://oembed.com/)
- Accessibility: Ability to self-identity accessibility needs.

*TODO* Add content from high-side Confluence.

## Other - TODO  
### Goal: Streaming-Based Application
*TODO* Streaming-Ready/capable application
- https://www.dbta.com/Editorial/Think-About-It/Building-a-Modern-Data-Architecture-for-the-2020s-148239.aspx?PageNum=3

## Goal: GC Alignment
1. [CTO - Government of Canada Digital Standards](https://www.canada.ca/en/government/system/digital-government/government-canada-digital-standards.html) : Design with Users, Iterate and improve frequently, Work in the open by default, Use open standards and solutions, Address security and privacy risks, Build in accessibility from the start, Empower staff to deliver better services, Be good data stewards, Design ethical services, Collaborate widely

1. [Cloud Adoption](https://www.canada.ca/en/government/system/digital-government/digital-government-innovations/cloud-services/government-canada-cloud-adoption-strategy.html)

# OLDER TEXT


# API Guidance
API's should be lightweight.  If the API contains a significant amount of business logic, the API likely needs to be decomposed into smaller APIs (service normalization)

# Integration Services Layer

## Terminology
- Full Stack Teams : Team owns visualization code/software, integration/API software/code, the database code and the infrastructure code.
- Event Driven Architecture (EDA) : Systems are loosely coupled and communicate through the generation and consumption of events.  Streams (see Streams.md document)
- Message Oriented Middleware (MOM) : The services integration layer.  Choose a technology and ensure we have a team to fully support the technology (both reliablity/integrity and availability).  Choices include Apache ServiceMix, RabbitMQ, Nats.io, Kafka, etc.   


## Patterns
- BFF - Back-End for Front-End

# References
Conway's Law (1967): *Any organization that designs a system (defined broadly) will produce a design whose structure is a copy of the organization's communication structure.* [Conway's Law - Wikipedia](https://en.wikipedia.org/wiki/Conway's_law)

Jon Postel Law ([RFC 760](https://datatracker.ietf.org/doc/html/rfc791)): *an implementation should be conservative in its sending behavior, and liberal in its receiving behavior.*

GraphQL & REST :

# OLD TEXT #2

Principles:
Reuse, Buy, Build
- Reuse : internal, partners and GC...

# DevOps
TODO: describe mature curve towards DevOps culture; set vision, strategy, pillars.

[Google - DevOps measurement - Monitoring and Observability](https://cloud.google.com/architecture/devops/devops-measurement-monitoring-and-observability)

- Microservices - see [ 2011 Continuous delivery: reliable software releases through build, test, and deployment automation](https://continuousdelivery.com/)


## Modular Monolith - Steps to Microservices
- see [../Assets/devnexus2016-modular-monoliths.pdf](http://static.codingthearchitecture.com/presentations/devnexus2016-modular-monoliths.pdf)
- well-defined, in-process components is a stepping stone to out-of-process components (i.e.) microservices
- *Choose microservices for the benefits, not because your monolithic codebase is a mess* - [Simon Brown @ Coding the Architecture](https://codingthearchitecture.com/)

Modular Monolith - Components (features):
- high cohesion
- low coupling
- focussed on a business capability
- bonded context or aggregate
- encapsulated data
- substitutable
- composable

From Components to Microservices (benefits of components - above) plus:
- individually deployable
- individually upgradeable
- individually replaceable
- individually scalable
- heterogeneous technology stacks

## Continuous Delivery
###  Principles [Continuous Delivery](https://continuousdelivery.com/principles/)
There are five principles at the heart of continuous delivery:
1. Build quality in
1. Work in small batches
1. Computers perform repetitive tasks, people solve problems
1. Relentlessly pursue continuous improvement
1. Everyone is responsible

Software

Code Quality:
Code Inspection vs Peer Programming

Static Code Analysis:  
Why?  (Archs always say "Why!")
  - help develop understanding of complexity of code and associated costs to code complexity (QA, testing, continuous deployment, ..>).
  - can help QA estimate time to validate software
  - can help management understand scope.
  - CRAP - Change Risk Analysis and Predictions
software_design_complexity.pdf


Style:  
Test-Driven Development : have the accidental (but positive) side effect of generating smaller, less complex methods on average for a given problem domain
Lean Movement : Kaizen; Don’t treat transformation as a project to be embarked on and then completed so we can return to business as usual. The best organizations are those where everybody treats improvement work as an essential part of their daily work, and where nobody is satisfied with the status quo. [Continuous Delivery](https://continuousdelivery.com/principles/)

Approach:
Domain-Driven Design: https://domaindrivendesign.org/ddd-domain-driven-design/
Domain-driven design (less often, domain-driven design, DDD) is a set of principles and schemes aimed at creating optimal systems of objects. The development process boils down to creating software abstractions called domain models. These models include business logic that links the actual conditions of a product’s application to the code.

Techniques:
Event Storming: Event storming is a collaborative brainstorming technique used to identify domain events. Event storming can be used as a precursor to more in-depth domain modeling exercises, to assess the team’s current understanding of the domain, and to identify risks and open questions in an existing domain model. Event storming is described fully in Introducing Event Storming: An Act of Deliberate Collective Learning [Bra17] by Alberto Brandolini. Similar to User Story Mapping - see [O'Reilly Design It! - Event Storming](https://learning.oreilly.com/library/view/design-it/9781680502923/f_0132.xhtml#recipe.event.storming)



# Principles
[ref: ](https://hackernoon.com/5-essential-software-architecture-design-principles-l73x3win)

## SOLID
SOLID Principles:

1. Single-responsibility principle - A class should only have a single responsibility, that is, only changes to one part of the software's specification should be able to affect the specification of the class.

1. Open–closed principle - Software entities ... should be open for extension, but closed for modification.

1. Liskov substitution principle - Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program. Design by Contract.

1. Interface segregation principle - Many client-specific interfaces are better than one general-purpose interface.

1. Dependency inversion principle - One should "depend upon abstractions, [not] concretions.

## KISS (Keep it simple)
Everything should be made as simple as possible.

## YAGNI (You aren’t gonna need it)
Do not build it until it is needed.

## Opportunity Cost Principle
Opportunity costs define what we have to give up in getting that value. For the highest value, we should always opt for the option that offers maximum benefits at the lowest cost.

Always weigh down different options against one another. Choose a path that adds maximum value to the project.

## Don't repeat yourself (DRY)
Avoid specifying behaviour related to a particular concept in multiple places within an application. As this will lead to a frequent source of errors. At some point, a change in requirements will require changing this behaviour. It's likely that at least one instance of the behaviour will fail to be updated, and the system will behave inconsistently.

Rather than duplicating logic, encapsulate it in a programming construct. Make this construct the single authority over this behaviour, and have any other part of the application that requires this behaviour to use the new construct.


# Perspectives in Architecture
- Technical Architecture
- Data Architecture
- Security Architecture - see Refactoring Databases book??
- Domain Architecture (Business Domain) - see Domain Driven Design books
