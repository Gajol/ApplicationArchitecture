<a name="application-reference-architecture"></a>
# Application Reference Architecture


<a name="application-reference-architecture-table-of-contents"></a>
## Table of Contents
*Document Generation Date: 2022-04-24 22:04*

* [Application Reference Architecture](#application-reference-architecture)
    * [Table of Contents](#application-reference-architecture-table-of-contents)
* [Introduction](#introduction)
    * [Out-of-Scope](#introduction-out-of-scope)
* [Definitions](#definitions)
    * [Architecture](#definitions-architecture)
        * [Architecture Quotes](#definitions-architecture-architecture-quotes)
        * [Architecture Style (TOGAF)](#definitions-architecture-architecture-style-togaf)
        * [Architecture Characteristics:](#definitions-architecture-architecture-characteristics)
    * [Application](#definitions-application)
    * [Governance:](#definitions-governance)
    * [Technical Debt](#definitions-technical-debt)
* [Business](#business)
    * [Business Capability Model (BCM)](#business-business-capability-model-bcm)
    * [Process Maps, Information Flows and Value Streams](#business-process-maps-information-flows-and-value-streams)
    * [Business Governance](#business-business-governance)
    * [Business and Technology Environment](#business-business-and-technology-environment)
    * [Discovery](#business-discovery)
* [Application Characteristics and Styles](#application-characteristics-and-styles)
    * [Application Characteristics](#application-characteristics-and-styles-application-characteristics)
        * [Department Application Characteristics](#application-characteristics-and-styles-application-characteristics-department-application-characteristics)
        * [Quality / Non-Functional Characteristics](#application-characteristics-and-styles-application-characteristics-quality-non-functional-characteristics)
    * [Application Architecture Styles](#application-characteristics-and-styles-application-architecture-styles)
* [Application Architecture Guidance](#application-architecture-guidance)
    * [Goal:  Reduce Technical Debt](#application-architecture-guidance-goal-reduce-technical-debt)
    * [Goal: Reduce Content Duplication with URL Design and Search](#application-architecture-guidance-goal-reduce-content-duplication-with-url-design-and-search)
    * [Goal:  Composable Enterprise, Composable Applications](#application-architecture-guidance-goal-composable-enterprise-composable-applications)
        * [Domain Drive Design (DDD) / Bounded Context[^11]](#application-architecture-guidance-goal-composable-enterprise-composable-applications-domain-drive-design-ddd-bounded-context-11)
        * [GC Directive on Service and Digital - Standards on APIs[^13]](#application-architecture-guidance-goal-composable-enterprise-composable-applications-gc-directive-on-service-and-digital-standards-on-apis-13)
        * [Decouple User Interfaces](#application-architecture-guidance-goal-composable-enterprise-composable-applications-decouple-user-interfaces)
        * [SOLID[^15]](#application-architecture-guidance-goal-composable-enterprise-composable-applications-solid-15)
        * [12-Factor Application](#application-architecture-guidance-goal-composable-enterprise-composable-applications-factor-application)
        * [Develop an API Strategy](#application-architecture-guidance-goal-composable-enterprise-composable-applications-develop-an-api-strategy)
        * [Event-Driven Process and Streaming](#application-architecture-guidance-goal-composable-enterprise-composable-applications-event-driven-process-and-streaming)
        * [Composable ERP and HR Enterprise - Gartner](#application-architecture-guidance-goal-composable-enterprise-composable-applications-composable-erp-and-hr-enterprise-gartner)
    * [Goal: Testability, Testable Applications and Automation](#application-architecture-guidance-goal-testability-testable-applications-and-automation)
    * [Goal: Future Proof Technology](#application-architecture-guidance-goal-future-proof-technology)
    * [Goal: User Experience](#application-architecture-guidance-goal-user-experience)
    * [Goal: Accessibility](#application-architecture-guidance-goal-accessibility)
* [Goal: Architecture Strategy](#goal-architecture-strategy)
    * [Creating a Strategy](#goal-architecture-strategy-creating-a-strategy)
        * [Apply Patterns to Formulate a Strategy](#goal-architecture-strategy-creating-a-strategy-apply-patterns-to-formulate-a-strategy)
        * [Concerns of an Architect](#goal-architecture-strategy-creating-a-strategy-concerns-of-an-architect)
        * [Corporate (Enterprise) Context](#goal-architecture-strategy-creating-a-strategy-corporate-enterprise-context)
* [Patterns](#patterns)
    * [Application Architecture Styles](#patterns-application-architecture-styles-1)
        * [Big Ball of Mud - Anti-Pattern:](#patterns-application-architecture-styles-1-big-ball-of-mud-anti-pattern)
    * [Software Design Patterns](#patterns-software-design-patterns)
    * [User Interface Patterns](#patterns-user-interface-patterns)
    * [Other Patterns / Laws](#patterns-other-patterns-laws)
        * [Business Patterns](#patterns-other-patterns-laws-business-patterns)
        * [Cloud Design Patterns](#patterns-other-patterns-laws-cloud-design-patterns)
        * [Microservices Patterns](#patterns-other-patterns-laws-microservices-patterns)
* [References](#references)
    * [Software](#references-software)
    * [Architecture](#references-architecture-1)
    * [Design](#references-design)
    * [Patterns](#references-patterns-1)
    * [Principles](#references-principles)
    * [Government of Canada](#references-government-of-canada)
* [Terms](#terms)
* [TODO](#todo)
    * [TODO 2022-04](#todo-todo-2022-04)
    * [Culture](#todo-culture)
    * [BI](#todo-bi)
        * [Tableau](#todo-bi-tableau)
        * [DAaaS](#todo-bi-daaas)
    * [Data](#todo-data)
        * [Lower Priority](#todo-data-lower-priority)
    * [Notes - Paper to Write-Up](#todo-notes-paper-to-write-up)
* [TO DO](#to-do)
    * [Architecture: (from Gartner)](#to-do-architecture-from-gartner)
    * [Enterprise Overview](#to-do-enterprise-overview)
        * [Guidelines](#to-do-enterprise-overview-guidelines)
        * [Design Methodolgoy??](#to-do-enterprise-overview-design-methodolgoy)
        * [UX Design](#to-do-enterprise-overview-ux-design)
        * [Observability](#to-do-enterprise-overview-observability)
    * [Reference Architecture](#to-do-reference-architecture)
        * [CNA - AWS : Cloud Native](#to-do-reference-architecture-cna-aws-cloud-native)
    * [Example Problems](#to-do-example-problems)
        * [Enterprise Search](#to-do-example-problems-enterprise-search)
    * [Data Availability](#to-do-data-availability)
    * [Framework for Data Governance](#to-do-framework-for-data-governance)
    * [Distributed Multi-Security-Zone Business Process](#to-do-distributed-multi-security-zone-business-process)
    * [Terms](#to-do-terms-1)
    * [CNA](#to-do-cna)
    * [References](#to-do-references-1)
    * [Gartner](#to-do-gartner)
    * [GC](#to-do-gc)
    * [Wikipedia](#to-do-wikipedia)
    * [Documentation](#to-do-documentation)
    * [Standards Bodies](#to-do-standards-bodies)
    * [Frameworks](#to-do-frameworks)
        * [USA](#to-do-frameworks-usa)
    * [Templates](#to-do-templates)
    * [Goal](#to-do-goal)
    * [Thoughts - Describe TRB / AWG differences](#to-do-thoughts-describe-trb-awg-differences)
* [References](#references-2)
* [Goal: Streaming-Based Application](#goal-streaming-based-application)
* [Application](#application-1)
* [Guidance](#guidance)
* [Patterns](#patterns-2)
* [Footnotes - Test](#footnotes-test)


<a name="introduction"></a>
# Introduction
This document outlines the Application Reference Architecture (ARA) as it applies to our department.  

What is architecture in general?  

- *Architecture is the stuff you can’t Google.* - Mark Richards, O'Reilly
- *Architecture is the decisions that you wish you could get right early in a project, product or project lifecycle* - Ralph Johnson & Martin Fowler
- *Architecture is about the important stuff, whatever that is.* - Ralph Johnson & Martin Fowler


The Application Reference Architecture (ARA) borders on what many would consider an enterprise reference architecture.  This document, the ARA,  attempts to provide an overview of the enterprise environment with a focus on application architecture elements.
- Application architecture describes the behaviour of applications used in a business, focused on how they interact with each other and with users. It is focused on the data consumed and produced by applications rather than their internal structure. In application portfolio management, applications are mapped to business functions and processes as well as costs, functional quality and technical quality in order to assess the value provided." - *[Wikipedia - Application Architect](https://en.wikipedia.org/wiki/Applications_architecture#Application_architect).*
- Enterprise architecture documents the whole architecture and all important elements of the respective organization, covering relevant domains such as business, digital, physical, or organizational; and ii) the relations and interactions between elements that belong to those domains, such as processes, functions, applications, events, data, or technologies." - *[Wikipedia - Enterprise Architect](https://en.wikipedia.org/wiki/Enterprise_architecture)*.  


This document documents:
- existing application architecture within our department
- guidelines for technical leaders

This document is intended for:
- technical design leads
- technical development team

<a name="introduction-out-of-scope"></a>
## Out-of-Scope
- This document is neither a vision, nor a strategy nor a roadmap document.   
- This document is neither nor a department culture nor an project management and development process document.
  - Strategy: What we will and will not do, and how govern resources.
  - Culture: People, Processes (Organization / Teams), Communication
  - Development Process: Processes, Tools


<a name="definitions"></a>
# Definitions
<a name="definitions-architecture"></a>
## Architecture

Application Architecture (GC EARB)

: Application Architecture consists of the interaction of applications with each other and with users. It focuses less on internal mechanics and specific programming and more on overall design on how data is consumed and created by the system. It views the interactions between applications, databases, middleware to ensure scalability, reliability, availability and manageability.

Application Architecture (RedHat)
: An application architecture describes the patterns and techniques used to design and build an application. The architecture gives you a roadmap and best practices to follow when building an application, so that you end up with a well-structured app. [[Redhat - CNA - What is Application Architecture](https://www.redhat.com/en/topics/cloud-native-apps/what-is-an-application-architecture)].   

Application Architecture (TOGAF)
: A description of the structure and interaction of the applications as groups of capabilities that provide key business functions and manage the data assets.  [[Application Architect - Wikipedia](https://en.wikipedia.org/wiki/Applications_architecture#Application_architect).]


<a name="definitions-architecture-architecture-quotes"></a>
### Architecture Quotes
:
- *Architecture is the decisions that you wish you could get right early in a project, product or project lifecycle* - Ralph Johnson & Martin Fowler
- *Architecture is about the important stuff, whatever that is.* - Ralph Johnson & Martin Fowler
- *Architecture is the stuff you can’t Google.* - Mark Richards


<a name="definitions-architecture-architecture-style-togaf"></a>
### Architecture Style (TOGAF)
: The combination of distinctive features related to the specific context within which architecture is performed or expressed; a collection of principles and characteristics that steer or constrain how an architecture is formed.

Types of Architecture
: The overall architecture of an enterprise can be described by integrated sub-architecture domains. These are:

  - Business Architecture
  - Application Architecture
  - Information Architecture
  - Technology Architecture
  - Security Architecture
  - Privacy Architecture and
  - Data Architecture

<a name="definitions-architecture-architecture-characteristics"></a>
### Architecture Characteristics:
- Architecture characteristics are the aspects the system must do that is not directly related to the domain functionality. These are often called non-functional requirements but should be considered as Quality Requirements.  

- An architectural characteristics meets three criteria:

  1. specifies a non-domain (*non-functional*) consideration,
  1. influences some aspect of the design, and
  1. is critical/important to the application's success. A few are listed below


- Examples of architectural characteristics:

  - operational characteristics: availability, business continuity, performance, recoverability, robustness, scalability, elasticity.

  - structural characteristics: configurability, extensibility, installability, reusability, localization, maintainabilty, portability, supportability, upgradeability.

  - cross-cutting: authentication, authorization, legal, privacy, security, supportabilty, usability, achievability, compatibilty, accessibility, interoperability.

  - See *[Neal Ford's Presentation with List of Quality Attributes](http://nealford.com/downloads/Evolutionary_Architectures_by_Neal_Ford.pdf)* for more information


<a name="definitions-application"></a>
## Application

Application
: An application, application program or application software is a computer program designed to help people perform an activity

API
: An application programming interface (API) is a connection between computers or between computer programs. It is a type of software interface, offering a service to other pieces of software.  An API may be a web-service call (REST API, ...) or a software library or framework (function calls, methods, libraries, ...).

Front-End & Back-End
: In simple application terms, the front-end of an application is concerned with the presentation to the end-user. In simple application terms, the back-end interacts with the data access layer.

Web Service
: An API to invoke a service over a network.  Many different standards exist for web service APIs (Service Oriented Architecture - SOA and SOAP, REST API, CORBA). gRPC is newer option (2015) using HTTP and ProtoBuf; while more complex than REST APIs, offers programatic interface description language.   gRPC is often used in micro-service architectures.


<a name="definitions-governance"></a>
## Governance:

Governance:
Governance is derived from the Greek word kubernan "*to steer*" is an important responsibility of the architect role. As the name implies, the scope of architecture governance covers any aspect of the software development process that architects (including roles like enterprise architects) want to exert an influence upon. For example, ensuring software quality within an organization falls under the heading of architectural governance because it falls within the scope of architecture, and negligence can lead to disastrous quality problems.


<a name="definitions-technical-debt"></a>
## Technical Debt

Technical debt is somewhat misunderstood in within IT and our department.   Technical debt goes beyond having aging end-of-life applications.  Below are some common definitions used to describe technical debt:

- Technical debt (also known as design debt or code debt, but can be also related to other technical endeavours) is a concept in software development that reflects the implied cost of additional rework caused by choosing an easy (limited) solution now instead of using a better approach that would take longer. [[Technical Debt - Wikipedia](https://en.wikipedia.org/wiki/Technical_debt)].

- Technical Debt is a term coined thirty years ago by Ward Cunningham:

  *Shipping first-time code is like going into debt. A little debt speeds development so long as it is paid back promptly with a rewrite. Objects make the cost of this transaction tolerable. The danger occurs when the debt is not repaid. Every minute spent on not-quite-right code counts as interest on that debt. Entire engineering organizations can be brought to a stand-still under the debt load of an unconsolidated implementation, object-oriented or otherwise.* [Ward Cunningham - 1992].  

  Note: Ward Cunningham is one of the authors of the [Agile Manifesto](https://agilemanifesto.org/)

- The sum of time and effort one has to pay to keep up with the tools one is 'married' to.

- Changes required that are not completed are considered debt, and until paid, will incur interest on top of interest, making it cumbersome to build a project. As a change is started on a codebase, there is often the need to make other coordinated changes in other parts of the codebase, system, solution or documentation. Although the term is used in software development primarily, it can also be applied to other professions.

- Technical debt is a concept in programming that reflects the extra development work that arises when code that is easy to implement in the short run is used instead of applying the best overall solution. - *[Technical Debt - Technopedia](https://www.techopedia.com/definition/27913/technical-debt)*
- Technical debt is commonly associated with extreme programming, especially in the context of refactoring. That is, it implies that restructuring existing code (refactoring) is required as part of the development process. Under this line of thinking refactoring is not only a result of poorly written code, but is also done based on an evolving understanding of a problem and the best way to solve that problem.

- Technical debt may also be known as design debt.

- When taking short cuts and delivering code that is not quite right for the programming task of the moment, a development team incurs Technical Debt. This debt decreases productivity. This loss of productivity is the interest of the Technical Debt. - *[Technical Debt Metaphor - Agile Alliance](https://www.agilealliance.org/introduction-to-the-technical-debt-concept)*


<a name="business"></a>
# Business

The applications we develop support business models.  When an application is part of a business transformation or digital transformation initiative it is important to have a clear understanding of the businesses strategic direction.   Some common artifacts to communicate this are[^1]:

1. Business Glossary
1. Organizational Map
1. Business Capability Model (BCM) : identify and score capabilities against good system design quality attributes {performance, scalability, stability, monitorability, extensibility, security}
1. Process Maps and Re-engineer Processes : Consider [value streams](https://en.wikipedia.org/wiki/Value_stream).  Model process using BPMN.
1. Define the Metrics : Identify what metrics can help assessment and reflection on desired business outcomes. These metrics must be possible to measure and communicate.
1. Understand the Governance Model: Governance is a meta-process. In your value stream, ask how decisions are made, who the authorities are, what roles they have, and what relevant review boards are.   Operational scorecards.
1. Business Architecture in Applications : What business strategy does this application map to?  Why does this project/application matter?  What new capabilities are you creating?  What major uses cases are performed?  Who are the audiences?

<a name="business-business-capability-model-bcm"></a>
## Business Capability Model (BCM)

A common way for the business to communicate what the organization needs and does is through a business capability model (BCM)[^2]. There are many uses for a BCM.   Product owners can use a BCM to drive convergence in technology and business processes to enterprise standards.   Regular review of aligning the BCM with the department strategy and vision can allow enterprise architects and business architects to identify and prioritize the corresponding IT initiatives with business needs.  Internal committees, working groups and forums can collaborate to identify reusable business process and push for adoption across the organization.  Business capabilities, processes, information flows and value streams should be assessed routinely based on efficiency, priority, and complexity.

Our department has a draft Business Capabiltiy Map (BCM) describing the main capabilities required to fulfill our mandate.   To help support the business our technology teams provide a broad range of IT capabilities.   Our IT department supports many networks both nationally and internationally.  Within the IT department, our software development team supports an extensive catalog of applications.

<a name="business-process-maps-information-flows-and-value-streams"></a>
## Process Maps, Information Flows and Value Streams
Information Flows [^4] is a business view of how information flows between business responsibility centres. *The main purpose of an information flow diagram is so that sources that send and receive information can be displayed neatly and analysed.*.  

Introduced in Lean (1950's) a value stream is a set of actions (workflow) to produce value [^3].  Value Stream Mapping is visual tool introduced in Lean Management methodology to display the value stream with define icons to show delays and inventory stages.   An example value stream might be recruitment "street to seat", "hire to retire" and "procure to pay".

A Process Map[^5] defines the standard business process, and who is responsible for the activity.  


<a name="business-business-governance"></a>
## Business Governance

The health of our portfolio needs to improve as identified in our Corporate Risk Profile (CRP).   Several leadership principles have been established over the years to provide guidance when addressing business needs.   Key principles relating to governing and directing architecture and application design are:

1. __Rationalization__:  With a large backlog of valuable business requests and opportunities application functionality must be constantly rationalized.   During the software development phase, requirements must be rationalized against the original approved project scope and other compete business needs.  The costs of increment application development, both in project costs and ongoing costs must be carefully understood.  This is the process of rationalizing business needs and can include the senior management team when necessary.  [*See Guidance - Rationalization for more information*]

1. __Executive Lead / Change Management__:  Projects and programs need executive sponsors who are committed to the change management and rationalization required to allow IT to develop a product.

1. __Business Architecture and Artifacts__:  The business plays a key role in shaping the application.  Business architecture (capabilities, value streams, information flows, organization model) are essential for successful analysis of the business needs during application development. Significant architecture re-work and design waste result if these are unavailable.  As our department adapts agile methodologies, incremental value in the project can be obtained by the agile team including maturing business artefacts as part of the product backlog.

<a name="business-business-and-technology-environment"></a>
## Business and Technology Environment
Our Information Technology (IT) operates in a complex and constrained environment due to the sensitivity of information managed.  Awareness of the legislative and departmental directives and policies is crucial at the outset of application development.   A common phrase used in DevOps is to *shift-left* quality attributes like security and privacy.   Key non-functionality quality requirements derived from our environment should be considered at the outset (e.g., official languages act, accessibilty act, information management).   The non-functional requirements should be realistic and follow the SMART guidelines (Specific, Measurable, Achievable, Realistic, Time-Bount)[^6].


[^1]: Hewitt, Eben. Semantic Software Design: A New Theory and Practical Guide for Modern Architects, 2020.  - *[ISBN 978-1-4920-4594-6](http://www.worldcat.org/978-1-4920-4594-6)*

[^2]: [Wikipedia - Business Capability Model](https://en.wikipedia.org/wiki/Business_capability_model)

[^3]: [Wikipedia - Value Streams](https://en.wikipedia.org/wiki/Value_stream)

[^4]: [Wikipedia - Information Flow Diagram](https://en.wikipedia.org/wiki/Information_flow_diagram)

[^5]: [Wikipeida - Business Process Maps](https://en.wikipedia.org/wiki/Business_process_mapping)

[^6]: [Wikipedia (SMART) Requirements](https://en.wikipedia.org/wiki/SMART_criteria)


<a name="business-discovery"></a>
## Discovery

There are many initiatives within our department that require enterprise and domain architecture effort to recommend the path forward.


1. Identity and Access Management (IdAM):  
Analyze existing identity and access management options to provide multi-domain identity and access to highly  compartmentalized information.


1. Enterprise Integration & Interoperability:  
Analyze steps to mature our ability create a composable enterprise recommended by Gartner.[^1].  This guide recommends creating Reference Architectures which is modular.  The modules can be composed and indepently improved.  "*The framework is based on the ability to assemble and reassemble various digital assets and business elements for real-time adaptability and resilience in the face of uncertainty.*".  The guide identifies the need for business strategy documents, roadmaps and business architecture deliverables to inform reference architecture creation.

1. Enterprise Search:  
Gartner calls the broader enterprise search an Insight Engine. [Gartner - Critical Capabilities for an Insight Engine](https://www.gartner.com/document/4000026?ref=solrAll&refval=312773615).  [[Gartner Magic Quadrant - Insight Engines]](https://www.gartner.com/document/3999454?ref=ddisp&refval=4000026).  Key terms include; connectors, touch points, integrations.  Popular open-source solutions like Solr and Elastic support API integrations for adding and removing content with structured-metadata.   A key to the success of enterprise search is the ability to structure the index information with metadata.  This enables discover and faceted searches.
  - [ ] Enterprise Taxonomy : A deliverable within the Information Management Modernization program (IMmod)


1. Multi-Security Zone Applications:  
Our directorate has been asked to to move workloads to lower security zones.  As a consequence business processes may span security zones.  The cross-domain-solution has been identified as an enabler technology.  What overall application, data, information and security architecture is needed to realize these benefits.    

1. Managing Media
Our department manages multimedia (images, audio and video files) as well as file-types on a diverse range of applications.  Media management can be addressed be a Media Management Platform and a Digital Experience Platform (DXP).  Industry leaders include OpenText, Oracle and Salesforce.  While some Content Management Systems (CMS) also support DXP features many new market entrants are SaaS-based and require cloud connectivity (e.g, Sanity.io).   OpenText DXP() is not in the top-magic quadrant; however it deserves consideration due to GCdocs.
- [OpenText DXP](https://www.opentext.com/products-and-solutions/products/customer-experience-management/digital-experience-platform)
- [Opentext Why you Need a DXP](https://blogs.opentext.com/digital-experience-platform/): *Orchestrating a cohesive, contextual experience that meets brand standards, achieves business goals across all channels and touchpoints, while it delights the recipient, is a massively difficult task.*

Features of a DXP:
- Content Management System
- Media Asset Management
- Digital Asset Management (media and non-media content)
- Headless DXP / CMS : Provide back-end features expose media assets via API's.


TODO - reference Confluence ITOD Dependencies document
TODO - Add Enterprise Interoperability to ITOD Dependencies


[^1]: [Gartner- Ignition Guide to Building Reference Architectures for a Composable Business](https://www.gartner.com/document/4008989?ref=solrAll&refval=323632540)


<a name="application-characteristics-and-styles"></a>
# Application Characteristics and Styles

TOAG defines Architecture Style as *the combination of distinctive features related to the specific context within which architecture is performed or expressed; a collection of principles and characteristics that steer or constrain how an architecture is formed.*.   Depend ding on the desired architecture characteristics and different style will be chosen.

  - The GC Digital Operations Strategic Plan[^2] indicates the priorities for services/applications should be *developing and delivering services that, by design, put users first by being accessible, inclusive, secure and easy to use, and that respect privacy and choice of official language*.   This is mostly focused at services the public consumes, versus, services and applications our internal public servants use.


<a name="application-characteristics-and-styles-application-characteristics"></a>
## Application Characteristics
As part of the analysis and design some high-level characteristics of the application should be assessed.   Some of these attributes may be official documented as part of the project and application development, and others may have to be assumed or derived for requirements.

<a name="application-characteristics-and-styles-application-characteristics-department-application-characteristics"></a>
### Department Application Characteristics

|Attribute|Description|Note|
|--|--|--|
|Criticality|How critical is this application to the business. This is sometimes referred to as Tier-1, 2, 3.|The department lacks an official list of application criticality.   Based on criticality, and TBS guidance, critical applications must have certain quality components like a business continuity plan (BCP) and a Disaster Recover Plan (DRP).  This need to maintained and practised like fire alarms on a regular basis.
|Security Profile|Based on the security triad of Confidentiality, Integrity and Availability (CIA) and indicating the impacts of integrity and availability to the organization (High, Medium, Low).|Common profiles are PBMM (Protected-B, Medium, Medium) and TSHH (Top Secret, High, High).  The security profile can help guide development of quality requirements (non-functional requirements)|
|Information Classification|What classification of information is managed by the system|Unclassified, Confidential, Protected A/B/C, Secret and Top Secret are common security classifications|
|IM Repository Type|Identifies whether the information in this system is transitory or corporate.|Based on the repository type additional requirements relating to managing the information through its lifecycle are required. Reference [Guideline on Service and Digital](Requirements for departments under the Directive)|
|Information Business Type|Our department treats operational information different from administrative information.|The distinction is unclear, and there are few guidelines to help projects to help manage this distinction.   Applications are categorized as managing operational or administrative information.  For example, CW is administrative, CWOPS is operational (however only extremely limited operational information is permitted in CWOPS).|

<a name="application-characteristics-and-styles-application-characteristics-quality-non-functional-characteristics"></a>
### Quality / Non-Functional Characteristics
Identifying the key quality attributes of the system is required to chose an effective architecture style.  Trade-offs between complexity, scalability, observability, reliability and other attributes is required.  No single architecture style is suitable for all applications.


<a name="application-characteristics-and-styles-application-architecture-styles"></a>
## Application Architecture Styles
Architectural style is defined as a set of characteristics and features that make a building or other structure notable or historically identifiable. Architecture styles are been established and evolved over the years.   Some common application architecture styles are[^1]:

  - Distributed: Microservices Architecture : pros (reliablity, modularity, elasticity, +++), cons: (cost, complexity, ...)

  - Distributed: Orchestration - Service Oriented Architecture (~2005) :
    - pros:  (good elasticity, fault tolerance, scalability), cons: (complexity, testability, cost, ...).  
    - cons: A big weakness of SOA was the use of a common platform for all services deployed (e.g., Oracle SOA Suite, IBM WebSphere, DataPower, MessageBroker).  SOA also required stateful services and sharing of context (tight-coupling).  
    - note, SOA promised loose-coupling, scalability and fault tolerance [Josuttis, N. M. SOA in practice. (O’Reilly, 2007)
](http://www.worldcat.org/978-0-596-52955-0)] however these were difficult to achieve with SOA.


  - Distributed: Event Driven Architecture : pros (fault tolerant, modular, good cost), cons: (complexity, testability, )

  - Monolithic: Layered:  3-tier/N-Tier/Client-Server :  pros (simplicity and cost), cons: (scalability, fault tolerance, deployability, testability, modularity)

  - Monolithic: Pipeline: pipelines & filters : pros (simplicity and cost), cons: (scalability, performance, ...)




[^1]: [Fundamentals of Software Architecture](www.worldcat.org/isbn/978-1-4920-4345-4) : Richards, Mark, and Neal Ford. Fundamentals of Software Architecture: An Engineering Approach. First edition. Beijing Boston Farnham Sebastopol Tokyo: O’Reilly, 2020.

[^2]: [GC Digital Oprations Strategic Plan - 2021-2024](https://www.canada.ca/en/government/system/digital-government/government-canada-digital-operations-strategic-plans/digital-operations-strategic-plan-2021-2024.html)




<a name="application-architecture-guidance"></a>
# Application Architecture Guidance


<a name="application-architecture-guidance-goal-reduce-technical-debt"></a>
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


<a name="application-architecture-guidance-goal-reduce-content-duplication-with-url-design-and-search"></a>
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


<a name="application-architecture-guidance-goal-composable-enterprise-composable-applications"></a>
## Goal:  Composable Enterprise, Composable Applications
A composable application is a key pattern in micro-services.   In our current environment and infrastructure environment, the focus should be on designing *single purpose services" on virtual machines.   Applications should be thought of as thin user interfaces on top of this collections of services.  The design of the services/APIs is important to success of the project and application.  Some strategies to help in the design and communication of the service-architecture are:

<a name="application-architecture-guidance-goal-composable-enterprise-composable-applications-domain-drive-design-ddd-bounded-context-11"></a>
### Domain Drive Design (DDD) / Bounded Context[^11]

DDD is useful for large transformation and modernization projects like HR and ERP modernization.   A bounded-context breaks the large domain into a cohesive boundary.  Within this bounded-countext services can be designed and exposed.  Refer to *Domain Driven Design*[^12] for details on this concept.

<a name="application-architecture-guidance-goal-composable-enterprise-composable-applications-gc-directive-on-service-and-digital-standards-on-apis-13"></a>
### GC Directive on Service and Digital - Standards on APIs[^13]

The Direcitve on Service and Digial provides high-level guidance on API design which should be implemented:
  - Build APIs against the business requirements
  - Work with the developers who are expected to consume your API
  - Expose APIs using industry accepted open standards

<a name="application-architecture-guidance-goal-composable-enterprise-composable-applications-decouple-user-interfaces"></a>
### Decouple User Interfaces

Design the web UI to work across ~~mobile devices, tablets, and~~ desktops at a minimum.  Text is ~~striked-out~~ to indicate we currently develop applications for use on a known standard-provisioned desktop with two-monitor.

1. APIs, and the consuming services and applications should have *high-cohesion* and *losse-coupling*.  This is especially important as software communicates across business domains.   Application Programming Interfaces (APIs) should be used to reduce; especially at the high-level interactions between components.[^1][^2][^3].   Architectural patterns to support composable applications include:

  - High Cohesion: *The Fundamentals of Software Architecture*[^4], in Chapter 3 on Modularity, describes how to measure modularity.  Cohesion can be measured in terms of functional, communication, procedural, logical and other dimensions.    
  - Low Coupling  : Use data access layers between application business logic and the database layer.  Coupling is more difficult to understand and requires assessment of connascence[^14}].  Some common guidelines are:
    - break system and APIs into encapsulated replacements
    - minimize any connascence (depedecny relationships between objects) between systems

<a name="application-architecture-guidance-goal-composable-enterprise-composable-applications-solid-15"></a>
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


<a name="application-architecture-guidance-goal-composable-enterprise-composable-applications-factor-application"></a>
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


<a name="application-architecture-guidance-goal-composable-enterprise-composable-applications-develop-an-api-strategy"></a>
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

<a name="application-architecture-guidance-goal-composable-enterprise-composable-applications-event-driven-process-and-streaming"></a>
### Event-Driven Process and Streaming

Event Driven Architectures are useful for distributed, asynchronous, scalable and performant systems  Leverage events as a core principle.  Publish these events, subscribe to these events (streaming data flows).

  - event-based data flows for batch and real-time processing
  - message-oriented over transactions.  An interesting video presentation on "*[Why to use Events by Avdi Grimm - Nordic JS No Return: Moving beyond transactions](Nhttps://avdi.codes/talks/no-return/)*".



<a name="application-architecture-guidance-goal-composable-enterprise-composable-applications-composable-erp-and-hr-enterprise-gartner"></a>
### Composable ERP and HR Enterprise - Gartner

[Gartner - The Future of Enterprise Resource Planning (ERP) is Composable](https://www.gartner.com/document/3991664)[^9] defines a *Composable ERP* as an adaptive technology strategy that enables the foundational administrative and operational digital capabilities for an enterprise to keep up with the pace of business change. This strategy delivers a core of composable applications and, as a service, software platforms that are highly configurable, interoperable, and flexible to adapt to future modern technology.  

The key Gartner recommendations are valid for ERP and HR modernization initiatives:
- [ ]  Define business capabilities through road mapping exercises
- [ ]  Reduce reliance on customizations and proprietary-ERP
- [ ]  Continuously deliver incremental business value in a modular mode
- [ ]  Build an ERP team with wide-ranging skills (Adopt a DevOps for ERP). Ensure adequate skill development and training


<a name="application-architecture-guidance-goal-testability-testable-applications-and-automation"></a>
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


<a name="application-architecture-guidance-goal-future-proof-technology"></a>
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


<a name="application-architecture-guidance-goal-user-experience"></a>
## Goal: User Experience
Our user experience can be improved by looking at modern applications and their integration into varying computing platforms (desktop, mobile, tablet).  Some modern experiences can include:
- Push Notifications:  Business fit-for-purpose notifications using the [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API) and integrated into the Windows Operating System experience.  Replace mindset of email-based notifications into a notification platform with end-user ability to control notifications.
- Sharing Content Across Platforms:  Ability to share content across platforms similar to sharing news and social-media content.  Allows the ability to communicate effectively in different channels (intranet, CMS, ...).  *[oEmbed](https://oembed.com/)* is one standard for sharing content across platforms with a linkable visual.

<a name="application-architecture-guidance-goal-accessibility"></a>
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




<a name="goal-architecture-strategy"></a>
# Goal: Architecture Strategy

<a name="goal-architecture-strategy-creating-a-strategy"></a>
## Creating a Strategy
The architectural strategy for a program; whether they are renewal efforts (ERP, HR, IM, Collaboration) or greenfield (Case Management) should follow methodologies proven to be successful.

The guidance below is a summary of __Technology Strategy Patterns__. [[Hewitt, E. Technology strategy patterns: architecture as strategy. (O’Reilly, 2018)](http://www.worldcat.org/isbn/978-1-4920-4087-3)]

<a name="goal-architecture-strategy-creating-a-strategy-apply-patterns-to-formulate-a-strategy"></a>
### Apply Patterns to Formulate a Strategy
  - Context:  Trends, Constraints, Stakeholders
  - Understand:  Research, analyse and understand your stakeholders, the environment and the technology landscape.
  - Options: Identify options in the products, services and technology roadmaps
  - Analysis: Analyse options.
  - Recommendation:  Make recommendation and obtain approval.

<a name="goal-architecture-strategy-creating-a-strategy-concerns-of-an-architect"></a>
### Concerns of an Architect
  - Contain entropy:  Show a path in a roadmap; garnering support for that vision through communication of guidelines and standards; and creating clarity to ensure efficiency of execution and that you’re doing the right things and doing things right.
  - Specify Non-Functional Requirements / Quality Requirements: The "..ility" list.   scalability, availability, maintainability, manageability, monitorability, extensibility, interoperability, portability, security, accessibility, observability, conformity (laws, directives). [Wikipedia - Quality Attributes](https://en.wikipedia.org/wiki/List_of_system_quality_attributes)
  - Determine trade-offs: Identity the least-bad option.

1. Patterns / Tools
The book goes in significant theory like propositional theory; and the advice is aimed more at the private and political sectors.  The intent is to create an hypothesis and then validate it formally.

Some tools suggested are:
- Logic Tree
- SWOT - Strengths, Weaknesses, Opportunities and Threats
- [Ansoff Growth Matrix - Harvard Business Review 1957](https://en.wikipedia.org/wiki/Ansoff_matrix) : 2X2 matrix with Market and Products with values of Current/New.

|Ansoff Growth Matrix|Market-Current|Market-New|
|--|--|--|
|__Product__|__New__|__Current__|
|__New__|Market Development Strategy: Develop new markets for new products|Diversification Strategy: Develop new products in new markets|
|__Current__|Market Penetration Strategy: Gain market share with current products and market|Product Development Strategy:  Develop new products in current markets.|

<a name="goal-architecture-strategy-creating-a-strategy-corporate-enterprise-context"></a>
### Corporate (Enterprise) Context
Position the enterprise for competitive advantage.
- Stakeholder Alignment : A top-down approach, determine the organization chart, and *determine what leaders at the VP, Senior Director, and/or Director level matter in terms of your strategy*.  Based on the stakeholder matrix determine their influence and impact and associate an approach to working with them (monitor, keep informed, maintain confidence, collaborate).
- RACI
- Life-Cycle Stage
- Value Chain : Identify where value is created (hint: legal, intrastructure, IT, HR, procurement are supporting the value chain.).  Maximize efficiency and value.
- Growth-Share Matrix
- Core/Innovation Wave
- Investment Map



<a name="patterns"></a>
# Patterns
Patterns are known, proven solutions.  Patterns help us communicate architecture and design to each other.

Drive strategy with patterns.
- application architecture patterns
- software design patterns : Decorator, Factory, Visitor, Pub/Sub, ..
- user experience patterns


<a name="patterns-application-architecture-styles-1"></a>
## Application Architecture Styles

<a name="patterns-application-architecture-styles-1-big-ball-of-mud-anti-pattern"></a>
### Big Ball of Mud - Anti-Pattern:

A "Ball of Mud" application is an application without structure, software making direct database calls, with no concerns for design.  In 1997, Brian Foote and Joseph Yoder, coined this the Big Ball of Mud:


  *A Big Ball of Mud is a haphazardly structured, sprawling, sloppy, duct-tape-and-baling-wire, spaghetti-code jungle. These systems show unmistakable signs of unregulated growth, and repeated, expedient repair. Information is shared promiscuously among distant elements of the system, often to the point where nearly all the important information becomes global or duplicated.*

The overall structure of the system may never have been well defined.

Our department has an abundance of *ball of mud* applications.

Other useful architecture patterns/styles are described in "Application Architecture Styles".


<a name="patterns-software-design-patterns"></a>
## Software Design Patterns
In software engineering, a software design pattern is a general, reusable solution to a commonly occurring problem within a given context in software design.  There are many great books on software design patterns.  Wikipedia's Software Design Patterns[^3] is a good resource.

Famous design pattern books include:

- 1995 - Design Patterns: Elements of Reusable Object-Oriented Software[^5]
- 2003 - Fowler - Patterns of Enterprise Application Architecture[^4]


<a name="patterns-user-interface-patterns"></a>
## User Interface Patterns
Many patterns exist for a successful user-experience (search, navigation, filters, comparisons, grids, ...)
- [Blueprints by CodePros - Patterns](http://tympanus.net/codrops/category/blueprints/) : The Blueprints are a collection of basic and minimal website concepts, components, plugins and layouts with minimal style for easy adaption and usage, or simply for inspiration.


- [Google Material UI](https://material.io/search.html?q=pattern) : An exensive library of UI patterns including [Search](https://material.io/archive/guidelines/patterns/search.html), Navigations, Onboarding and other common use-case patterns.




<a name="patterns-other-patterns-laws"></a>
## Other Patterns / Laws

<a name="patterns-other-patterns-laws-business-patterns"></a>
### Business Patterns

Caveman Pattern
: Reliving old problem experience with new projects even though the risk is extremely low.  (O'Reilly Fundamentals of SW Architecture)


Conway's Law
: Conway's Law asserts that organizations are constrained to produce application designs which are copies of their communication structures. This often leads to unintended friction points. The ['Inverse Conway Maneuver'](https://www.thoughtworks.com/radar/techniques/inverse-conway-maneuver
) recommends evolving your team and organizational structure to promote your desired architecture. Ideally your technology architecture will display [isomorphism](https://en.wikipedia.org/wiki/Isomorphism_(sociology)) with your business architecture.

  - Isomorphism : In sociology, an isomorphism is a similarity of the processes or structure of one organization to those of another, be it the result of imitation or independent development under similar constraints.  In our application development context, it implies, that different technology branches, division and sections develop their products under similar constraints.



<a name="patterns-other-patterns-laws-cloud-design-patterns"></a>
### Cloud Design Patterns

1. [Microsoft Azure Cloud Design Patterns](https://docs.microsoft.com/en-us/azure/architecture/patterns/)
1. [AWS Prescriptive Guidance Patters](- [AWS Prescriptive Guidance Patterns](https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/welcome.html)) : 2,000 pages of patterns for cloud, DevOps, communication, testing, governance, IoT, Security, Servierless, Spark, ETL, A/B Testing, Canary Testing, ...


<a name="patterns-other-patterns-laws-microservices-patterns"></a>
### Microservices Patterns
Sam Newman's book, "Building Microservices, Defining Fine-Grained Systems"[^1] defines many pattnerns, including patterns to migrate from monoliths to microservices.   These patterns include:

  - Strangle Fig Pattern: . You intercept calls to the existing system—in our case the existing monolithic application. If the call to that piece of functionality is implemented in our new microservice architecture, it is redirected to the microservice.
  - Saga Pattern
  - References legacy Enterprise Integration Patterns (EIP)[^2]
  - Backend for Front-End (BFF) : similar to an aggregating gateway, but limited to a single user-interface.  For example have a BFF for an Android vs Applie client.

References for microservices patterns:

  - [Sam Newman Patterns](https://samnewman.io/patterns/)
  - [Martin Fowler](https://martinfowler.com/)






[^1]: [Building Microservices - Sam Newman](www.worldcat.org/isbn/978-1492034025)

[^2]: Gregor Hohpe and Bobby Woolf, Enterprise Integration Patterns (Boston: Addison-Wesley, 2003).

[^3]: [Wikepeida - Software Design Patterns](https://en.wikipedia.org/wiki/Software_design_pattern)

[^4]: [Fowler - Patterns of Enterprise Application Architecture](www.worldcat.org/isbn/978-0-321-12742-6) : Fowler, Martin. Patterns of Enterprise Application Architecture. The Addison-Wesley Signature Series. Boston: Addison-Wesley, 2003.

[^5]: [Design Patterns: Elements of Reusable Object-Oriented Software](www.worldcat.org/isbn/0-201-63361-2)  : Gamma, Erich, ed. Design Patterns: Elements of Reusable Object-Oriented Software. Addison-Wesley Professional Computing Series. Reading, Mass: Addison-Wesley, 1995.




<a name="references"></a>
# References


<a name="references-software"></a>
## Software
<a name="references-architecture-1"></a>
## Architecture
- [Richards, Mark. & Ford, Neil. Fundamentals of software architecture: an engineering approach. (O’Reilly, 2020)](http://www.worldcat.org/isbn/9781492043454)

[fundamentalsofsoftwarearchitecture]: http://www.worldcat.org/isbn/9781492043454 "Richards, Mark. & Ford, Neil. Fundamentals of software architecture: an engineering approach. (O’Reilly, 2020)]"

<a name="references-design"></a>
## Design
- [1.Vernon, V. Implementing domain-driven design. (Addison-Wesley, 2013)] http://www.worldcat.org/isbn/9780133039900

<a name="references-patterns-1"></a>
## Patterns
- [Hewitt, E. Technology strategy patterns: architecture as strategy. (O’Reilly, 2018)](http://www.worldcat.org/isbn/978-1-4920-4087-3)

- [Design patterns: elements of reusable object-oriented software. (Addison-Wesley, 1995).](http://www.worldcat.org/isbn/978-0-201-63361-0)
- [Hewitt, E. Technology strategy patterns: architecture as strategy. (O’Reilly, 2018).
](http://www.worldcat.org/isbn/978-1-4920-4087-3).  Analysis, Strategy Creation and Communication Patterns.  Audience is technical leads and architects attempting to recommend a strategy.

<a name="references-principles"></a>
## Principles
- [Martin, J. Principles of object-oriented analysis and design. (Prentice-Hall, 1993)](http://www.worldcat.org/isbn/978-0-13-720871-5)


<a name="references-government-of-canada"></a>
## Government of Canada
- [Digital Standards - Playbook](https://www.canada.ca/en/government/system/digital-government/government-canada-digital-standards.html) : Provides aspirational guidance around key themes; Design with Users, Iterate and improve frequently, Work in the open by default, Use open standards and solutions, Address security and privacy risks, Build in accessibility from the start, Empower staff to deliver better services, Be good data stewards, Design ethical services, Collaborate widely.  Also available as GitHub Pages - *[Digital Playbook - GitHub Pages](https://canada-ca.github.io/digital-playbook-guide-numerique/views-vues/standards-normes/en/1-design-with-users.html?wbdisable=true)*.   These digital standards are common standards used internationally and align well with these *[Digital Principles](https://digitalprinciples.org/principles/)*.

- [Directive on Service and Digital](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=32601) : Defines EARB assessment, API use, Network use, IT provisions standards (minimum screen size, .ERP standard, ...)

  - [Standards on APIs](https://www.canada.ca/en/government/system/digital-government/modern-emerging-technologies/government-canada-standards-apis.html) - also as [Appendix B to Directive on Service and Digital - Mandatory Procedures for APIs](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=32604)

  - [GC EARB EA Standards and Application Architecture](https://wiki.gccollab.ca/GC_Enterprise_Architecture/Standards/Application_Architecture)


- [Policy on Service and Digital](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=32603) : Defines role of TBS CIO and Deputy Heads.  Defines roles of SSC, PSPC, LAC, CSE departments.

  - These replaced *[Directive on Management of Information Technology - Archived 2020-03-31](https://www.tbs-sct.gc.ca/pol/doc-eng.aspx?id=15249#appC)*

  - [GC Information Management Guidelines - 1996](https://www.tbs-sct.gc.ca/pol/doc-eng.aspx?id=13832&section=html)



- [GC TBS Information Management Strategic Plan - 2017-2021](https://www.canada.ca/en/government/system/digital-government/digital-government-innovations/information-management/tbs-information-management-strategic-plan.html): Includes strategic goals and objectives.

- [GC Cloud Adoption Strategy](https://www.canada.ca/en/government/system/digital-government/digital-government-innovations/cloud-services/government-canada-cloud-adoption-strategy.html)




<a name="terms"></a>
# Terms

Value Streams: See also [Scaled-Agile Framework - SAFe - Value Streams](https://www.scaledagileframework.com/value-streams/).  Agile Release Trains (ART) within each value stream develop the business solutions used by the operational value streams. ARTs are cross-functional and have all the capabilities—software, hardware, firmware, and other—needed to define, implement, test, deploy, release, and where applicable, operate solutions.


<a name="todo"></a>
# TODO

<a name="todo-todo-2022-04"></a>
## TODO 2022-04
Themes : API, consistency, cohesive

Architectural Examples :
To demonstrate architecture, c4model, ... (mach model)
1. Collaboration:   What is collaboration?  What is it not?
- Contribute and read centrally.   e.g., VISIOPS - essentially List management but done centrally with CW
- Collaboration is not "the intranet"

1. Strategy: ....

1. Collaboration Capabilities
- share, version control, notify,

1. Technology supporting strategy:
  - Departmental : CW, Confluence, GCdocs, Drupal, ...
  - IC / 5EE : BallistaPlus
  - task management : ITBM-PM, JIra, ...
  - workflow :


1. Key Pillars to Success
  - Governance:  Major IM concerns about sprawl of transitory information.
    - Sprawl, Lifecycle, Admin vs Operational workoads
    - IM, eDiscovery, Hold, Disposition
    - ECM integration, enterprise taxonomy
    - search, access,
    - L&D
    - IS audit, access control, anonymous access,
    - operations: monitoring / NOC

1. Legacy ITSS Pillars (2012) JP Lachance
- Quality, Communications, Training, Operations


Roles
- full stack developer
- back end developer
- systems integrator

Agile
- SAFe
- LEAN : WIP Limits, Visual Display, Feedback Loop
- Scrum : Retrospective, Backlog, Grooming, Poker (called??)

API's
- governance : between domain-models.   HR, ERP.   Smaller domain-Models
- master data (shared data across many systems), system of truth

Ux - GCcollab

Navita
- work backwards
- future proof

Decision Making
- Problem Solving, Kepner-Trege.   The decision might not be right, but did I go about it in a skilful way.  

React
- Why React .

Architecture - 4 Parts (not sure if from SAA-C02 Pearson AWS Certification test - on O'Reilly)
1.  Architecture versus Design
- How to collaborate with development teams to make architecture work.

2. Wide Breadth of Technical Knowledge with some Technical Depth
- Allows architect to see solution, problems and options that others do not server

3. Understanding, Analyzing and Reconciling Trade-Offs Between Solution & Technologies

4. Understanding Importance of "Business Drivers" and how they translate to architectural concerns.

<a name="todo-culture"></a>
## Culture
- Westrum Culture:  Useful, Timely, Relevant

<a name="todo-bi"></a>
## BI
<a name="todo-bi-tableau"></a>
### Tableau
- Anaylitcs, Calculations, Data Prepparation, Data Relationships, Data Visualizations, Excel and Tableau, Performance, Storytelling, Tableau Server.

<a name="todo-bi-daaas"></a>
### DAaaS
- Kubeflow

<a name="todo-data"></a>
## Data
- DRA : Pragmatic, Feasible, "I can build it, consistently.".  Clear guidance to get of debt.  How to get out of debt, moving forward.
  - for initiatives have you gone to forums (TRB, AWG, ...)
  - other bodies: GC, EDO, CIO, CSO, EPMO, FIMB, SMB, PM, IMB, CMC
  - pillars to move forward
- mutable data

<a name="todo-data-lower-priority"></a>
### Lower Priority
DevOps
- Puppet vs Ansible vs Terraform
- Travis, Jenkins, ...

Data Mesh

ML Pipeline Architecture.  Policy on Automated Decision Making.



<a name="todo-notes-paper-to-write-up"></a>
## Notes - Paper to Write-Up
- GraphQL / RESTful
- microservices,
- REST HATEOAS
- Scrum, LEAN, LEAN Six Sigma
- OReilly SW Arch Patterns - monolith, etc

- Raman - Arch Phone-Call 2022-01-12
 - Had talk with Mike and he likes API approach and wants to be included
 - Had talk with Amy and Raman was unable to communicate my ideas of API gateway and the value
 - Amy mentioned CMS / DL review with TRB and pattern exists to expose things into lkae.
 - Amy we have a pattern for cms to lake that altor should follow.  If this pattern does not align with my Vision for api management...  ...timely for better approach..chat with Amy
 - Ent search ODP
 - Ent Search of everything....pattern...Ent layer...Build special index........LRS Extract...
 - Leverage Gartner.
 - Enterprise pattern push i n discovery
   - ...by SPM
   - ...what is MAM...open-siurce MAM,  image Strategy
   - - ...by Archs...tech media management, search, ...
   - ...install on-prem...
 - Reference Arch  
   - look and know how to integrate to lake, to ecm how expose data to catalog, BI,. Search
   - TRB to Lake via REST API...
   - ...Q'S does it reflect API vision...
   - Amy meaning of API management...talk to her... focus of API management
  - What is Important arch to invest in...
    - IdAM...
    - Palantir access.
    - CMS model different classifications can see 90% of case....HS case....
 - EDA
 - Help projects to skeleton  to build projects to.
 - Side of desk....discovery roadmap to focus....
 - ECE
- Raman - Arch Bi-Lat 2021-12-16
 1. HR mod
 1. Ref Arch - mature organizations
 1. Bricks
 1. PB U/L
 1. CMS / P-app
 1. CMS - Drag & Drop
 1. CBSA SSA
 1. Partnership - Corey, Jackey Vanessa - SEL MERITAGE, OPSCOM  
   - Guidebook Process, Principles
   - IM, Access, IdM, ABAC, s.15 access control
   - ICIS model / keystone model  
   - Awareness of past, problmes, guide, problems it created, what to look out for
   - adhere to principles
   - ideas - Navita - c4model
   - multi-security zone
   - Amy said talk to Francis - Vision, Containers, AppDev, CI/CD
   - Apps/Data - Arteryx
   - Access Control - Hashicorp / Vault
 1. CMS not deploying in March.   Vanessa said not ready.  Release Mangemetn Plan - not time driven, want more features.
 1. UK Digital Services & Technoloyg (DST) Strategic Plan - 2018 - ICT Strategy 2018 - IaaC 23124
 1. Google Zanzibar.  Lighthouse - measures site for accessibility.
 1. OR - 3335 ORS by 1 person in 6 monhts.  Client of Intelligence - CAF
 1. Task Management : What is solution?  Responded, who are the tasks being managed by (i.e., is the user-base within department or OGD - does solution need to cross air-gaps)
 1. Raman: 4 Pillars:
   - Consistencys: leverage same architecture, design patterns to help DEV drive consistency & future staff mentoring .
   - Integrit, Robustness, Consistency
   - Observability
   - Data Driven Testability
 1. Air Gap, DCI, On-Premise, Access Model (Case File, CodeName), eCDS, tokenization (Rube Goldberg idea of Workday)
   - CMS, DL, P-App : LRS extract, visibility labels, system of record for entity
   - Ref Arch : c4model
   - Patterns: 5EE, EA, Fowler, ... , 12factores (web-app) SOLID, Design Pasterns - Booch, OWASP, CCCNS (CSE Cyber Centre)
   - Patterns;  BFF / FE/BE, ..
   - What affordances has our culture provided you?
   - least wrong answer, most right answer : justification can be "developer experience"  
   - Guidance: Courts, Classified Information, ...
 1. Alpinist : Marc-Andre Leclerc
 1. PPT - People, Process, Technology
 1. Data-Sentinel
- Upsolver, Snowflake ( Kafka, AWS Kenesis, ) -
- Databricks (.../drive/...)
- ../Downloads
 - Data Sentinel - GRC / GPDR /
 - Gartner - How_to_Document_Appl_750245_ndx.pdf  (../Downloads)
 - Good-Cheap-Fast.jpg (../Downloads)
 - 2017 - Martin Kleppmann Designing Data-Intensive Applications(2017)
 - Dataiku-DataLabelling.pdf
1. NIH (Raman shared 2018 strategy) - more surfing:
  - [ NIH - EA Management as a Solution for Big Data 0 2020](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7813431/pdf/10257_2020_Article_500.pdf) - [NIH EA - Persisent Link](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7813431/)
  - [NIH EA - dated 1995 - 2003](https://ocio.nih.gov/ITGovPolicy/Pages/Enterprise-Architecture.aspx)
  - [NIH Accessiblity - Section 508](https://ocio.nih.gov/ITGovPolicy/NIH508/Pages/default.aspx): The NIH Office of the Chief Information Officer (OCIO) is responsible for the oversight of the Section 508 program at NIH. Section 508 refers to an amendment that was added to an existing law -- the Rehabilitation Act of 1973 that requires all electronic and information technology (EIT) that is developed, procured, maintained, or used by the Federal government be accessible to people with disabilities.
  - [NIH - EA](https://hr.nih.gov/working-nih/competencies/competencies-dictionary/enterprise-architecture) - Key Behaviours: ....
  - [NIH EA Search Results](https://search.nih.gov/search?affiliate=nih&query=%22enterprise+architecture%22)


<a name="to-do"></a>
# TO DO
- [ ] : Enterprise Reference Architectures
- [ ] : Enterprise Application Reference Architecture
- [ ] : [c4model](https://c4model.com/) - system __c__ontext, __c__container, c__omponent, __c__ode
- [ ] : Scope/Audience : identify scope (Gartner How to Doc App Arch recommendation)
- [ ] - Developer Experience : How can archtecture improve Developer Experience (modern technology, known expecations, concern resolution channels, ...)
- [ ] - Interrogatives What-Date, How-Function, Where-Network, Who-People, When-Time, Why-Motivation. Refer to [DoD AF](https://dodcio.defense.gov/Library/DoD-Architecture-Framework/dodaf20_interrogatives/)
- [ ] - Applicability to Agile - from [Gartner 2021 - How to Document Application Architecture - G00750245](https://www.gartner.com/document/4008341) *Which framework you use matters less than using a framework in the first place. Bear in mind that the more heavyweight and prescriptive the framework is, the less well-suited it is to agile development. If your internal processes call for you to create detailed architecture documentation in the early phases of a development effort, then they’re not agile.*
- [ ] GC Cloud Guidance : NO longer "Cloud First", but Cloud ???
- [ ] GC Digital Standards


<a name="to-do-architecture-from-gartner"></a>
## Architecture: (from Gartner)
- Concepts:,
- Principles:
- Rules:
- Patterns:
- Interfaces:
- Standards:
- Reference Models:

Software / Code Quality: (from Gitlab) : code quality, SAST & container scanning

Architecture: [([from Google)](https://cloud.google.com/blog/products/application-development/5-principles-for-cloud-native-architecture-what-it-is-and-how-to-master-it)
- functional Requirements
- non-functional requirements (some call these quality requirements)
- constraints


@Work:
Directives, Guidelines, Standards, Processes, Procedures, ...

<a name="to-do-enterprise-overview"></a>
## Enterprise Overview

<a name="to-do-enterprise-overview-guidelines"></a>
### Guidelines

<a name="to-do-enterprise-overview-guidelines-security-shift-left"></a>
#### Security : Shift-Left
Engage Security early.  Inform security early of the technology you are planning on using, and how you are address common security requirements (identity, access, monitoring, auditing, patching, ...).  There are many other security families, and including security and recording joint, collaborative decisions is important in avoiding the discovery of major security risks later in the project.

<a name="to-do-enterprise-overview-guidelines-system-architecture"></a>
#### System Architecture
<a name="to-do-enterprise-overview-guidelines-system-architecture-loosely-coupled"></a>
##### Loosely Coupled
Resources: Domain Driven Design : Domain Driven Design can help decompose a system into loosely coupled components: how to draw boundaries between services, how to decide whether some logic belongs to one service or another, and how domain-driven design can help us make those decisions.   

<a name="to-do-enterprise-overview-design-methodolgoy"></a>
### Design Methodolgoy??
<a name="to-do-enterprise-overview-design-methodolgoy-user-experience"></a>
#### User Experience
Embrace GC User Centric Design
- [Nielsen Norman Group - Maturity Model](https://www.nngroup.com/articles/ux-maturity-model/)

|Maturity Level|Description|
|--|--|
|Absent|UX is ignored or nonexistent.|
|Limited|UX work is rare, done haphazardly, and lacking importance.|
|Emergent|The UX work is functional and promising but done inconsistently and inefficiently.|
|Structured|The organization has semi-systematic UX-related methodology that is widespread, but with varying degrees of effectiveness and efficiency.|
|Integrated|UX work is comprehensive, effective, and pervasive.|
|User-Driven|Dedication to UX at all levels leads to deep insights and exceptional user-centered–design outcomes.|

4 high-level factors that contribute to the organization’s UX maturity [NNG - UX Factors to Success](https://www.nngroup.com/articles/factors-ux-maturity/)
1. Strategy: UX leadership, planning, and resource prioritization (vision, planning, budget)
1. Culture: Knowledge about and attitudes towards UX, as well as cultivating UX careers and practitioners’ growth. (awareness, appreciation, competencys, adaptability)
1. Process: Systematic, efficient use of UX research and design methods (methods, collaboration, consistency)
1. Outcomes: Intentional definition of goals and measurement of the results produced by UX work (impact of design, measurement)


<a name="to-do-enterprise-overview-ux-design"></a>
### UX Design
- follow GC User Centric Design
- see deisgn mothers for Ux - on CW - [UK 18F Methods](https://methods.18f.gov/) - referenced by GC standards - [18f technoloyg and design company - USA ](https://18f.gsa.gov/)
- http://uxdesign.uw.edu/
j -[Usability.gov - User Centric Design](https://www.usability.gov/what-and-why/user-centered-design.html)


<a name="to-do-enterprise-overview-observability"></a>
### Observability

Observability:  This is an entire field of its own, and has gained momentum with microservices.  
- Trace
- Log
- Montor ???


<a name="to-do-reference-architecture"></a>
## Reference Architecture

<a name="to-do-reference-architecture-cna-aws-cloud-native"></a>
### CNA - AWS : Cloud Native
https://aws.amazon.com/architecture/
- Analytics and Big Data  
- Compute and HPC (high performance computer)
- Databases
- Machine Learning

data bricks : cloud hosted data engineering, data analytics, data science (core is Apache Spark)

- Snowflake - Modern Reference Architecture for Applications
- Snowflake : cloud-hosted, relational database for data warehouses.  (Markets as replacement for Hadoop) - [ref: blog](https://interworks.com/blog/sparker/2018/03/08/introducing-snowflake-cloud-based-data-warehousing)
- https://www.snowflake.com/blog/
- https://www.snowflake.com/blog/modern-reference-architectures-for-application-builders/
- [Snowflake - Choosing Open Wisely](https://www.snowflake.com/blog/choosing-open-wisely/)
 - *we strongly believe in API-driven access to data*


<a name="to-do-example-problems"></a>
## Example Problems
<a name="to-do-example-problems-enterprise-search"></a>
### Enterprise Search
Problem:  Enterprise Search has access to all corporate information.   Display search results, and provide information to the user must respect security and privacy concerns.   Applications with local access-business logic, and big-data platforms are difficult to expose to enterprise search.
Challenges:
1. Granularity:  field-level access, crawl PDFs (and other filetypes), ...
1. Discoverability:  search
1. Search Relevance:
 1. Precision : Precision is the percentage of documents in the result set that are relevant.  Find relevant documents, with very few irrelevant documents.
 1. Recall : Recall is the percentage of relevant documents that are returned in the result set.  Recall means the number of documents retrieved that are relevant, divided by the number of total relevant documents.
1. Saved Search : Ability of saving a search and working through the search results, refining search (eDiscovery)

? What is ElasticSI (elastic search + ??) - cloud based search : https://elastic-si.com/



<a name="to-do-data-availability"></a>
## Data Availability
Problem:  Corporate solutions (ERP, HR, S-app, Collab-platforms) have silos of data which is unavailable for easy use by other applications.
Guideline:  "Application data must be made available to other applications in a controlled fashion".
- Controlled Fashion : respecting IM and security concerns.   Exposing data in a modern manner (distributed architecture, API).

<a name="to-do-framework-for-data-governance"></a>
## Framework for Data Governance
Problem:  Data governance, business and technical processes to provide a version of truth of the system, or, system of record.
Example:  Entity Resolves / Unresolves.  The business-activity is unrestrained, and the application that performs the resolution action does not generate meaningful data such that a reliable API can be defined to identify a resource.  The system of record is unaware of these activities.  The SoR does not have API to identity the identity of the entity, nor, a means to notify on changes to the core entity's identity.
Impact:  An external application consuming this information has developed business logic to arbitrate entities, and, has nightly jobs to re-validate the integrity of its business logic.
Resolutions:  Identify a system of record for entities and ensure the business logic for this responsibility is contained within this system.
Technologies that can help:   Data governance, Master Data Management.
Software Architecture Patterns that can help:  
- [Bounded Context](https://www.martinfowler.com/bliki/BoundedContext.html)
- [Domain Driven Design](https://en.wikipedia.org/wiki/Domain-driven_design) : DDD model of the entity (our Entity), events on the entity (resolve / unresolve)  and aggregates which are only permitted to contain references to the root of the entity.
Challenge:  Unsure how MDM can solve Analytics Platform resolve/unresolve process.

<a name="to-do-distributed-multi-security-zone-business-process"></a>
## Distributed Multi-Security-Zone Business Process
Problem: We are starting to use SaaS application providers, however, due to privacy and security concerns we cannot put sensitive information in the SaaS application.   As a result, business process will involve using systems on both the high and low security zones.  Business users will have to learn to complete processes using tokenized, masked and redacted information.   IT will have to provide technology to move and transform the data between these systems.  This design constraint will impact the user experience.  IT's role is to implement technology to facilitate these multi-zone business processes, while reamining loosely coupled with the SaaS solution (important as the SaaS solution is upgraded regularly beyond the control of the business or IT).
Guideline:  
- TBD:  Patterns include EDA, distributed architecture
Decisions:
- business logic will not reside on the low side.   All integration business logic will be on the high-side.


Identity
Quote : Okta?



<a name="to-do-terms-1"></a>
## Terms
- Application:
- System:
- Solution:

- Reference Architecture : A reference architecture is a document or set of documents that provides recommended structures and integrations of IT products and services to form a solution. The reference architecture embodies accepted industry best practices, typically suggesting the optimal delivery method for specific technologies.  A reference architecture in the field of software architecture or enterprise architecture provides a template solution for an architecture for a particular domain.  A lower level one might demonstrate the interactions of procedures (or methods) within a computer program defined to perform a very specific task.
 - A Reference Architecture is created by capturing the essentials of existing architectures and by taking into account future needs and opportunities, ranging from specific technologies, to patterns to business models and market segments. [Reference: THe Gaudi Project - Netherlands](https://gaudisite.nl/GaudiProject.html)





<a name="to-do-cna"></a>
## CNA
- CNA: Cloud-native architecture and technologies are an approach to designing, constructing, and operating workloads that are built in the cloud and take full advantage of the cloud computing model.
- Kubernetes is a platform to manage, host, scale, and deploy containers.
- Containers are a portable way of packaging and running code. They are well suited to the microservices pattern, where each microservice can run in its own container.

<a name="to-do-references-1"></a>
## References
<a name="to-do-gartner"></a>
## Gartner

<a name="to-do-gc"></a>
## GC
1. [Directive on Service & Digital - Appendix B - Mandatory Procedures](https://www.tbs-sct.gc.ca/pol/doc-eng.aspx?id=32604)
<a name="to-do-wikipedia"></a>
## Wikipedia
1. [View Model](https://en.wikipedia.org/wiki/View_model)
1. [USA Federated Enterprise Architecture](https://en.wikipedia.org/wiki/Federal_enterprise_architecture) : Viewpoints of Enterprise, Information, Functional, Physical, Engineering, Technology.  6 Reference Models : Performance, Business, Data, Application, Infrastructure, Security.
1. [USA NIST Enteprise Architecture Model](https://en.wikipedia.org/wiki/NIST_Enterprise_Architecture_Model) - 1980's no longer relevant

<a name="to-do-documentation"></a>
## Documentation

- [Google DORA State of DevOps - 2021](https://services.google.com/fh/files/misc/state-of-devops-2021.pdf)
- [IEEE Software Documentation Issues Unveiled - ISBN 978-1-7281-0869-8 - 2019](https://ieeexplore.ieee.org/document/8811931)
- [IEEE The Value of Software Quality - ISBN 978-1-4799-7198-5 - 2014](https://ieeexplore.ieee.org/document/6958422)

<a name="to-do-standards-bodies"></a>
## Standards Bodies
1. [IEEE 42010] - Systems and Software Engineering - Architecture Description (2011 $150)
 - [The Journal of Systems and Software - Overview of Architecture Description - Documenting Decisions - IEEE 42010](http://www.cs.rug.nl/paris/papers/JSS11c.pdf)

<a name="to-do-frameworks"></a>
## Frameworks
TOGAF
Archimate
Zachman
<a name="to-do-frameworks-usa"></a>
### USA
[DoD Architecture Framework](https://dodcio.defense.gov/Library/DoD-Architecture-Framework/) - massive framework
- notes on USA Gov - coarse grained API ... (API for large data, ...)


<a name="to-do-templates"></a>
## Templates
This section addresses the lack of standards, templates and clear requirements for documentation.
- Integration COE : standard for schemas (API and events) and knowledge of consumers/subscribers to these integration points.

<a name="to-do-goal"></a>
## Goal
- *At the end of the day, I want my artifacts to be enduring. My goal is to create a prescriptive, semi-formal architectural description that can be used as a basis for setting department priorities, parallelizing development, [managing] legacy migration, etc.*



<a name="to-do-thoughts-describe-trb-awg-differences"></a>
## Thoughts - Describe TRB / AWG differences
- key - TRB is agile - share early, quickly, often and informally...get guidance...

Unstructured Knowledge Sharing:
- team-based knowledge sharing meetings where the purpose is to share and discuss (some TRB meetings have this as the key-goal)
- open office hours for any questions
- lunch & learn presentation series
- show & tell / demonstrations  
- peer learning groups : learning (small, L&D type activities), guided learning


<a name="references-2"></a>
# References
*TODO* 37signals - use as support for guidelines
*TOD* CIO - use as support for guidelines

<a name="goal-streaming-based-application"></a>
# Goal: Streaming-Based Application
*TODO* Streaming-Ready/capable application
- https://www.dbta.com/Editorial/Think-About-It/Building-a-Modern-Data-Architecture-for-the-2020s-148239.aspx?PageNum=3

<a name="application-1"></a>
# Application
*TODO* Discuss architecture styles and key characteristics - ../Downloads/The SOA Journey_ from Understanding Business to Agile Architecture, and how this leads us to loosely coupled, high-cohesion and encapsulated architectures (EDA & Microservices).

<a name="guidance"></a>
# Guidance

- [Ansoff Growth Matrix - Harvard Business Review 1957](https://en.wikipedia.org/wiki/Ansoff_matrix) : 2X2 matrix with Market and Products with values of Current/New.

|Ansoff Growth Matrix|Market-Current|Market-New|
|--|--|--|
|__Product__|__New__|__Current__|
|__New__|Market Development Strategy: Develop new markets for new products|Diversification Strategy: Develop new products in new markets|
|__Current__|Market Penetration Strategy: Gain market share with current products and market|Product Development Strategy:  Develop new products in current markets.|

from

[^1] : [Hewitt, E. Technology strategy patterns: architecture as strategy. (O’Reilly, 2018)](http://www.worldcat.org/isbn/978-1-4920-4087-3)


<a name="patterns-2"></a>
# Patterns

Ball of Mud:
- https://www.dbta.com/Editorial/Think-About-It/Building-a-Modern-Data-Architecture-for-the-2020s-148239.aspx
If it was, it may have eroded beyond recognition. Programmers with a shred of architectural sensibility shun these quagmires. Only those who are unconcerned about architecture, and, perhaps, are comfortable with the inertia of the day-to-day chore of patching the holes in these failing dikes, are content to work on such systems.


<a name="footnotes-test"></a>
# Footnotes - Test

Here's a sentence with a footnote. [^1]

[^1]: This is the footnote.

Here is a simple footnote[^2]. With some additional text after it.

[^2]: My reference.


It is reference links [emphasis tutorials][myexample].
It is reference links [emphasis tutorials][myexample2].

[myexample]: /file/markdown-emphasis "markdown emphasis tutorials"

[MYexample2]: /file/markdown-emphasis "markdown emphasis tutorials 2"

