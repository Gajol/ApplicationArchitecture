# Definitions

This section provides some definitions relating to the application architecture domain in the architecture, platform, framework, platform, and portfolio managements areas.

## Architecture

The following table describes some common terms associated with application architecture.

| Term                               | Definition                                                                                                                                                                                                                                                                                                                                                                                            |
| :-- | :---- |
| Application                        | An application, application program or application software is a computer program designed to help people perform an activity                                                                                                                                                                                                                                                                         |
| Application Architecture (GC EARB) | Application Architecture consists of the interaction of applications with each other and with users. It focuses less on internal mechanics and specific programming and more on the overall design, and how data is consumed and created by the system. It views the interactions between applications, databases, and middleware to ensure scalability, reliability, availability and manageability. |
| Architecture Style                 | The combination of distinctive features related to the specific context within which architecture is performed or expressed; a collection of principles and characteristics that steer or constrain how architecture is formed. (TOGAF)                                                                                                                                                               |
| Architecture Types/Domains         | The overall architecture of an enterprise can be described by integrated sub-architecture domains. These are; Business, Application, Information, Technology, Security, Privacy and Data Architecture                                                                                                                                                                                                 |
| Architecture Characteristics       | Architecture characteristics are the aspects the system must do that are not directly related to the domain functionality. These are often called non-functional requirements but should be considered as Quality Requirements. An architectural characteristic influences some aspect of the design, and is critical to the application's success.                                               |


## Application  Platforms
An application platform provides an environment for software to be executed.

| Platform      | Definition                                                                                              | Example Products                           |
| :-- | :------ | :----- |
| Low Code Application        | A platform which allows for the creation of applications with little to no code.                        | Mendix, ServiceNow, Outsystems, Salesforce |
| Business Process Management | A platform which supports business processes through workflows, processes, orchestration and monitoring | Pega Platform, Microsoft Dynamics          |
| Robotic Process Automation  | A tool which can automate repeated manual tasks.                                                        | uiPath                                     |

## Application Web Frameworks

An web framework is a software framework used by software developers following a standard structure supported by the framework[^StackOverflow-Survey].


| Framework             | Definition                                                                                                                           | Examples                                                                                                                            |
| :-- | :----- | :---- |
| Application Framework | Software framework for enterprise applications                                                                                       | Spring's framework is used to create Java-based enterprise applications.  .Net is a Microsoft-led framework (free and open-source). |
| Front-End Frameworks  | Create and provide the aesthetics, the user experience, and the visual appeal of web applications                                    | React.js, JQuery, Angular, Vue.js                                                                                                   |
| Back-End Frameworks   | Provides the framework for the aspects the user does not see, typcially on a server. APIs, dbs, search, caching are common functions | Nodejs, Spring, Ruby on Rails                                                                                                       |


## Technology Stacks

A technology stack is a set of components (often open-source) bundled together to provide an application development framework.  A stack often has a front-end and back-end aspect with browser, framework, database, server and operating system being specified.

There are many technology stacks.

|Stack|Expansion|
|--|----|
|LAMP|Linux, Apache, MySQL, PHP|
|MEAN|MongoDB, Express, Angular, Node.js|

## Application Components

There are many groups of terms relating to applications and application development.

| Term                 | Definition                                                                                                                                                                                                                                                                                                                                                       |
| :-- | :----|
| API                  | An application programming interface (API) is a connection befferstween computers or ocomputer programs. An API is a software interface, offering a service to other pieces of software.  An API may be a web-service call (REST API, ...) or a software library or framework (function calls, methods, libraries, ...).                                         |
| Front-End & Back-End | In simple application terms, the front-end of an application is concerned with the presentation to the end-user. In simple application terms, the back-end interacts with the data access layer.                                                                                                                                                                 |
| Web Service          | An API to invoke a service over a network.  Many different standards exist for web service APIs (Service Oriented Architecture - SOA and SOAP, REST API, CORBA). gRPC is newer option (2015) using HTTP and ProtoBuf; while more complex than REST APIs, offers programatic interface description language.   gRPC is often used in micro-service architectures. |
| Component, Module, Object | These terms refer to software engineering aspects to identify a software package that encapsulates a set of related functions (or data).[^ComponentSW]|

## Application Portfolio Management
Application Portfolio Management (APM) is used by enterprises to manage the lifecyle of applications.  The key goals of APM are to provide oversight to manage risks, to reduce costs and to make strategic investment decisions.   Some common APM terms are:

|Term|Definition|
|--|----|
|Application Life Cycle (ALC)|The ALC defines the stages of an application.  Four stages are commonly used; 1) governance (decision-making stakeholders decided to create an application; 2) development (the process of creating an application), 3) testing and 4) operations and maintenance.|  
|Technical Debt|Technical debt is the coding you must do tomorrow because you took a shortcut in order to deliver the software today.|
|IT Governance| IT governance is processes that enable the IT staff to better manage risk and operate efficiently to the benefit of the organization.|
|Critical Service|A critical service is one that, if disrupted, would result in a high or very high degree of injury to the health, safety, security or economic well-being of Canadians, or to the effective functioning of the Government of Canada.|


[^StackOverflow-Survey]: StackOverflow's annual survey identifies the top software languages, databases, web frameworks and tools. - [*2021 StackOverflow 2021 Survey*](https://insights.stackoverflow.com/survey/2021#technology)

[^ComponentSW]: [Componet Based Software Engineering - Wikipedia](https://en.wikipedia.org/wiki/Component-based_software_engineering#History)
