asdf asdf
# Application Characteristics and Styles

An different architectural style needs to be chosen depending on the desired architecture characteristics.

TOGAF defines Architecture Style as '*the combination of distinctive features related to the specific context within which architecture is performed or expressed; a collection of principles and characteristics that steer or constrain how an architecture is formed*'.   


## Application Characteristics

The high-level characteristics of the application should be assessed as part of the analysis and design some.  Some of these characteristics may be official documented as part of the project and application development, and others may have to be assumed or derived for requirements.   

- Departmental Application Characteristics: Characteristics that should be defined for all applications and the information/data they manage.
- Quality Characteristics: Quality attributes that significantly impact the architecture should be captured.

### Department Application Characteristics

| Attribute                  | Description                                                                                                                                                                        | Note                                                                                                                                                                                                                                                                                                                                     |
| :-- | :---- | :---- |
| Criticality                | How critical is this application to the business. This is sometimes referred to as Tier-1, 2, 3.                                                                                   | The department lacks an official list of application criticality.   Based on criticality, and TBS guidance, critical applications must have certain quality components like a business continuity plan (BCP) and a Disaster Recover Plan (DRP).  This lists needs to be maintained; and programs established to ensure their ongoing health. |
| Security Profile           | Based on the security triad of Confidentiality, Integrity and Availability (CIA) and indicating the impacts of integrity and availability to the organization (High, Medium, Low). | Common profiles are PBMM (Protected-B, Medium, Medium) and TSHH (Top Secret, High, High).  The security profile can help guide development of quality requirements (non-functional requirements)                                                                                                                                         |
| Information Classification | What classification of information is managed by the system                                                                                                                        | Unclassified, Confidential, Protected A/B/C, Secret and Top Secret are common security classifications                                                                                                                                                                                                                                   |
| IM Repository Type         | Identifies whether the information in this system is transitory or corporate.                                                                                                      | Based on the repository type additional requirements relating to managing the information through its lifecycle are required. Reference [Guideline on Service and Digital](Requirements for departments under the Directive).                                                                                                             |
| Information Business Type  | Our department treats operational information different from administrative information.                                                                                           | The distinction is often unclear. There are few guidelines to help projects to help manage this distinction.   Applications are categorized as managing operational or administrative information.  For example, CW is administrative, CWOPS is operational (however only administrative-operational information is permitted in CWOPS). |

### Quality / Non-Functional Characteristics

Identifying the key quality attributes of the system is required to chose an effective architecture style.  Trade-offs between complexity, scalability, observability, reliability and other attributes is required.  No single architecture style is suitable for all applications.


## Application Architecture Styles

Architectural style is defined as a set of characteristics and features that make a building or other structure notable or historically identifiable. This concepts also applies to application architecture where new styles are being established, and evolving everyday.   Some common application architecture styles are are highlighted below, falling into two broad categories; monolithic and distributed[^Application-1]:

### Monolithic Styles

Layered:  3-Tier / N-Tier / Client-Server
- pros: simplicity and cost
- cons: scalability, fault tolerance, deployability, testability, modularity

Pipeline: pipelines & filters (linux pipes)

- pros: simplicity and cost
- cons: scalability, performance


### Distributed Styles

Microservices Architecture

  - pros reliability, modularity, elasticity
  - cons: cost, complexity

Orchestration - Service Oriented Architecture (SOA) (~2005)

  - pros:  elasticity, fault tolerance, scalability
  - cons: complexity, testability, cost
  - weakness: A big weakness of SOA is the use of a common platform for all services deployed (e.g., Oracle SOA Suite, IBM WebSphere, DataPower, MessageBroker).  SOA also requires stateful services and sharing of context (tight-coupling).
  - promise: While SOA promises loose-coupling, scalability and fault tolerance, however these qualities are difficult to achieve.[^Application-SOA]

Event Driven Architecture
- pros: fault tolerant, modular, good cost
- cons: complexity, testability


[^Application-1]: [Fundamentals of Software Architecture](www.worldcat.org/isbn/978-1-4920-4345-4) : Richards, Mark, and Neal Ford. Fundamentals of Software Architecture: An Engineering Approach. First edition. Beijing Boston Farnham Sebastopol Tokyo: O’Reilly, 2020.

<<<<<<< HEAD
[^Application-SOA]: [Josuttis, Nicolai M. SOA in Practice. 1st ed. Beijing ; Sebastopol: O’Reilly, 2007.]](http://www.worldcat.org/978-0-596-52955-0)]
=======
[^Application-SOA]: [Josuttis, Nicolai M. SOA in Practice. 1st ed. Beijing ; Sebastopol: O’Reilly, 2007.](http://www.worldcat.org/isbn/978-0-596-52955-0)
>>>>>>> 032234cb70f5fd08ae932b99f83587311bae9f29
