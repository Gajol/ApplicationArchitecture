# Appendix - Definitions
## Architecture

Application Architecture (GC EARB)

: Application Architecture consists of the interaction of applications with each other and with users. It focuses less on internal mechanics and specific programming and more on the overall design of how data is consumed and created by the system. It views the interactions between applications, databases, and middleware to ensure scalability, reliability, availability and manageability.

Application Architecture (RedHat)
: An application architecture describes the patterns and techniques used to design and build an application. The architecture gives you a roadmap and best practices to follow when building an application so that you end up with a well-structured app. [[Redhat - CNA - What is Application Architecture](https://www.redhat.com/en/topics/cloud-native-apps/what-is-an-application-architecture)].   

Application Architecture (TOGAF)
: A description of the structure and interaction of the applications as groups of capabilities that provide key business functions and manage the data assets.  [[Application Architect - Wikipedia](https://en.wikipedia.org/wiki/Applications_architecture#Application_architect).]


### Architecture Quotes
:
- *Architecture is the decisions that you wish you could get right early in a project, product or project lifecycle* - Ralph Johnson & Martin Fowler
- *Architecture is about the important stuff, whatever that is.* - Ralph Johnson & Martin Fowler
- *Architecture is the stuff you can’t Google.* - Mark Richards


### Architecture Style (TOGAF)
: The combination of distinctive features related to the specific context within which architecture is performed or expressed; a collection of principles and characteristics that steer or constrain how architecture is formed.

Types of Architecture
: The overall architecture of an enterprise can be described by integrated sub-architecture domains. These are:

  - Business Architecture
  - Application Architecture
  - Information Architecture
  - Technology Architecture
  - Security Architecture
  - Privacy Architecture and
  - Data Architecture

### Architecture Characteristics:  
- Architecture characteristics are the aspects the system must do that are not directly related to the domain functionality. These are often called non-functional requirements but should be considered Quality Requirements.  

- An architectural characteristic meets three criteria:

  1. specifies a non-domain (*non-functional*) consideration,
  1. influences some aspects of the design, and
  1. is critical/important to the application's success. A few are listed below


- Examples of architectural characteristics:

  - operational characteristics: availability, business continuity, performance, recoverability, robustness, scalability, elasticity.

  - structural characteristics: configurability, extensibility, installability, reusability, localization, maintainability, portability, supportability, upgradeability.

  - cross-cutting: authentication, authorization, legal, privacy, security, supportability, usability, achievability, compatibility, accessibility, interoperability.

  - See *[Neal Ford's Presentation with List of Quality Attributes](http://nealford.com/downloads/Evolutionary_Architectures_by_Neal_Ford.pdf)* for more information

#### Quality Characteristics
Below are some quality characteristics to consider when developing applications:

Observability 
: Observability provides deep visibility into modern distributed applications for faster, automated problem identification and resolution.  Observability can be considered an active process where actions are taken based on observable events (contrary to traditional monitoring which reacts to quality thresholds).

Testability
: Testability is a quality attribute of an application that measures how easy it is to define test criteria, execute a set of tests and determine their success.

## Application

Application
: An application, application program or application software is a computer program designed to help people perform an activity

API
: An application programming interface (API) is a connection between computers or between computer programs. It is a type of software interface, offers a service to other pieces of software.  An API may be a web-service call (REST API, ...) or a software library or framework (function calls, methods, libraries, ...).

Front-End & Back-End
: In simple application terms, the front-end of an application is concerned with the presentation to the end-user. In simple application terms, the back-end interacts with the data access layer.

Web Service
: An API to invoke a service over a network.  Many different standards exist for web service APIs (Service Oriented Architecture - SOA and SOAP, REST API, CORBA). gRPC is a newer option (2015) using HTTP and ProtoBuf; while more complex than REST APIs, offers programmatic interface description language.   gRPC is often used in micro-service architectures.




## DevOps

DevOps, the practice of applying developmental best practices such as collaboration to infrastructure operations, has been shown to positively impact the efficiencies of development and operations teams today, especially in the cloud environment.

## Digital Transformation

Digital transformation is the process os using digital technologies to create new, or modify exiting business proceofes, culture and customer experiences to meet changingexistingss and market requirements.  Reimagining the business in the digital age is a digital transformation. - [*Salesforce*](https://www.salesforce.com/products/platform/what-is-digital-transformation/)

## Governance:

Governance
: is derived from the Greek word Huberman "*to steer*" is an important responsibility of the architect role. As the name implies, the scope of architecture governance covers any aspect of the software development process that architects (including roles like enterprise architects) want to exert an influence upon. For example, ensuring software quality within an organization falls under the heading of architectural governance because it falls within the scope of architecture, and negligence can lead to disastrous quality problems.

IT Governance
: is processes that enable the IT staff to better manage risk and operate efficiently to the benefit of the organization on the whole.   IT Governance includes aspects from many initiatives including:
- The Principles of Scientific Management — a method of a corporate organization focused on scientific output during the industrial era.
- Total Quality Management — a method focused on creating a work environment where employees strive to constantly improve.
- Quality Management System — a method that acts as a collection of organizational processes focused on increasing customer satisfaction.



## Policy Framework for Government of Canada
Treasury Board issues a range of policy instruments that are designed to establish mandatory requirements (rules) or voluntary best practices. There are three types of mandatory instruments (policies, directives and standards) and two voluntary instruments (guidelines and tools). - [*TBS Foundation Framework*](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=13616)

  Policy
  : Formal direction that imposes specific responsibilities on departments. Policies explain what deputy heads and their officials are expected to achieve.

  Directive
  : Formal instruction that obliges departments to take (or avoid) a specific action. Directives explain how deputy heads' officials must meet the policy objective.

  Standard
  : A set of operational or technical measures, procedures or practices for government-wide use. Standards provide more detailed information on how managers and functional specialists are expected to conduct certain aspects of their duties.

  Guideline
  : A document providing guidance, advice or explanation to managers or functional area specialists.

## Principles

A principle is a proposition.  It serves as the foundation for a system of beliefs. As propositions, principles are abstract, but they should precipitate actions on the part of your teams that support them. The principles are subsets or decompositions of your overarching corporate vision. If they’re not, your teams and the department will suffer from a lack of alignment. [^Hewitt]

## Technical Debt

Technical debt is the coding you must do tomorrow because you took a shortcut to deliver the software today.

Technical debt is somewhat misunderstood within IT and our department.   Technical debt goes beyond having aging end-of-life applications.  Below are some common definitions used to describe technical debt:

- Technical debt (also known as design debt or code debt, but can be also related to other technical endeavours) is a concept in software development that reflects the implied cost of additional rework caused by choosing an easy (limited) solution now instead of using a better approach that would take longer. [[Technical Debt - Wikipedia](https://en.wikipedia.org/wiki/Technical_debt)].

- Technical Debt is a term coined thirty years ago by Ward Cunningham:

  *Shipping first-time code is like going into debt. A little debt speeds development so long as it is paid back promptly with a rewrite. Objects make the cost of this transaction tolerable. The danger occurs when the debt is not repaid. Every minute spent on not-quite-right code counts as interest on that debt. Entire engineering organizations can be brought to a stand-still under the debt load of an unconsolidated implementation, object-oriented or otherwise.* [Ward Cunningham - 1992].  

  Note: Ward Cunningham is one of the authors of the [Agile Manifesto](https://agilemanifesto.org/)

- The sum of time and effort one has to pay to keep up with the tools one is 'married' to.

- Changes required that are not completed are considered debt, and until paid, will incur interest on top of interest, making it cumbersome to build a project. As a change is started on a codebase, there is often the need to make other coordinated changes in other parts of the codebase, system, solution or documentation. Although the term is used in software development primarily, it can also be applied to other professions.

- Technical debt is a concept in programming that reflects the extra development work that arises when code that is easy to implement in the short run is used instead of applying the best overall solution. - *[Technical Debt - Technopedia](https://www.techopedia.com/definition/27913/technical-debt)*
- Technical debt is commonly associated with extreme programming, especially in the context of refactoring. That is, it implies that restructuring existing code (refactoring) is required as part of the development process. Under this line of thinking, refactoring is not only a result of poorly written code but is also done based on an evolving understanding of a problem and the best way to solve that problem.

- Technical debt may also be known as design debt.

- When taking shortcuts and delivering code that is not quite right for the programming task of the moment, a development team incurs Technical Debt. This debt decreases productivity. This loss of productivity is the interest of the Technical Debt. - *[Technical Debt Metaphor - Agile Alliance](https://www.agilealliance.org/introduction-to-the-technical-debt-concept)*

- Managing technical debt is an increasingly critical aspect of producing cost-effective, timely, and high-quality software products, especially in projects that apply agile methods. A delicate balance is needed between the desire to release new software features rapidly to satisfy users and the desire to practice sound software engineering that reduces rework. - [*A Study of Technical Debt - Software Engineering Institute - Carnegie Mellon University*](https://insights.sei.cmu.edu/blog/a-field-study-of-technical-debt/)
