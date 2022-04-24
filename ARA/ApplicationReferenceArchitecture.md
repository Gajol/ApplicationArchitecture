# Reference Architecture Outline:

1. Forward
1. introduction
   1. Enterprise Overview
   1. Challenges / Risks / Patterns
1. Guidelines
1. Terms
1. References
1. Templates


## Enterprise Overview

# Guidelines

## Security : Shift-Left
Engage Security early.  Inform security early of the technology you are planning on using, and how you are address common security requirements (identity, access, monitoring, auditing, patching, ...).  There are many other security families, and including security and recording joint, collaborative decisions is important in avoiding the discovery of major security risks later in the project.

## System Architecture
### Loosely Coupled
Resources: Domain Driven Design : Domain Driven Design can help decompose a system into loosely coupled components: how to draw boundaries between services, how to decide whether some logic belongs to one service or another, and how domain-driven design can help us make those decisions.   

## Design Methodolgoy??
### User Experience
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


## UX Design
- follow GC User Centric Design
- see deisgn mothers for Ux - on CW - [UK 18F Methods](https://methods.18f.gov/) - referenced by GC standards - [18f technoloyg and design company - USA ](https://18f.gsa.gov/)
- http://uxdesign.uw.edu/
j -[Usability.gov - User Centric Design](https://www.usability.gov/what-and-why/user-centered-design.html)


## Observability

Observability:  This is an entire field of its own, and has gained momentum with microservices.  
- Trace
- Log
- Montor ???


# Reference Architecture

# CNA - AWS
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


# Example Problems
## Enterprise Search
Problem:  Enterprise Search has access to all corporate information.   Display search results, and provide information to the user must respect security and privacy concerns.   Applications with local access-business logic, and big-data platforms are difficult to expose to enterprise search.
Challenges:
1. Granularity:  field-level access, crawl PDFs (and other filetypes), ...
1. Discoverability:  search
1. Search Relevance:
  1. Precision : Precision is the percentage of documents in the result set that are relevant.  Find relevant documents, with very few irrelevant documents.
  1. Recall : Recall is the percentage of relevant documents that are returned in the result set.  Recall means the number of documents retrieved that are relevant, divided by the number of total relevant documents.
1. Saved Search : Ability of saving a search and working through the search results, refining search (eDiscovery)

? What is ElasticSI (elastic search + ??) - cloud based search : https://elastic-si.com/



# Data Availability
Problem:  Corporate solutions (ERP, HR, S-app, Collab-platforms) have silos of data which is unavailable for easy use by other applications.
Guideline:  "Application data must be made available to other applications in a controlled fashion".
- Controlled Fashion : respecting IM and security concerns.   Exposing data in a modern manner (distributed architecture, API).

## Framework for Data Governance
Problem:  Data governance, business and technical processes to provide a version of truth of the system, or, system of record.
Example:  Entity Resolves / Unresolves.  The business-activity is unrestrained, and the application that performs the resolution action does not generate meaningful data such that a reliable API can be defined to identify a resource.  The system of record is unaware of these activities.  The SoR (System of Record) does not have API to identity the identity of the entity, nor, a means to notify on changes to the core entity's identity.
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



# Terms
- Application:
- System:
- Solution:

- Reference Architecture : A reference architecture is a document or set of documents that provides recommended structures and integrations of IT products and services to form a solution. The reference architecture embodies accepted industry best practices, typically suggesting the optimal delivery method for specific technologies.  A reference architecture in the field of software architecture or enterprise architecture provides a template solution for an architecture for a particular domain.  A lower level one might demonstrate the interactions of procedures (or methods) within a computer program defined to perform a very specific task.
  - A Reference Architecture is created by capturing the essentials of existing architectures and by taking into account future needs and opportunities, ranging from specific technologies, to patterns to business models and market segments. [Reference: The Gaudi Project - Netherlands](https://gaudisite.nl/GaudiProject.html)





## CNA
- CNA: Cloud-native architecture and technologies are an approach to designing, constructing, and operating workloads that are built in the cloud and take full advantage of the cloud computing model.
- Kubernetes is a platform to manage, host, scale, and deploy containers.
- Containers are a portable way of packaging and running code. They are well suited to the microservices pattern, where each microservice can run in its own container.

# References
## Gartner

## GC
1. [Directive on Service & Digital - Appendix B - Mandatory Procedures](https://www.tbs-sct.gc.ca/pol/doc-eng.aspx?id=32604)
## Wikipedia
1. [View Model](https://en.wikipedia.org/wiki/View_model)
1. [USA Federated Enterprise Architecture](https://en.wikipedia.org/wiki/Federal_enterprise_architecture) : Viewpoints of Enterprise, Information, Functional, Physical, Engineering, Technology.  6 Reference Models : Performance, Business, Data, Application, Infrastructure, Security.
1. [USA NIST Enterprise Architecture Model](https://en.wikipedia.org/wiki/NIST_Enterprise_Architecture_Model) - 1980's no longer relevant

## Documentation

- [Google DORA State of DevOps - 2021](https://services.google.com/fh/files/misc/state-of-devops-2021.pdf)
- [IEEE Software Documentation Issues Unveiled - ISBN 978-1-7281-0869-8 - 2019](https://ieeexplore.ieee.org/document/8811931)
- [IEEE The Value of Software Quality - ISBN 978-1-4799-7198-5 - 2014](https://ieeexplore.ieee.org/document/6958422)

## Standards Bodies
1. [IEEE 42010] - Systems and Software Engineering - Architecture Description (2011 $150)
  - [The Journal of Systems and Software - Overview of Architecture Description - Documenting Decisions - IEEE 42010](http://www.cs.rug.nl/paris/papers/JSS11c.pdf)

## Frameworks
- TOGAF : The Open Group Architecture Framework
- Archimate
- Zachman
- PEAF : Pragmatic Enterprise Architecture Framework : Capability modelling to DOTS ( Direction, Operations, Transformation and Support domains)



### USA
[DoD Architecture Framework](https://dodcio.defense.gov/Library/DoD-Architecture-Framework/) - massive framework


# Templates
This section addresses the lack of standards, templates and clear requirements for documentation.

# Goal
- *At the end of the day, I want my artifacts to be enduring. My goal is to create a prescriptive, semi-formal architectural description that can be used as a basis for setting department priorities, parallelizing development, [managing] legacy migration, etc.*



# Thoughts
Unstructured Knowledge Sharing:
- team-based knowledge sharing meetings where the purpose is to share and discuss (some TRB meetings have this as the key-goal)
- open office hours for any questions
- lunch & learn presentation series
- show & tell / demonstrations  
- peer learning groups : learning (small, L&D type activities), guided learning


# Jobs

AWS Cloud Engineer - Craig Pike
https://www.linkedin.com/jobs/view/2871475279/?refId=b%2FsrZNU%2FSpWwOLDNT5fWnw%3D%3D
