---
title: Application Reference Architecture
subtitle: Application Styles and Guidance
author:
- Doug Nielsen
fontsize: 10pt
mainfont: Arial
geometry: margin=0.75in
header-includes: |
    \usepackage{fancyhdr}
    \pagestyle{fancy}
    \fancyhead[L]{Application Reference Architecture}
    \fancyhead[R]{UNCLASSIFIED / NON-CLASSIFIÉ}
---

\begin{center}UNCLASSIFIED / NON-CLASSIFIÉ\end{center}

\newpage

# Application Characteristics and Styles

## Application Characteristics
As part of the analysis and design some high-level characteristics of the application should be assessed.   Some of these attributes may be official documented as part of the project and application development, and others may have to be assumed or derived for requirements

|Attribute|Description|Note|
|--|--|--|
|Criticality|How critical is this application to the business. This is sometimes referred to as Tier-1, 2, 3.|The department lacks an official list of application criticality.   Based on criticality, and TBS guidance, critical applications must have certain quality components like a business continuity plan (BCP) and a Disaster Recover Plan (DRP).  This need to maintained and practised like fire alarms on a regular basis.
|Security Profile|Based on the security triad of Confidentiality, Integrity and Availability (CIA) and indicating the impacts of integrity and availability to the organization (High, Medium, Low).|Common profiles are PBMM (Protected-B, Medium, Medium) and TSHH (Top Secret, High, High).  The security profile can help guide development of quality requirements (non-functional requirements)|
|Information Classification|What classification of information is managed by the system|Unclassified, Confidential, Protected A/B/C, Secret and Top Secret are common security classifications|
|IM Repository Type|Identifies whether the information in this system is transitory or corporate.|Based on the repository type additional requirements relating to managing the information through its lifecycle are required. Reference [Guideline on Service and Digital](Requirements for departments under the Directive)|
|Information Business Type|Our department treats operational information different from administrative information.|The distinction is unclear, and there are few guidelines to help projects to help manage this distinction.   Applications are categorized as managing operational or administrative information.  For example, CW is administrative, CWOPS is operational (however only extremely limited operational information is permitted in CWOPS).|

## Application Architecture Styles
Architectural style is defined as a set of characteristics and features that make a building or other structure notable or historically identifiable. Architecture styles are been established and evolved over the years.   Some common application architecture styles are [[Fundamentals of software architecture]][fundamentalsofsoftwarearchitecture]:
-  [[Richards, Mark. & Ford, Neil. Fundamentals of software architecture: an engineering approach. (O’Reilly, 2020)](http://www.worldcat.org/isbn/9781492043454)]:
- Distributed: Microservices Architecture : pros (reliablity, modularity, elasticity, +++), cons: (cost, complexity, ...)
- Distributed: Orchestration - Service Oriented Architecture (~2005) : pros (good elasticity, fault tolerance, scalability), cons: (complexity, testability, cost, ...).  A big weakness of SOA was the use of a common platform for all services deployed (e.g., Oracle SOA Suite, IBM WebSphere, DataPower, MessageBroker).  SOA also required stateful services and sharing of context (tight-coupling).  Note, SOA promised loose-coupling, scalability and fault tolerance [Josuttis, N. M. SOA in practice. (O’Reilly, 2007)
](http://www.worldcat.org/978-0-596-52955-0)] however these were difficult to achieve.
- Distributed: Event Driven Architecture : pros (fault tolerant, modular, good cost), cons: (complexity, testability, )
- Monolithic: Layered:  3-tier/N-Tier/Client-Server :  pros (simplicity and cost), cons: (scalability, fault tolerance, deployability, testability, modularity)
- Monolithic: Pipeline: pipelines & filters : pros (simplicity and cost), cons: (scalability, performance, ...)

*TODO* Discuss architecture styles and key characteristics - ../Downloads/The SOA Journey_ from Understanding Business to Agile Architecture, and how this leads us to loosely coupled, high-cohesion and encapsulated architectures (EDA & Microservices).
