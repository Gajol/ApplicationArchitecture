# TODO

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

## Culture
- Westrum Culture:  Useful, Timely, Relevant

## BI
### Tableau
- Anaylitcs, Calculations, Data Prepparation, Data Relationships, Data Visualizations, Excel and Tableau, Performance, Storytelling, Tableau Server.

### DAaaS
- Kubeflow

## Data
- DRA : Pragmatic, Feasible, "I can build it, consistently.".  Clear guidance to get of debt.  How to get out of debt, moving forward.
  - for initiatives have you gone to forums (TRB, AWG, ...)
  - other bodies: GC, EDO, CIO, CSO, EPMO, FIMB, SMB, PM, IMB, CMC
  - pillars to move forward
- mutable data

### Lower Priority
DevOps
- Puppet vs Ansible vs Terraform
- Travis, Jenkins, ...

Data Mesh

ML Pipeline Architecture.  Policy on Automated Decision Making.



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

## Enterprise Overview

### Guidelines

#### Security : Shift-Left
Engage Security early.  Inform security early of the technology you are planning on using, and how you are address common security requirements (identity, access, monitoring, auditing, patching, ...).  There are many other security families, and including security and recording joint, collaborative decisions is important in avoiding the discovery of major security risks later in the project.

#### System Architecture
##### Loosely Coupled
Resources: Domain Driven Design : Domain Driven Design can help decompose a system into loosely coupled components: how to draw boundaries between services, how to decide whether some logic belongs to one service or another, and how domain-driven design can help us make those decisions.   

### Design Methodolgoy??
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


### UX Design
- follow GC User Centric Design
- see deisgn mothers for Ux - on CW - [UK 18F Methods](https://methods.18f.gov/) - referenced by GC standards - [18f technoloyg and design company - USA ](https://18f.gsa.gov/)
- http://uxdesign.uw.edu/
j -[Usability.gov - User Centric Design](https://www.usability.gov/what-and-why/user-centered-design.html)


### Observability

Observability:  This is an entire field of its own, and has gained momentum with microservices.  
- Trace
- Log
- Montor ???


## Reference Architecture

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


## Example Problems
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



## Data Availability
Problem:  Corporate solutions (ERP, HR, S-app, Collab-platforms) have silos of data which is unavailable for easy use by other applications.
Guideline:  "Application data must be made available to other applications in a controlled fashion".
- Controlled Fashion : respecting IM and security concerns.   Exposing data in a modern manner (distributed architecture, API).

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

## Distributed Multi-Security-Zone Business Process
Problem: We are starting to use SaaS application providers, however, due to privacy and security concerns we cannot put sensitive information in the SaaS application.   As a result, business process will involve using systems on both the high and low security zones.  Business users will have to learn to complete processes using tokenized, masked and redacted information.   IT will have to provide technology to move and transform the data between these systems.  This design constraint will impact the user experience.  IT's role is to implement technology to facilitate these multi-zone business processes, while reamining loosely coupled with the SaaS solution (important as the SaaS solution is upgraded regularly beyond the control of the business or IT).
Guideline:  
- TBD:  Patterns include EDA, distributed architecture
Decisions:
- business logic will not reside on the low side.   All integration business logic will be on the high-side.


Identity
Quote : Okta?



## Terms
- Application:
- System:
- Solution:

- Reference Architecture : A reference architecture is a document or set of documents that provides recommended structures and integrations of IT products and services to form a solution. The reference architecture embodies accepted industry best practices, typically suggesting the optimal delivery method for specific technologies.  A reference architecture in the field of software architecture or enterprise architecture provides a template solution for an architecture for a particular domain.  A lower level one might demonstrate the interactions of procedures (or methods) within a computer program defined to perform a very specific task.
 - A Reference Architecture is created by capturing the essentials of existing architectures and by taking into account future needs and opportunities, ranging from specific technologies, to patterns to business models and market segments. [Reference: THe Gaudi Project - Netherlands](https://gaudisite.nl/GaudiProject.html)





## CNA
- CNA: Cloud-native architecture and technologies are an approach to designing, constructing, and operating workloads that are built in the cloud and take full advantage of the cloud computing model.
- Kubernetes is a platform to manage, host, scale, and deploy containers.
- Containers are a portable way of packaging and running code. They are well suited to the microservices pattern, where each microservice can run in its own container.

##  References
## Gartner

## GC
1. [Directive on Service & Digital - Appendix B - Mandatory Procedures](https://www.tbs-sct.gc.ca/pol/doc-eng.aspx?id=32604)
## Wikipedia
1. [View Model](https://en.wikipedia.org/wiki/View_model)
1. [USA Federated Enterprise Architecture](https://en.wikipedia.org/wiki/Federal_enterprise_architecture) : Viewpoints of Enterprise, Information, Functional, Physical, Engineering, Technology.  6 Reference Models : Performance, Business, Data, Application, Infrastructure, Security.
1. [USA NIST Enteprise Architecture Model](https://en.wikipedia.org/wiki/NIST_Enterprise_Architecture_Model) - 1980's no longer relevant

## Documentation

- [Google DORA State of DevOps - 2021](https://services.google.com/fh/files/misc/state-of-devops-2021.pdf)
- [IEEE Software Documentation Issues Unveiled - ISBN 978-1-7281-0869-8 - 2019](https://ieeexplore.ieee.org/document/8811931)
- [IEEE The Value of Software Quality - ISBN 978-1-4799-7198-5 - 2014](https://ieeexplore.ieee.org/document/6958422)

## Standards Bodies
1. [IEEE 42010] - Systems and Software Engineering - Architecture Description (2011 $150)
 - [The Journal of Systems and Software - Overview of Architecture Description - Documenting Decisions - IEEE 42010](http://www.cs.rug.nl/paris/papers/JSS11c.pdf)

## Frameworks
TOGAF
Archimate
Zachman
### USA
[DoD Architecture Framework](https://dodcio.defense.gov/Library/DoD-Architecture-Framework/) - massive framework
- notes on USA Gov - coarse grained API ... (API for large data, ...)


## Templates
This section addresses the lack of standards, templates and clear requirements for documentation.
- Integration COE : standard for schemas (API and events) and knowledge of consumers/subscribers to these integration points.

## Goal
- *At the end of the day, I want my artifacts to be enduring. My goal is to create a prescriptive, semi-formal architectural description that can be used as a basis for setting department priorities, parallelizing development, [managing] legacy migration, etc.*



## Thoughts - Describe TRB / AWG differences
- key - TRB is agile - share early, quickly, often and informally...get guidance...

Unstructured Knowledge Sharing:
- team-based knowledge sharing meetings where the purpose is to share and discuss (some TRB meetings have this as the key-goal)
- open office hours for any questions
- lunch & learn presentation series
- show & tell / demonstrations  
- peer learning groups : learning (small, L&D type activities), guided learning


# References
*TODO* 37signals - use as support for guidelines
*TOD* CIO - use as support for guidelines

# Goal: Streaming-Based Application
*TODO* Streaming-Ready/capable application
- https://www.dbta.com/Editorial/Think-About-It/Building-a-Modern-Data-Architecture-for-the-2020s-148239.aspx?PageNum=3

# Application
*TODO* Discuss architecture styles and key characteristics - ../Downloads/The SOA Journey_ from Understanding Business to Agile Architecture, and how this leads us to loosely coupled, high-cohesion and encapsulated architectures (EDA & Microservices).

# Guidance

- [Ansoff Growth Matrix - Harvard Business Review 1957](https://en.wikipedia.org/wiki/Ansoff_matrix) : 2X2 matrix with Market and Products with values of Current/New.

|Ansoff Growth Matrix|Market-Current|Market-New|
|--|--|--|
|__Product__|__New__|__Current__|
|__New__|Market Development Strategy: Develop new markets for new products|Diversification Strategy: Develop new products in new markets|
|__Current__|Market Penetration Strategy: Gain market share with current products and market|Product Development Strategy:  Develop new products in current markets.|

from

[^1] : [Hewitt, E. Technology strategy patterns: architecture as strategy. (O’Reilly, 2018)](http://www.worldcat.org/isbn/978-1-4920-4087-3)


# Patterns

Ball of Mud:
- https://www.dbta.com/Editorial/Think-About-It/Building-a-Modern-Data-Architecture-for-the-2020s-148239.aspx
If it was, it may have eroded beyond recognition. Programmers with a shred of architectural sensibility shun these quagmires. Only those who are unconcerned about architecture, and, perhaps, are comfortable with the inertia of the day-to-day chore of patching the holes in these failing dikes, are content to work on such systems.

-Based Application
*TODO* Streaming-Ready/capable application

## Back-End for Front-End
Author: Sam Newman
[Backends for FronEnds Pattern - 2015](https://samnewman.io/patterns/architectural/bff/)
[Microsoft BE for FE Pattern](https://docs.microsoft.com/en-us/azure/architecture/patterns/backends-for-frontends)




# Terms

Value Streams: See also [Scaled-Agile Framework - SAFe - Value Streams](https://www.scaledagileframework.com/value-streams/).  Agile Release Trains (ART) within each value stream develop the business solutions used by the operational value streams. ARTs are cross-functional and have all the capabilities—software, hardware, firmware, and other—needed to define, implement, test, deploy, release, and where applicable, operate solutions.


# Goals

## Goal : Enterprise Search


## Goal: Reduce Content Duplication with URL Design

Content (information) is duplicated within applications and across technologies.  The causes of this have not been formally documented, however some factors leading to users copying content are the lack of *trust* in being able to find or access the content in the future.  This can be paraphrased as *I need a local copy for me or my team*.   This leads to copies of information on shared-drives and transitory and corporate applications.   

Some historical examples that have led to this "clone-and-own" culture include:

  - Link Rot:  Application upgrades making links to content fail.   [Deep Linking](https://en.wikipedia.org/wiki/Deep_linking) is the use of a hyperlink that links to a specific, generally searchable or indexed, piece of web content on a website.  For example, a link to a specific case, request or document.  

  - Access:  Users are concerned that the content may disappear due to the content owner removing, renaming or modifying user-access.   This is difficult to address at the application layer, and requires enterprise information and access-management governance.


1. URL Lifecycle
 When supporting [Deep Linking](https://en.wikipedia.org/wiki/Deep_linking) design must take into account the lifecycle of the link, ned that the content may disappear due to the content owner removing, renaming or modifying userand its ability to function through upgrades.   Consider patterns such as [Permalink](https://en.wikipedia.org/wiki/Permalink) and Data Object Identifier [(DOI)](https://en.wikipedia.org/wiki/Digital_object_identifier).  When provide a link to a user for reference, identify this should be a trusted-link which survives upgrades/replacements.

1. URL Design
 Define a URL strategy for the application, including an inventory or URL's provided.  Define the manner in which URLs are clean, friendly and pretty [Clean URL](https://en.wikipedia.org/wiki/Clean_URL); support *http://example.com/name* as opposed to *http://example.com/index.php?page=name*.





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



## Goal : Composable ERP and HR Enterprise - Gartner

  [Gartner - The Future of Enterprise Resource Planning (ERP) is Composable](https://www.gartner.com/document/3991664)[^Guidance-9] defines a *Composable ERP* as an adaptive technology strategy that enables the foundational administrative and operational digital capabilities for an enterprise to keep up with the pace of business change. This strategy delivers a core of composable applications and, as a service, software platforms that are highly configurable, interoperable, and flexible to adapt to future modern technology.  

  The key Gartner recommendations are valid for ERP and HR modernization initiatives:
  - [ ]  Define business capabilities through road mapping exercises
  - [ ]  Reduce reliance on customizations and proprietary-ERP
  - [ ]  Continuously deliver incremental business value in a modular mode
  - [ ]  Build an ERP team with wide-ranging skills (Adopt a DevOps for ERP). Ensure adequate skill development and training

  [^Guidance-9]: [Gartner - The Future of ERP is Composable](https://www.gartner.com/document/3991664)


# Deleted from ARA-Guidance Strategy.md

## Concerns of an Architect
  - Contain entropy:  Show a path in a roadmap; garnering support for that vision through communication of guidelines and standards; and creating clarity to ensure efficiency of execution and that you’re doing the right things and doing things right.
  - Specify Non-Functional Requirements / Quality Requirements: The "..ility" list.   scalability, availability, maintainability, manageability, monitorability, extensibility, interoperability, portability, security, accessibility, observability, conformity (laws, directives). [Wikipedia - Quality Attributes](https://en.wikipedia.org/wiki/List_of_system_quality_attributes)
  - Determine trade-offs: Identity the least-bad option.

1. Patterns / Tools
Many tools exist to perform options analysis.  Most start with creating an hypothesis and then validating (or invalidating) it formally.

Some tools suggested are:
- Logic Tree
- SWOT - Strengths, Weaknesses, Opportunities and Threats



[^Style-3]: [Wikipedia - Software Design Patterns](https://en.wikipedia.org/wiki/Software_design_pattern)

[^Style-4]: [Fowler - Patterns of Enterprise Application Architecture](www.worldcat.org/isbn/978-0-321-12742-6) : Fowler, Martin. Patterns of Enterprise Application Architecture. The Addison-Wesley Signature Series. Boston: Addison-Wesley, 2003.

[^Style-5]: [Design Patterns: Elements of Reusable Object-Oriented Software](www.worldcat.org/isbn/0-201-63361-2)  : Gamma, Erich, ed. Design Patterns: Elements of Reusable Object-Oriented Software. Addison-Wesley Professional Computing Series. Reading, Mass: Addison-Wesley, 1995.
