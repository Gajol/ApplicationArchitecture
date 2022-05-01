# Principles

## Digital Transformation: Design Principles

There are many sources for digital principles[^Principles-1].  The Government of Canada has identified the following digital architecture standards.  The standards/principles are in support of the Digital Operations Strategic Plan.

Application architecture should include these as over-arching guidelines.



| Principle                                            | Description                                                                                                                                                                                      |
| :--------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Use Open Standards and Solutions by Default          | Open Source, Prioritize (open source, COTS, custom), contribute to open-source                                                                                                                   |
| Maximize Reuse, Reuse and Improve                    | Leverage existing solutions, minimize duplication.                                                                                                                                               |
| Design for Users First                               | User-centred methods, focus on users, using agile.                                                                                                                                               |
| Deliver with Multidisciplinary Teams                 | Include all skillsets required for delivery                                                                                                                                                      |
| Design for Performance, Availability and Scalability | Design quality into the system.  Use distributed systems (assume failure will happen)                                                                                                            |
| Enable Interoperability                              | Expose functionality as a service.  Use microservices built around business capabilities.  Scope each service to a single purpose.  Use APIs.  Use the Canadian Digital Exchange Platform (CDXP) |
| Design Systems to be Measurable and Accountable      | Publish Service Level Agreements (SLAs), Make an audit trail for all transactions (traceability).                                                                                                |
| Keep Data Organized                                  | Decouple master data from applications.  Make systems of record (SOR) authoritative sources, use Master Data Management (MDM)                                                                    |
| Use Cloud First                                      | Use SaaS -> PaaS -> IaaS                                                                                                                                                                         |
| Design for Security and Privacy                      | Categorize data, perform privacy impact assessment (PIA) on personally identifiable information (PII)                                                                                            |

### GC References for Principles and Standards
1. CTO - Government of Canada Digital Standards[^Principles-2]
2. Digital Operations Strategic Plan - 2021-2024[^Principles-DOSP]
3. Directive on Service and Digital[^Principles-DSP]
4. Standards on APIs[^Principles-API]

#### GC DOSP
The GC Digital Operations Strategic Plan[^Application-2] indicates the priorities for services/applications should be, '*developing and delivering services that, by design, put users first by being accessible, inclusive, secure and easy to use, and that respect privacy and choice of official language*.   

# DevOps Principles

From [Coursera - DevOps Culture and Mindset](https://www.coursera.org/lecture/devops-culture-and-mindset/the-westrum-model-for-improving-organizational-culture-8HXtP)

1. __Eliminate Waste__ : Don't code more features than needed.   Aligns with rationalization principle.\
1. __Build Quality In__ : Quality is everyone's responsibility.  (Reference Deming) Verify quality is built into product and process.
1. __Create Knowledge__ : Amplify learning.  Development is constant learning. Create blogs, videos, team-onboarding tutorials, leverage hands-on training environments.
1. __Defer Commitment__ : Make decisions at the right time, with analysis and considerations.  Defer decisions until you have more information.  Understand impact of decisions.   ''*Take your time. When the decision is irreversible, give yourself time and space to think it through. When the decision is easily reversible, don't overthink it.*' - *[Dries - Drupal - Decisions](https://dri.es/principles-for-life)*
1. __Deliver Fast__ : Ensure feedback received early and often allowing to change and adapt.  Deliver in smaller batches which will allow you to deliver faster.
1. __Respect People__ : Lean and DevOps rely on a culture of respect.
1. __Optimize the Whole__ : Employ Systems Thinking.


[^Principles-1]: [*Principles for Digital Design*](https://digitalprinciples.org/principles/)

[^Principles-2]: [CTO - Government of Canada Digital Standards](https://www.canada.ca/en/government/system/digital-government/government-canada-digital-standards.html)

[^Principles-DOSP]: [GC Digital Operations Strategic Plan - 2021-2024](https://www.canada.ca/en/government/system/digital-government/government-canada-digital-operations-strategic-plans/digital-operations-strategic-plan-2021-2024.html)

[^Principles-DSP]: [Directive on Service and Digital](https://www.tbs-sct.canada.ca/pol/doc-eng.aspx?id=32601)

[^Principles-API]: [Standards on APIs](https://www.canada.ca/en/government/system/digital-government/modern-emerging-technologies/government-canada-standards-apis.html)
