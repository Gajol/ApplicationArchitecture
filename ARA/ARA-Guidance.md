

# Application Architecture Guidance


## Goal:  Reduce Technical Debt

1. Rationalization.

In cooperation with the business, business governance and other stakeholders development of functional and non-functional requirements must be rationalized.  There are many strategies to rationalize development to ensure the project can be completed on time, in an agile manner.  Some strategies for recognized industry leaders include:

  - "Reduce features, focus on the priorities" - [Basecamp - Feature Selection - Start with No](https://basecamp.com/gettingreal/05.3-start-with-no)
  - Apple had suffered from lousy engineering management and Steve Jobs was answering a negative question about a removed feature.  Steve Jobs response was that "*Focusing is about saying no.   When you say no, you piss off people.*"- [Steve Jobs - Focus on Saying No - 1997](https://www.youtube.com/watch?v=H8eP99neOVs):  
  - Are we staying true to the vision? : [Basecamp - Priorities - Whats the Big Idea](https://basecamp.com/gettingreal/04.1-whats-the-big-idea):
  - Prioritize, Focus on what you really want to deliver), Flexibility : Scope flexibility.  It’s better to make half a product than a half-assed product. - [Basecamp - The Starting Line - Fix Time and Budget, Flexibility on Scope](https://basecamp.com/gettingreal/02.4-fix-time-and-budget-flex-scope):
  -  *How does a project get to be a year behind schedule? One day at a time.* - [Fred Brooks 1979 Software Project Management - The Mythical man Month](https://en.wikipedia.org/wiki/The_Mythical_Man-Month). [the mythical man-month - 1975 - isbn](http://www.worldcat.org/isbn/0-201-00650-2)


1. Reuse / Buy / Build.   

  Prior to a business case or project proceeds to development, any new application creation should be discussed with other stakeholders (e.g, TMO - Transformation Management Office, BRMO - Business Relationship Management Office, TRB - Technology Review Board and the AWG - Architecture Review Board).   If an new application is justified, the options analysis should consider the TBS Digital Standards and GC EARB Application Architecture Standards [^5].   The following priorities for options analysis:

  - Reuse:  Attempt to reuse what we currently own, or what other government departments / partners are using.     
  - Buy: Buy solutions and integrate into our enterprise architecture
  - Build:  As a last resort, custom build a solution.  This should be limited to business capabilities and processes that are unique to our department.  Executive approval (Department Architecture Review Board)  required.


1. Document & Exercise Backup & Recovery

  All applications, regardless or criticality, must have a documented backup and recovery procedure.   This needs to be exercised on a regular basis (at least annually) and must be done prior to deployment to production.

  Business critical applications require a BCP and DR plan to be documented and reviewed on a regular basis.

  - [ ] Enterprise Architecture : Formally identify the criticality of applications and record this in the department's official configuration management database (CMDB).  Note: *As of this writing the CMDB is not the official source of truth for the list of critical applications.  The project should clearly identity if this application is critical.


1. Build Less and Stay Lean

  BaseCamp has a few short-narratives on ways to stay-competitive; which can be adopted to our department attempting to reduce technical debt.

  - [Basecamp - The Starting  - Build Less](https://basecamp.com/gettingreal/02.1-build-less):
    - Less features
    - Less options/preferences
    - Less people and corporate structure
    - Less meetings and abstractions
    - Less promises

  -  [Basecamp - Stay Lean - Less Mass:](https://basecamp.com/gettingreal/03.1-less-mass)
    - less "Thick process"
    - less "Long-Term Roadmaps"  (supported as by our ITSS Study - Ian Lovsion 2017)
    - less of "The past ruling the future"


## Goal: Reduce Content Duplication with URL Design and Search

Content (information) is duplicated within applications and across technologies.  The causes of this have not been formally documented, however some factors leading to users copying content are the lack of *trust* in being able to find or access the content in the future.  This can be paraphrased as *I need a local copy for me or my team*.   This leads to copies of information on shared-drives and transitory and corporate applications.   

Some historical examples that have led to this "clone-and-own" culture include:

  - Link Rot:  Application upgrades making links to content fail.   [Deep Linking](https://en.wikipedia.org/wiki/Deep_linking) is the use of a hyperlink that links to a specific, generally searchable or indexed, piece of web content on a website.  For example, a link to a specific case, request or document.  

  - Access:  Users are concerned that the content may disappear due to the content owner removing, renaming or modifying user-access.   This is difficult to address at the application layer, and requires enterprise information and access-management governance.


1. URL Lifecycle
 When supporting [Deep Linking](https://en.wikipedia.org/wiki/Deep_linking) design must take into account the lifecycle of the link, ned that the content may disappear due to the content owner removing, renaming or modifying userand its ability to function through upgrades.   Consider patterns such as [Permalink](https://en.wikipedia.org/wiki/Permalink) and Data Object Identifier [(DOI)](https://en.wikipedia.org/wiki/Digital_object_identifier).  When provide a link to a user for reference, identify this should be a trusted-link which survives upgrades/replacements.

1. URL Design
 Define a URL strategy for the application, including an inventory or URL's provided.  Define the manner in which URLs are clean, friendly and pretty [Clean URL](https://en.wikipedia.org/wiki/Clean_URL); support *http://example.com/name* as opposed to *http://example.com/index.php?page=name*.

1. Enterprise Search
 Enterprise search will definitely help in enabling users to find the information they should have access to.   This is a major long-term initiative.



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


## Goal:  Composable Enterprise, Composable Applications
A composable application is a key pattern in micro-services.   In our current environment and infrastructure environment, the focus should be on designing *single purpose services" on virtual machines.   Applications should be thought of as thin user interfaces on top of this collections of services.  The design of the services/APIs is important to success of the project and application.  Some strategies to help in the design and communication of the service-architecture are:

### Domain Drive Design (DDD) / Bounded Context[^11]

DDD is useful for large transformation and modernization projects like HR and ERP modernization.   A bounded-context breaks the large domain into a cohesive boundary.  Within this bounded-countext services can be designed and exposed.  Refer to *Domain Driven Design*[^12] for details on this concept.

### GC Directive on Service and Digital - Standards on APIs[^13]

The Direcitve on Service and Digial provides high-level guidance on API design which should be implemented:
  - Build APIs against the business requirements
  - Work with the developers who are expected to consume your API
  - Expose APIs using industry accepted open standards

### Decouple User Interfaces

Design the web UI to work across ~~mobile devices, tablets, and~~ desktops at a minimum.  Text is ~~striked-out~~ to indicate we currently develop applications for use on a known standard-provisioned desktop with two-monitor.

1. APIs, and the consuming services and applications should have *high-cohesion* and *losse-coupling*.  This is especially important as software communicates across business domains.   Application Programming Interfaces (APIs) should be used to reduce; especially at the high-level interactions between components.[^1][^2][^3].   Architectural patterns to support composable applications include:

  - High Cohesion: *The Fundamentals of Software Architecture*[^4], in Chapter 3 on Modularity, describes how to measure modularity.  Cohesion can be measured in terms of functional, communication, procedural, logical and other dimensions.    
  - Low Coupling  : Use data access layers between application business logic and the database layer.  Coupling is more difficult to understand and requires assessment of connascence[^14}].  Some common guidelines are:
    - break system and APIs into encapsulated replacements
    - minimize any connascence (depedecny relationships between objects) between systems

### SOLID[^15]

SOLID is five design principles supporting composable applications:

  - S - Single Responsibility Principle. Gather together things that change for the same reason, and separate things that change for different reasons.  Good system design means that we separate the system into components that can be independently deployed. A class should only have a single responsibility, that is, only changes to one part of the software's specification should be able to affect the specification of the class. - *[reference: 97 Things Every Programmer Should Know #76 - 2010 ](http://www.worldcat.org/isbn/978-0-596-80948-5)*.

    *If a class has more than one responsibility, then the responsibilities become coupled.
  Changes to one responsibility may impair or inhibit the class' ability to meet the others.
  This kind of coupling leads to fragile designs that break in unexpected ways when changed.*

  1. O - Open–closed principle - Software entities and components should be open for extension, but closed for modification.

  1. L - Liskov substitution principle - Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program. Design by Contract.

  1. I - Interface segregation principle - Many client-specific interfaces are better than one general-purpose interface.

  1. D - Dependency inversion principle - One should "depend upon abstractions, *not* concretions.


### 12-Factor Application

The *12-Factor Applications*[^16] was defined by Heroku in 2011 as a means to define attributes or a successful Software as a Service (SaaS) application with portability and resilience characteristics.  These characteristics are good goals for the software architecture to achieve.

  1.  Codebase: There should be exactly one codebase for a deployed service with the code base being used for many deployments.
  1.	Dependencies: 	All dependencies should be declared, with no implicit reliance on system tools or libraries.
  1.	Config:	Configuration that varies between deployments should be stored in the environment.
  1.	Backing services:	All backing services are treated as attached resources and attached and detached by the execution environment.
  1.  Build, release, run:	The delivery pipeline should strictly consist of build, release, run.
  1.	Processes:	Applications should be deployed as one or more stateless processes with persisted data stored on a backing service.
  1.	Port binding:	Self-contained services should make themselves available to other services by specified ports.
  1.	Concurrency:	Concurrency is advocated by scaling individual processes.
  1.	Disposability:	Fast startup and shutdown are advocated for a more robust and resilient system.
  1.  Dev/Prod parity:	All environments should be as similar as possible.
  1.	Logs:	Applications should produce logs as event streams and leave the execution environment to aggregate.
  1.	Admin Processes:	Any needed admin tasks should be kept in source control and packaged with the application.


### Develop an API Strategy

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
  - [Gartner Choose Integration Technology - 3 Patterns of Integration](https://1drv.ms/b/s!AkwXSmFk-_xpgfgPsUqHLZZfvh4Xqw?e=uweb4l):

    1) Data Consistency across platforms (ERP, CRM, Billing, ...)

    2) Multistep Process / Pipeline

    3) Composite Service  

    Identify integration needs (Application Integration, Data Integration, API Lifecycle Management, Integration Platform, BPM (Pega, ..), Master Data Management, Message Oriented Middleware (ESB, Streaming, ...), Robotic Process Automation(RPA)

### Event-Driven Process and Streaming

Event Driven Architectures are useful for distributed, asynchronous, scalable and performant systems  Leverage events as a core principle.  Publish these events, subscribe to these events (streaming data flows).

  - event-based data flows for batch and real-time processing
  - message-oriented over transactions.  An interesting video presentation on "*[Why to use Events by Avdi Grimm - Nordic JS No Return: Moving beyond transactions](Nhttps://avdi.codes/talks/no-return/)*".



### Composable ERP and HR Enterprise - Gartner

[Gartner - The Future of Enterprise Resource Planning (ERP) is Composable](https://www.gartner.com/document/3991664)[^9] defines a *Composable ERP* as an adaptive technology strategy that enables the foundational administrative and operational digital capabilities for an enterprise to keep up with the pace of business change. This strategy delivers a core of composable applications and, as a service, software platforms that are highly configurable, interoperable, and flexible to adapt to future modern technology.  

The key Gartner recommendations are valid for ERP and HR modernization initiatives:
- [ ]  Define business capabilities through road mapping exercises
- [ ]  Reduce reliance on customizations and proprietary-ERP
- [ ]  Continuously deliver incremental business value in a modular mode
- [ ]  Build an ERP team with wide-ranging skills (Adopt a DevOps for ERP). Ensure adequate skill development and training


## Goal: Testability, Testable Applications and Automation

Testing applications and groups of applications effectively and efficiently requires analysis and design.  The application development needs to include capabilities to facilitate testability.  Testing scopes vary based on developer testing and quality assurance testing.  QA testing often involves elaborate efforts to setup a system (install, configure and provision) for a single test case.  


- Automation:  Adopt the[Microsoft - Shift Left Testing](https://docs.microsoft.com/en-us/devops/develop/shift-left-make-testing-fast-reliable)) DevOps of automation while shifting-left the integration and quality testing.  Automation should accommodate the CI/CD concepts, as well as the ability to provision and validate tests across multiple environments.  The following principles are copied from Microsoft Shift Left Testing[^6]
  - Write tests at lowest level possible.  Favour unit tests over functional tests.   When functional tests fail, consider if unit tests should be more comprehensive.
  - Write-once, run anywhere (DRY - Do Not Repeat yourself):  Tests should be written to work in any environment (Dev, Sig, Prod).
  - Design Product for Testability.   Discuss how the system is testable during peer-reviews and Technology Review Board (TRB) reviews.
  - Test Code is a product.  Treat the software used to automate testcases as code.  The code is version-controlled, and discoverable (i.e., it exists in close proximity to the application code
  - Test ownership follows application software ownership.  The software development team owns creating automated tests for not only unit-tests but boundary/integration tests.  

Recommendation:

- [ ] SDLC Checklist: FY 22/23:  The Quality Assurance Working Group and the SDLC Working Group should consider formalizing the above principles and guidance as part of the new SDLC process, milestones and checklist.


Adopt development methodologies like test driven development (TDD) that predates DevOps.   How TDD abd DevOps are related is well described in the article '*TDD for a DevOps World*[^7] - summary:
- TDD is clearly a quality enhancing practice. I
- TDD is a really good way to mitigate the risks of defects
- TDD is increases the chances of actually achieving the resilient and rugged code that needs to withstand the increasing demands of a DevOps world where expectations are much higher.


## Goal: Future Proof Technology
The [MACH Aliance](https://machalliance.org/) was announced in December 2021.  AWS, MongoDB and others are associated with this alliance.  This alliance defines the strategy, allow container and micro-service focused, still identifies key-concepts for use within our data-centre applications; namely modular, API-based and headless (i.e., )

This manifesto is "*Future proof enterprise technology and propel current and future digital experiences*". MACH aligns with the GC EARB directions[^5]:

- __M__: Micro-Services (Modular): Individual pieces of business functionality that are independently developed, deployed, and managed. A swappable architecture.
- __A__: API: All functionality is exposed through an API.
- __C__: Cloud: SaaS that leverages the cloud, beyond storage and hosting, including elastic scaling and automatically updating.
- __H__: Headless: Front-end presentation is decoupled from back-end logic and channel, programming language, and is framework agnostic.

Our constraints may limit our ability to leverage the cloud.  For on-premise constrained systems DevOps practices to automate updating and Kubernetes auto scaling should be prioritized.

A view of how MACH applies to guidance and industry patterns is below.

|MACH|Description|ARA Guidance|Industry Patterns|
|--|--|--|--|
|M - Microservices|Individual *pieces* of business functionality can be deployed and managed|Composable Applications|[Microservices Architecture Style](https://learning.oreilly.com/library/view/fundamentals-of-software/9781492043447/ch17.xhtml)|
|A - API|Functionality exposed via API|Composable Applications|GC API-First, [GC Standards on API](https://www.canada.ca/en/government/system/digital-government/modern-emerging-technologies/government-canada-standards-apis.html)|
|C - Cloud|Leverage SaaS to its fullest including scalability and automation|Security / Policy Restricted|Aligned to MACH|
|H - Headless|Decouple front-end from back-end|Cohesive, Loosely-Coupled Applications, Services and APIs||

Aside:  An interesting article, *MACH Sitecore Architecture*[^10] on how a Content Management System (CMS) is attempting to become MACH-compliant; with discussion on impacts to CMS features like editors, and the use of technologies like JAMstack.


## Goal: User Experience
Our user experience can be improved by looking at modern applications and their integration into varying computing platforms (desktop, mobile, tablet).  Some modern experiences can include:
- Push Notifications:  Business fit-for-purpose notifications using the [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API) and integrated into the Windows Operating System experience.  Replace mindset of email-based notifications into a notification platform with end-user ability to control notifications.
- Sharing Content Across Platforms:  Ability to share content across platforms similar to sharing news and social-media content.  Allows the ability to communicate effectively in different channels (intranet, CMS, ...).  *[oEmbed](https://oembed.com/)* is one standard for sharing content across platforms with a linkable visual.

## Goal: Accessibility
The Accessible Canada Act received Royal Assent on June 21, 2019, and came into force on July 11, 2019.[[Reference](https://www.canada.ca/en/employment-social-development/programs/accessible-people-disabilities/act-summary.html)].   Our department has no formal policies on accessibility.   In light of no policy, applications should strive to achieve WCAG 2.1 Level AA.  This goal changes by application, and development must ensure they are aware of the business requirements for accessibility.  

WCAG 2.1 Level AA (Double-A) implies:
- Media: Captions are present on live video.  When appropriate, there exists audio description of what’s happening on streaming media.
- Markup: Ability to resize text without breaking layout.  Language is declared in document.
- Design: A minimum contrast of 4.5:1 among elements. Heading tags (h1,h2,h3, etc.) are present and emerge from content organically.
- Forms: If an error is present on a form, the website will: suggest ways to fix it, the user may withdraw and resubmit the form, or the form prompts a confirmation.
- Navigation: Pages can’t be nested or unintentionally obfuscated unless part of a step-by-step process, such as an application or feed result. Navigation follows a semantic structure and is repeated on pages.

A basic checklist of minimal accessibility requirements are:

- [ ] Applications should meet WCAG 2.1 Level AA success criteria.
- [ ] Applications should allow users to self-identity accessibility needs.



[^1]: [Reduce Coupling - Martin Fowler IEEE 2002](https://www.martinfowler.com/ieeeSoftware/coupling.pdf).

[^2]: [Amazon-AWS Bezos API's - Expose Data and Functionality through service interfaces](https://blog.apievangelist.com/2015/07/09/the-new-aws-api-gateway-anyone-who-does-not-do-this-will-be-fired-thank-you-have-a-nice-day-jeff-bezos/)

[^3]: [Mastering API Architecture](www.worldcat.org/isbn/978-1492090632)

[^4]: [Fundamentals of Software Architecture](www.worldcat.org/isbn/978-1-4920-4345-4) : Richards, Mark, and Neal Ford. Fundamentals of Software Architecture: An Engineering Approach. First edition. Beijing Boston Farnham Sebastopol Tokyo: O’Reilly, 2020.

[^5]: [GC EARB EA Standards and Application Architecture](https://wiki.gccollab.ca/GC_Enterprise_Architecture/Standards/Application_Architecture)

[^6]: [Microsoft - Shift Left Testing](https://docs.microsoft.com/en-us/devops/develop/shift-left-make-testing-fast-reliable)

[^7]: [TDD for a DevOps World](https://medium.com/swlh/revisiting-test-driven-development-for-a-devops-world-401f1f8d3275)

[^8]: [MACH Aliance](https://machalliance.org/)

[^9]: [Gartner - The Future of ERP is Composable](https://www.gartner.com/document/3991664)

[^10]: [MACH Sitecore Architecture](https://www.verndale.com/insights/emerging-technology/hitchhikers-guide-to-sitecore-architecture-in-2022)

[^11]: [Martin Fowler - Bounded Context](https://www.martinfowler.com/bliki/BoundedContext.html)

[^12]: [Evans, Eric. Domain-Driven Design: Tackling Complexity in the Heart of Software. Boston: Addison-Wesley, 2004.
](www.worldcat.org/isbn/978-0321125217)

[^13]: [Appendix B to Directive on Service and Digital - Mandatory Procedures for APIs](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=32604)

[^14]: [Wikipedia - Connascense](https://en.wikipedia.org/wiki/Connascence)

[^15]: [Martin, J. Principles of object-oriented analysis and design. (Prentice-Hall, 1993](http://www.worldcat.org/isbn/978-0-13-720871-5)

[^16]: [12-Factor Application - Heroku - 2011](https://en.wikipedia.org/wiki/Twelve-Factor_App_methodology)
