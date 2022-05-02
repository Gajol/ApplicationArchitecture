# Goals for Application Architecture

The following goals are described in this section.  These goals are aimed at becoming more efficient at releasing applicaitons to production, and, in improving the overall developer exerience (DevEx)

The proceeding section will identify guidance to achieve these goals.

1. Technical Debt Reduction
1. Modular Applications and a Composalbe Enterprise
1. APIs
1. Event Driven
1. Testable Applications
1. Automation
1. Cloud Native - Future Proof Technology
1. User Experience
1. Accessibility
1. Embrace DevOps and Agile


## Goal:  Technical Debt Reduction

Our department's vision includes an *IT Rationalization* pillar which identifies the need to reduce the number of different applications supported by our team.  The Architecture Working Group (AWG) includes principles which address the need to rationalze the portfolio.  

By reducing technical debt our development teams can focus on contributing to high-value projects.  Debt reduction is reduced by the following guidance:

  - Rationalization
  - Reuse / Buy / Build
  - Document & Exercise Backup & Recovery
  - Develop as per the Criticality of the Application
  - Build Less and Stay Lean

### Guidance: Rationalization.

Development of functional and non-functional requirements must be rationalized to help simplify the systems and reduce development and operational costs.   This rationalization requires advocating for change.  There are many strategies to rationalize development to ensure the project can be completed on time, in an agile manner.  Some rationalization guidance recognized by industry leaders include:

  - __Reduce Features__:  "Reduce features, focus on the priorities"[^Rationalize-No]
  - __Focus__: "*Focusing is about saying no.   When you say no, you piss off people.*"[^Rationalize-Focus]
  - __Align to Vision__: "Are we staying true to the vision?"[^Rationalize-Vision]
  - __Prioritize__: Prioritize, Focus on what you really want to deliver), Flexibility : Scope flexibility.  It’s better to make half a product than a half-assed product.[^Rationalize-Prioritize]  
  - __Schedule__: *How does a project get to be a year behind schedule? One day at a time.*[^Rationalize-Schedule]


### Guidance: Reuse / Buy / Build.   

  Prior to a business case or project proceeds to development, any new application creation should be discussed with other stakeholders.  If a new application is justified, the options analysis should consider the TBS Digital Standards and GC EARB Application Architecture Standards [^Guidance-5]. In our department this list includes:

  - TMO - Transformation Management Office,
  - BRMO - Business Relationship Management Office,
  - TRB - Technology Review Board and the
  - AWG - Architecture Review Board).     

  The following priorities for options analysis:

  - __Reuse__:  Attempt to reuse what we currently own, or what other government departments / partners are using.     
  - __Buy__: Buy solutions and integrate into our enterprise architecture
  - __Build__:  As a last resort, custom build a solution.  This should be limited to business capabilities and processes that are unique to our department.  Executive approval (Department Architecture Review Board - DARB)  required.


### Guidance: Document & Exercise Backup & Recovery

  All applications, regardless or criticality, must have a documented backup and recovery procedure.   The procedure must be exercised on a regular basis (at least annually) and must be done prior to deployment to production.

### Guidance: Develop as per the Criticality of the Application

  Business critical applications require a Business Continuity Plan (BCP) and Disaster Recovery Plan (DRP) to be documented and reviewed on a regular basis.   The DRP must be exercised routinely.

  - [ ] Enterprise Architecture Gap : Formally identification of critical applications is not available.  A formal list of application must be captured and recorded in the department's official configuration management database (CMDB).  

    - Note: *As of this writing the CMDB is not the official source of truth for the list of critical applications.  In the interim, projects should clearly identity application criticality and allow for analysis and design of the quality attributes required for critical applications.*


### Guidance: Build Less and Stay Lean

  BaseCamp, a project management software provider, has a few short-narratives on ways to stay-competitive; which can be adopted to our department attempting to reduce technical debt.

  - [Basecamp - The Starting  - Build Less](https://basecamp.com/gettingreal/02.1-build-less):

    - Less features
    - Less options/preferences
    - Less people and corporate structure
    - Less meetings and abstractions
    - Less promises  

  -  [Basecamp - Stay Lean - Less Mass:](https://basecamp.com/gettingreal/03.1-less-mass)
      - Less "Thick process"
      - Less "Long-Term Roadmaps"  (supported as by our ITSS Study - Ian Lovison 2017)
      - Less of "The past ruling the future"


## Goal:  Composable Enterprise, Composable Applications

A composable application is a key pattern in micro-services.   In our current environment and infrastructure environment, the focus should be on designing *single purpose services" on virtual machines.   Applications should be thought of as thin user interfaces on top of this collections of services.  The design of the services/APIs is important to success of the project and application.  Some guidance to help in the design and communication of the service-architecture are:

- Domain Drive Design
- Standards on API (Government of Canada)
- Decouple User Interfaces - Backend-For-Front-End (BFF)
- SOLID Design Principles


### Guidance: Domain Drive Design (DDD) / Bounded Context[^Guidance-11]

DDD is useful for large transformation and modernization projects like HR and ERP modernization.   DDD is complex, however understand some core-concepts can help in developing modular applications.  Within DDD, a bounded-context defines core boundaries of a sub-domain.  The bounded-context helps identify what features and data models are in its responsibility, and, equally as important what is beyond it's context.  Within this bounded-context services can be designed and exposed.  

A quick summary of DDD is to:

1. identify domains and identify the data model this domain manages (high-cohesion).
2. Expose functionality via services in a modular manner (loose-coupling).

Refer to *Domain Driven Design*[^Guidance-12] for details on this concept.

### Guidance: Use APIs

  The Directive on Service and Digital[^Guidance-13] provides high-level guidance on API design summarized below:

- __Business-Based APIs__:  Build APIs against business requirements
- __Collaborate__: Work with the developers who are expected to consume your API
- __Standardized__: Expose APIs using industry accepted open standards

### Guidance: Decouple User Interfaces

Design the web UI to work across ~~mobile devices, tablets, and~~ desktops at a minimum.  Text is ~~striked-out~~ to indicate we currently develop applications for use on a known standard-provisioned desktop with two-monitors; ideally supporting Edge and Chrome.

1. APIs, and the consuming services/applications should have *high-cohesion* and *loose-coupling*.  This is especially important as software communicates across business domains.   
1. APIs should be used to reduce; especially at the high-level interactions between components.[^Guidance-1],[^Guidance-2],[^Guidance-3].

Architectural patterns to support composable applications include:

High Cohesion
: Cohesion can be measured in terms of functional, communication, procedural, logical and other dimensions.[^Guidance-4]

Low Coupling
: Use data access layers between application business logic and the database layer.  Coupling is more difficult to understand and requires assessment of connascence[^Guidance-14].

Some common guidelines are:

- break system and APIs into encapsulated replacements
- minimize any connascence between systems (dependency relationships between objects)

### Guidance: S.O.L.I.D. Software Design[^Guidance-15]

SOLID is five design principles supporting composable applications.   Some of the principles date back 30 years.

Rigid adherence to SOLID is not the objective.  What is important is for developers to understand the value of these, and when to use them effectively.  This article[^Goals-1] provides an excellent description of the value of each principle.   

  - S - Single Responsibility Principle. Gather together things that change for the same reason, and separate things that change for different reasons.  Good system design means that we separate the system into components that can be independently deployed.

  - O - Open–closed principle - Software entities and components should be open for extension, but closed for modification.

  - L - Liskov substitution principle - Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program. Design by Contract.

  - I - Interface segregation principle - Many client-specific interfaces are better than one general-purpose interface.

  - D - Dependency inversion principle - One should "depend upon abstractions, *not* concretions.


### Guidance: 12-Factor Application

The *12-Factor Applications*[^Guidance-16] was defined by Heroku in 2011 as a means to define attributes or a successful Software as a Service (SaaS) application with portability and resilience characteristics.  These characteristics are good goals for the software architecture to achieve.

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


## Goal: Improved API Developer Experience

Our department's developers have inadequate guidance and tooling to build API's effectively and efficiently.  API's are a critical component of our technology stack.  The API strategy needs to mature as applications integrate more-and-more through API's.

As per the GC DOSP, our department needs to develop an API Strategy.  The API Strategy should address concerns such as:

- API Discovery / Catalog:  Provide tools to allow developers to discover integrations amd APIs?
- API Testing: automated testing, performance testing, stubbed-out testing.
- The following GC, NZ and UK API guidance documents are written to support integrating digital processes across departments and agencies.   Their guidance is relevant for internal integrations.

  - [GC Standards on API](https://www.canada.ca/en/government/system/digital-government/modern-emerging-technologies/government-canada-standards-apis.html) guidance,
  - [NZ API Guidance & Resources](https://snapshot.ict.govt.nz/guidance-and-resources/standards-compliance/api-standard-and-guidelines/api-standard-and-guidelines-part-b-technical/)
  - [UK API Technical & Data Standards](https://www.gov.uk/guidance/gds-api-technical-and-data-standards)   


### Guidance:  Develop and API Strategy

Develop an enterprise API Strategy to help mature our API approach and improve our ability to integrate systems.  API documentation, using standardized protocols and providing API management are aspects of the strategy.

1. [API Documentation](https://www.gov.uk/guidance/how-to-document-apis): discover, affordances (understand how to use API), integration with API.  Examples: [GOV.UK Frontend](https://frontend.design-system.service.gov.uk/?_ga=2.152481273.1904569585.1642645779-431822512.1642645779#gov-uk-frontend), [Stripe API](https://stripe.com/docs/api), [Mailchimp](https://mailchimp.com/developer/).
1. API Protocols: Leverage protocols and languages like gRPC and GraphQL for integrations.
1.  API Management / Service Mesh: As the number of components, micro-services and integrations grow, the need for an API management layer to provide orchestration and API lifecycle management increases.  API management provides a single point of entry for all connected systems and services.  API Management also helps developers (IT, client-authentication, authentication, business-citizen) develop to APIs.  API Service Mesh are common in microservices architectures.[^API-ServiceMesh]


## Goal: Testable Applications

Testing applications and groups of applications effectively and efficiently requires planning, analysis and design.  The application development cycle must include developing capabilities to facilitate testability.  Testing scopes vary based on developer testing and quality assurance testing.  QA testing often involves elaborate efforts to setup a system (install, configure and provision) for a single test case.  

The architectural goal is to build testability into applications.  Testable applications  enhance the reliability and security of applications.

The desired outcomes of this guidance is to:
1. Modular Testsuite: have a suite of automated testing that can be executed at modular levels on a component(s) or system
1. Toolsets for Testing: toolsets to help in the setup, data-loading and test-validation of test suites
1. Continual Testing: integration of testcases into the CI/CD pipeline
1. Version Controlled Tests: a library of version-controlled testcases available for agile teams to use


### Guidance : Shift-Left Testing

The guidance is to adopt the [*Microsoft - Shift Left Testing*](https://docs.microsoft.com/en-us/devops/develop/shift-left-make-testing-fast-reliable)) DevOps of automation while shifting-left the integration and quality testing.  Automation should accommodate the CI/CD concepts, as well as the ability to provision and validate tests across multiple environments.  The shifting left of testing improves release cycle planning, allows more predictability on product quality and reliability

The following principles are copied from Microsoft Shift Left Testing[^Guidance-6]:

  - __Low Level Tests__: Write tests at lowest level possible.  Favour unit tests over functional tests.   When functional tests fail, consider if unit tests should be more comprehensive.
  - __Reusable Tests__: Write-once, run anywhere (DRY - Do Not Repeat yourself):  Tests should be written to work in any environment (Dev, Sig, Prod) by consuming configuration of the environment.
  - __Design Product for Testability__.   Discuss how the system is testable during peer-reviews and Technology Review Board (TRB) reviews.  Include these user-stories early in the agile development cycle (Shift-Left)
  - __Test Code is a product__.  Treat the software used to automate testcases as code.  The code is version-controlled, and discoverable (i.e., it exists in close proximity to the application code
  - __Test ownership follows application software ownership__.  The software development team owns creating automated tests for not only unit-tests but boundary/integration tests.  Embrace the DevOps mentality of owning the system through to production deployment.  

Recommendation:

- [ ] SDLC Checklist: FY 22/23:  The Quality Assurance Working Group and the SDLC Working Group should consider formalizing the above principles and guidance as part of the new SDLC process, milestones and checklist.

### Guidance : Test-Driven Development

Adopt development methodologies like test driven development (TDD) that predates DevOps.   How TDD and DevOps are related is well described in the article '*TDD for a DevOps World*[^Guidance-7] - summary:

- TDD is clearly a quality enhancing practice.
- TDD is an effective way to mitigate the risks of defects.
- TDD increases the chances of actually achieving the resilient and rugged code that needs to withstand the increasing demands of a DevOps world where expectations are much higher.

Caution:  Although directed by the TBS Playbook Towards EARB, TDD can be burdening on a development process.  Ensure, TDD  is applied in meaningful areas.


## Goal: User Experience

Our user experience can be improved by looking at modern applications and their integration into varying computing platforms (desktop, mobile, tablet).  

User-experience is an entire-profession.  User-experience is the experience of a user as they interact with the system and the perception they feel throughout and after the interaction.   Understand usability, affordances and other behaviours is important.  Some resources include:

  - [Nielsen-Norman Group (NNG) - User Experience](https://www.nngroup.com/)
  - [Usability.gov - User Centric Design](https://www.usability.gov/what-and-why/user-centered-design.html)
  - Government of Canada - Digital Standards - Design with Users[^Guidance-25]
  - [McKinsey - Business Value of Design](https://www.mckinsey.com/business-functions/mckinsey-design/our-insights/the-business-value-of-design#)
  - [Role of a Ux Design in an Agile Product Team](https://uxdesign.cc/the-role-of-the-sole-ux-designer-in-an-agile-product-team-497afa8d04ff): Desirability, Viability and Feasibility trade-offs

User experience and user design is an entire profession.

Some modern experiences can include:
- Push Notifications:  Business fit-for-purpose notifications using the [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API) and integrated into the Windows Operating System experience.  Replace mindset of email-based notifications into a notification platform with end-user ability to control notifications.
- Sharing Content Across Platforms:  Ability to share content across platforms similar to sharing news and social-media content.  Allows the ability to communicate effectively in different channels (intranet, CMS, ...).  *[oEmbed](https://oembed.com/)* is one standard for sharing content across platforms with a linkable visual.

There are many modern application experiences users expect in an application.  A short checklist of modern user experience functions relating to presented content are:

- social like : can the content be liked to identify high-value content
- share : does it make sense to have a *share* button to allow sharing with collegues while enforcing access as appropriate
- link : should it be possible to get a link to the content for sharing, bookmarking, reporting.   What are the guarantees on the provided link (transitory, corporate, survives upgrades, ...)
- discuss/comment : can comments be provided for all to see, or to raise a concern to the author (private comment)
- rich link embed : when embedding a link in another application, should a link-preview be provided

### Guidance: Include Ux Design in Agile Product Teams

- [ ] Agile development teams should include user-experience design resources.
- [ ] Agile iterations iterations should include user-experience user-stories.
- [ ] Product teams should plan for iterations for both the user-experience development and the usability testing phases.

## Goal: Accessibility

The Accessible Canada Act received Royal Assent on June 21, 2019, and came into force on July 11, 2019.[^Accessibility]   

In light of no departmental policy, applications should strive to achieve WCAG 2.1 Level AA.  This goal changes by application, and development must ensure they are aware of the business requirements for accessibility.  

WCAG 2.1 Level AA (Double-A) implies:

- Media: Captions are present on live video.  When appropriate, there exists audio description of what’s happening on streaming media.
- Markup: Ability to resize text without breaking layout.  Language is declared in document.
- Design: A minimum contrast of 4.5:1 among elements. Heading tags (h1,h2,h3, etc.) are present and emerge from content organically.
- Forms: If an error is present on a form, the website will: suggest ways to fix it, the user may withdraw and resubmit the form, or the form prompts a confirmation.
- Navigation: Pages can’t be nested or unintentionally obfuscated unless part of a step-by-step process, such as an application or feed result. Navigation follows a semantic structure and is repeated on pages.

### Guidance: Establish Baseline Accessibility Targets for Application

A basic checklist of minimal accessibility guidelines are:

- [ ] Applications should meet WCAG 2.1 Level AA success criteria.
- [ ] Applications should allow users to self-identity accessibility needs through an application profile setting.
- [ ] Applications should be tested for accessibility, including, testing functionality with our accessibility tool suite (page readers, etc)
- [ ] Application develop and product teams must establish accessibility early in develop cycle interactions.  Shift-left accessibility.

## Goal: Embrace DevOps and Agile

Agile and DevOps are modern methodologies that have proven to be successful in business and in modern complex application development.   Agile provides a dynamic, engaging experience for the IT and business teams.  The GC has directed departments to use agile methodologies.

Some principles of Agile DevOps are highlighted below.   

From [DevOpsAgileSkills](https://www.devopsagileskills.org/dasa-devops-principles/):

1. Customer-Centric Action : Short iterations with real-clients
1. Create with the End in Mind : All employees need to see the big picture, and break down role boundaries
1. End-To-End Responsibility : Create teams which support the operations behind what the team hasa developed; *DevOps*!
1. Cross-Functional Autonomous Teams : Fully responsible teams for the product's lifecycle
1. Continuous Improvement : Experiment, iterative, fail, improve.  
1. Automate Everything You Can : Automate software and infrastructure.  Use containers.


From [Coursera - DevOps Culture and Mindset](https://www.coursera.org/lecture/devops-culture-and-mindset/the-westrum-model-for-improving-organizational-culture-8HXtP)

1. __Eliminate Waste__ : Don't code more features than needed.   Aligns with rationalization principle.
1. __Build Quality In__ : Quality is everyone's responsibility.  Verify quality is built into product and process.
1. __Create Knowledge__ : Amplify learning.  Development is constant learning. Create blogs, videos, team-onboarding tutorials, leverage hands-on training environments.
1. __Defer Commitment__ : Make decisions at the right time, with analysis and considerations.  Defer decisions until you have more information.  Understand impact of decisions.   ''*Take your time. When the decision is irreversible, give yourself time and space to think it through. When the decision is easily reversible, don't overthink it.*' - *[Dries - Drupal - Decisions](https://dri.es/principles-for-life)*
1. __Deliver Fast__ : Ensure feedback received early and often allowing to change and adapt.  Deliver in smaller batches which will allow you to deliver faster.
1. __Respect People__ : Lean and DevOps rely on a culture of respect.
1. __Optimize the Whole__ : Employ Systems Thinking.

### Guidance : Adopt Agile and DevOps

Our department is maturing with agile.  A checklist to assess a few aspects of Agile are:

- [ ] The Agile team has all skillsets needed for the product development and operations.
- [ ] The team is delivering to production in an interative manner
- [ ] Team members are dedicated to the development, and, context-switching is minimized through the use work-in-progress limits.

## Goal: Cloud-Native - Future Proof Technology

The [MACH Aliance](https://machalliance.org/)[^Guidance-8] was announced in December 2021.  AWS, MongoDB and others are associated with this alliance.  This alliance defines the strategy for a best-of-breed enterprise technology ecosystem.  MACH is container and  micro-service focused.   MACH does identify key-concepts for use within our data-centre applications; namely modular, API-based and headless.  T

This manifesto is "*Future proof enterprise technology and propel current and future digital experiences*". MACH aligns with the GC EARB directions[^Guidance-5]:

- __M__: Micro-Services (Modular): Individual pieces of business functionality that are independently developed, deployed, and managed. A swappable architecture.
- __A__: API: All functionality is exposed through an API.
- __C__: Cloud: SaaS that leverages the cloud, beyond storage and hosting, including elastic scaling and automatically updating.
- __H__: Headless: Front-end presentation is decoupled from back-end logic and channel, programming language, and is framework agnostic.

his alliance is for cloud-native applications (CNA), and is worthwhile reading for CNA development.  Our constraints may limit our ability to leverage the cloud.  For on-premise constrained systems DevOps practices to automate updating and Kubernetes auto scaling should be prioritized.  A view of how MACH applies to guidance and industry patterns is below.

|MACH|Description|ARA Guidance|Industry Patterns|
|--|--|--|--|
|M - Microservices|Individual *pieces* of business functionality can be deployed and managed|Composable Applications|[Microservices Architecture Style](https://learning.oreilly.com/library/view/fundamentals-of-software/9781492043447/ch17.xhtml)|
|A - API|Functionality exposed via API|Composable Applications|GC API-First, [GC Standards on API](https://www.canada.ca/en/government/system/digital-government/modern-emerging-technologies/government-canada-standards-apis.html)|
|C - Cloud|Leverage SaaS to its fullest including scalability and automation|Security / Policy Restricted|Aligned to MACH|
|H - Headless|Decouple front-end from back-end|Cohesive, Loosely-Coupled Applications, Services and APIs|[Accenture](https://www.accenture.com/nl-en/blogs/insights/headless-architecture-why-its-becoming-the-new-normal)|

Aside:  An interesting article, *MACH Sitecore Architecture*[^Guidance-10] on how a Content Management System (CMS) is attempting to become MACH-compliant; with discussion on impacts to CMS features like editors, and the use of technologies like JAMstack; a static-site generator (SSG) framework.


[^Rationalize-No]: [Basecamp - Feature Selection - Start with No](https://basecamp.com/gettingreal/05.3-start-with-no)

[^Rationalize-Focus]: [Steve Jobs - Focus on Saying No - 1997](https://www.youtube.com/watch?v=H8eP99neOVs)

[^Rationalize-Vision]: [Basecamp - Priorities - Whats the Big Idea](https://basecamp.com/gettingreal/04.1-whats-the-big-idea)

[^Rationalize-Prioritize]: [Basecamp - The Starting Line - Fix Time and Budget, Flexibility on Scope](https://basecamp.com/gettingreal/02.4-fix-time-and-budget-flex-scope)

[^Rationalize-Schedule]: [Fred Brooks 1979 Software Project Management - The Mythical man Month](https://en.wikipedia.org/wiki/The_Mythical_Man-Month). [Book](http://www.worldcat.org/isbn/0-201-00650-2)

[^Guidance-1]: [Reduce Coupling - Martin Fowler IEEE 2002](https://www.martinfowler.com/ieeeSoftware/coupling.pdf).

[^Guidance-2]: [Amazon-AWS Bezos API's - Expose Data and Functionality through service interfaces](https://blog.apievangelist.com/2015/07/09/the-new-aws-api-gateway-anyone-who-does-not-do-this-will-be-fired-thank-you-have-a-nice-day-jeff-bezos/)

[^Guidance-3]: [Mastering API Architecture](www.worldcat.org/isbn/978-1492090632)

[^Guidance-4]: [Fundamentals of Software Architecture](www.worldcat.org/isbn/978-1-4920-4345-4) : Richards, Mark, and Neal Ford. Fundamentals of Software Architecture: An Engineering Approach. First edition. Beijing Boston Farnham Sebastopol Tokyo: O’Reilly, 2020.

[^Guidance-5]: [GC EARB EA Standards and Application Architecture](https://wiki.gccollab.ca/GC_Enterprise_Architecture/Standards/Application_Architecture)

[^Guidance-6]: [Microsoft - Shift Left Testing](https://docs.microsoft.com/en-us/devops/develop/shift-left-make-testing-fast-reliable)

[^Guidance-7]: [TDD for a DevOps World](https://medium.com/swlh/revisiting-test-driven-development-for-a-devops-world-401f1f8d3275)

[^Guidance-8]: [MACH Aliance](https://machalliance.org/)

[^Goals-1]: [Devopedia - SOLID Design Principles](https://devopedia.org/solid-design-principles)

[^Guidance-10]: [MACH Sitecore Architecture](https://www.verndale.com/insights/emerging-technology/hitchhikers-guide-to-sitecore-architecture-in-2022)Guidance

[^Guidance-25]: [CTO - Government of Canada Digital Standards](https://www.canada.ca/en/government/system/digital-government/government-canada-digital-standards.html)

[^Guidance-11]: [Martin Fowler - Bounded Context](https://www.martinfowler.com/bliki/BoundedContext.html)

[^Guidance-12]: [Evans, Eric. Domain-Driven Design: Tackling Complexity in the Heart of Software. Boston: Addison-Wesley, 2004.](www.worldcat.org/isbn/978-0321125217)

[^Guidance-13]: [Appendix B to Directive on Service and Digital - Mandatory Procedures for APIs](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=32604)

[^Guidance-14]: [Wikipedia - Connascense](https://en.wikipedia.org/wiki/Connascence)

[^API-ServiceMesh]: [API Management and Sevice Mesh Checlist - Redhat](https://www.redhat.com/en/resources/api-management-and-service-mesh-checklist)

[^Accessibility]: [Accessibility Act - Summary](https://www.canada.ca/en/employment-social-development/programs/accessible-people-disabilities/act-summary.html)

[^Guidance-15]: [Martin, J. Principles of object-oriented analysis and design. (Prentice-Hall, 1993)](http://www.worldcat.org/isbn/978-0-13-720871-5)

[^Guidance-16]: [12-Factor Application - Heroku - 2011](https://en.wikipedia.org/wiki/Twelve-Factor_App_methodology)
