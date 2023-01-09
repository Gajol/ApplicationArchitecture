Github : goto file : find: 
https://github.com/Gajol/Eloquent-JavaScript/find
https://github.com/Gajol/Eloquent-JavaScript/find/main
search "usa"


https://github.com/Gajol/Eloquent-JavaScript/blob/main/Notes/API/APIStrategy.md
	IT Strategic Play 2017-2021
	https://www.canada.ca/en/treasury-board-secretariat/services/information-technology/strategic-plan-2017-2021.html

		Build a platform for enterprise interoperability
		Develop an application programming interface (API) strategy
		Introduce a government API store
		Enhance online infrastructure to enable departments to release their data and information
		Implement a platform for external collaboration
		Implement GCDOCS
		Migrate websites to Canada.ca and assess options for a single GC digital service platform


Digital First Approach
Digital Transformation Strategy : https://www.akana.com/blog/digital-transformation-strategy 
A digital transformation strategy is a plan of action that outlines how to transform the business in a digital economy by leveraging social, mobile, analytics, and cloud. Creating a solid digital transformation strategy is essential to innovation and developing business models that succeed.

Analysis Checklist 


# Composable Enterprise 
Composable enterprise represents an emerging opportunity for adapting faster. In this blog, we break down composable enterprise, packaged business capabilities, and how to leverage them with Akana.

Composable Enterprise: A highly connected organization with business processes supported by on-demand services that are acquired and leveraged from the cloud and APIs, furnished by outside providers or through internal data centers. The services, which tend to be small and lightweight, are themselves complete systems, and are connected to the composable enterprise through APIs, in the manner of building blocks. [ref: Mulesoft]
https://github.com/Gajol/Eloquent-JavaScript/blob/main/Notes/Enterprise%20Architecture/ComposableEnterprise.md


Digital Standards 
  Poster: https://www.csps-efpc.gc.ca/tools/jobaids/pdfs/digital-standards-eng.pdf 
  Digital Standards: https://www.canada.ca/en/government/system/digital-government/government-canada-digital-standards.html  

|Item|Related Goals|Application Alignment|
|--|--|--|
|Design with users|
|Iterate and improve frequently|
|Work in the open by default|
|Use open standards and solutions|
|Address security and privacy risks|
|Build in accessibility from the start|
|Empower staff to deliver better services|
|Be good data stewards|
|Design ethical services|
|Collaborate widely|




|Standard|Related Goals|Application Alignment|
|--|--|--|

|Item|Related Goals|Application Alignment|
|--|--|--|
|[ ] SOLID Principles|Composable Enterprise, Composable Application||
|[ ] Software Principles Adopted|Loose Coupling / High Cohesion||
|[ ] Agile INVEST User Stories

https://agileforall.com/new-to-agile-invest-in-good-user-stories/
Independent  : worked on in any order 
Negotiable   : A story IS an invitation to a conversation, not a contract 
Valuable     : User stories are being prioritized in the backlog according to business value, state the value.
Estimable    : A story has to be able to be estimated or sized so it can be properly prioritized
Small        : User stories to average 3-4 days of work (split user-stories)
Testable     : Acceptance criteria, every story needs to be testable in order to be “done.”.

Guidance : limit "Work IN Progress" / context-switching => retention

Splitting User Stories: https://corebts.com/blog/agile-user-story-splitting-bronze-vs-gold/ 
Don't gold-plate user stories .   Increase visibility of taska and workload.
https://corebts.com/blog/agile-user-story-splitting-bronze-vs-gold/

User stories a

Gartner Future of Applications : Composable Enterprise : https://www.gartner.com/document/3980861?ref=solrAll&refval=323877251 

Gartner API Strategy Maturity Model : https://www.gartner.com/document/code/451168?ref=authbody&refval=3980861

Forbes The Composable Enterprise: A Flexible Approach To Digital Transformation : https://www.forbes.com/sites/forbestechcouncil/2021/11/18/the-composable-enterprise-a-flexible-approach-to-digital-transformation/?sh=13e9569017c3
Build the functional foundation of an organization from “building blocks” that are interchangeable, tweakable and give users the ability to make adjustments as they go

https://www.akana.com/blog/what-is-composable-enterprise


Design Checklist


Digital Standards 
https://www.canada.ca/en/government/system/digital-government/government-canada-digital-standards.html



HATEOAS
https://gist.github.com/zdne/9215380
http://en.wikipedia.org/wiki/HATEOAS



Loose Coupling
	Principle of Least Knowledge | Law of Demeter
	https://en.wikipedia.org/wiki/Law_of_Demeter


Software 
Code Inspects : have theme, record the minutes, prove to your manager you did them



APIs
	resuable 
	web-services
	- develop API strategy ...

	GraphQL
	GraphQL is a specification used for talking to an API and is an alternative to REST.   The main concept of GraphQL is to POST a "query" to an HTTP endpoint (typically /graphql) to retrieve requested data, instead of hitting multiple HTTP endpoints (REST) for the same data.    GraphQL can allow you to get the exact data that you need, where as with REST (depending on the endpoints created) you can get more ddata returned than required (cuasing more network bandwidth to be used).

	With GraphQL a single HTTP request can be sent, resulting in only the data requested returned in response.
	
Data Model 
	
Ux 
	"Ask Me Once"
	No double entry - adds integrity improves integrity. 
	2018 CRA "Tell Us ONces" - https://www.canada.ca/en/revenue-agency/news/2018/02/the_government_ofcanadaislaunchingatellusonceapproachforonlinedi.html 

Think generically so it can be modified over time:
either via configuration / 
via feature flags 
via modular software changes 

	
	
DevOps
	Single Purpose Service 
	Containers, Kubernetes 
	NIST Kubernetes Hardening	
	https://grapeup.com/blog/how-to-successfully-adopt-kubernetes-in-an-enterprise/
	
	
	LL - start with simple experiments
		Drupal -> PROD with a container 
		Container Management System 
		Microservices 
		Services-Mesh
		
Microservice Architecture 
https://www.optisolbusiness.com/insight/8-core-components-of-microservice-architecture
pretty picture - 
https://1nwu8i3sj55rdbw4k4fm55i1-wpengine.netdna-ssl.com/wp-content/uploads/2020/08/Microservice-architecture-766x370.png 

		Clients 
		Database 
		Static Content
		Management 
		Service Discovery 
		Messaging Formats 
		API Gateway 
		Identity Providers 



	Here are 8 core components are Microsoft Architecture:

	Clients
	Identity Providers
	API Gateway
	Messaging Formats
	Databases
	Static Content
	Management
	Service Discovery

TBS 

Add guidance related to tabloid : 
critical application development 
cbas - 

SBOM - USA Governance 

Program or Project
	with the latter being of shorter duration
	deliver to prod multiple times during the project.
		Why:  embraces agile concepts of interative product increments 
		Why: ensures uppgrade strategy is developed, tested and reproducable
		Why:  shifts-left operations and security concepts


TBS Application Modernization 
	Data Management : "We can safely say that every GC department is obligated to maintain and publish datasets to the public."
	Checklist:  Will this project contribute data to the public?


SaaS - Cloud 
SaaS - or "Hybrid"
Security Design Patters for SaaS based Solution
	https://www.gcpedia.gc.ca/gcwiki/images/f/f4/GC_ESA_Security_Design_Patterns_for_SaaS-based_Solutions.pdf


	
Resume / Interview Topics 


Career Working Group : Career Advancement as part of Departmetn Technology Workforce - HR Strategy
Attract, Retain, Develop

Pega / BPM 
	BPAC - COE 
	CTO Marc Brouillard presentation
	defend decision vs MS Dynamics
	
	
	

OGD : Teams GC APM, Cloud Advisory WG, APM WG 

NextGen, approval Workday 
BCM -> mapping to processes. ...



Critical Thinking 
Design Thinking

IIS 
	https://www.iis.net/
	CORS, rewrite, Powershell


Agile 
Manifesto - https://agilemanifesto.org/
Manifesto 12 Principles - https://www.agilealliance.org/agile101/12-principles-behind-the-agile-manifesto/
Scrum Guide : https://www.scrumguides.org/scrum-guide.html 
Agile Alliance : https://www.agilealliance.org/ 
Scrum Event Cheat Sheets : https://www.gcpedia.gc.ca/gcwiki/images/3/3d/Scrum_Ceremonies_Workshop_%28updated_version%29.pdf
https://age-of-product.com/sprint-anti-patterns/



GC 

Architecture : https://wiki.gccollab.ca/GC_Enterprise_Architecture/Other_References 

Performance Management: https://intranet.canada.ca/hr-rh/ptm-grt/pm-gr/index-eng.asp 


Counter Intuitive Thinking 
Communications Community Office (CCO) at the Privy Council Office - March 2022
Terry O’Reilly, award-winning Canadian author and broadcaster
	Turning obstacles into opportunities – the ability to transform an obstacle into an opportunity is an incredible communication advantage. Creativity loves constraints. Constraints force you to abandon conventional thinking. When you have no resources, that is when you become resourceful


	The future belongs to counterintuitive thinking – we constantly generate solutions in our jobs, but there is always a brilliant solution to be found if you refuse to default to traditional thinking. Break the rules creatively. True innovation exists by colouring outside the lines. Break the rules and prosper.


	Learn the rules of your category and see if it’s possible to break those rules creatively – the answer is always hiding inside the obstacle. The solution is often waiting patiently at the heart of the problem. The pandemic has presented many obstacles for the world, creating an ideal period for counterintuitive thinking. Think outside the confines of your category.


GC News 
https://gcxgce.sharepoint.com/sites/News


TC - Agile CoE 
https://www.gcpedia.gc.ca/wiki/AgileCentreOfExcellence?lang=en

Agile: 
	Individuals and interactions (communication!) over robust processes and tools​
	Working software over comprehensive documentation (MVPs)​
	Responding to change vs. following a predetermined plan​

User collaboration



https://github.com/gc-da11yn/wcag-issues
	
	https://mozilla.github.io/nunjucks/



Product Management 

Maturity Levels 
Initial 
Repeatable 
Defined 
Managed 
Optimizing 

People, Process, Funding, Metrics, 

From Product Management Maturity Model : file:///\\adiap2.local\users\DOUGLAS8311\Downloads\OCIO%20All%20Team%202022-04-05%20Government%20in%20the%20Digital%20Age.pptx 


(Better than Crawl, Walk, Run)

To overcome systemic challenges to adopting product management within the GC

Strategic Actions

	Obtain a maturity assessment baseline, revisit it annually and report on progress
	Seek policy clarity on project vs. product, including whether project processes should apply to products
	Develop Product Manager job descriptions
	Pilot product management organizational structures (e.g. multi-disciplinary teams)
	Address HR rules that act as barriers to multi-disciplinary teams (e.g. CS must report to CS or EX)
	Pilot new funding models for digital products such as a “strategic investment reserve” 
	Develop metrics and KPIs that can be re-used across different digital products

Tactical Actions 
To help departments set themselves up as digital product organizations within the existing GC framework 

Leverage the Product Management Working Group to:
Share best practices, identify use-cases and engage in collaborative problem solving
Invite external experts to present on real-world examples of PM in practice
Develop a Product Management Playbook that includes definitions and guidance on how to work within existing authorities
Offer public sector product management training via CSPS 
Issue guidance on the role of a product manager
Compile reusable and modular artifacts (e.g. job descriptions, agile procurement processes)


Patrick LagioiaDirector, Strategy and EngagementDigital Enablement, TBS-OCIOPatrick.Lagioia@tbs-sct.gc.ca

Philippe AndrecheckManager, Business IntelligenceDigital Enablement, TBS-OCIOPhilippe.Andrecheck@tbs-sct.gc.ca 




