# Business

The applications that are developed and supported serve one or more business capabilities.  A business transformation or digital transformation often impacts many applications and the integrations between them.  During transformation programs it is important to have a clear understanding of the business's strategic direction.   

The success of an application can be greatly improved with quality business engagement and the development of business architecture artifacts to articulate the strategy and result plan and actions.

Some common artifacts to communicate business architecture are[^Business-1]:

1. Business Glossary
1. Organizational Map
1. Business Capability Model (BCM): A BCM identifies and scores capabilities against good system design quality attributes; namely: performance, scalability, stability, observability, extensibility, security.
1. Process Maps and Re-engineer Processes: Process maps identify what the business does and who is responsible.  [Value streams](https://en.wikipedia.org/wiki/Value_stream) help prioritize areas for improvement.  Model process using Business Process Modelling Notation (BPMN) to optimize processes.
1. Define the Metrics: Identify what metrics the business needs to assess and reflect on desired outcomes. These metrics must be possible to measure and communicate.
1. Understand the Governance Model: In your value stream, ask how decisions are made, who the authorities are, what roles they have, and what relevant review boards are.  This analysis helps identify the components of the governance model.
1. Business Architecture in Applications: What business strategy does this application map to?  Why does this project/application matter?  What new capabilities are you creating?  What major use cases are performed?  Who are the audiences?

## Business Capability Model (BCM)

A common way for the business to communicate what the organization does and needs is through a business capability model (BCM)[^Business-2]. There are many uses for a BCM.   

- Product owners can use a BCM to drive convergence in technology and business processes to enterprise standards.  
- Regular review of aligning the BCM with the department strategy and vision can allow enterprise architects and business architects to identify and prioritize the corresponding IT initiatives with business needs.  
- Internal committees, working groups and forums can collaborate to identify reusable business processes and push for adoption across the organization.  

Business capabilities, processes, information flows and value streams should be assessed routinely based on efficiency, priority, and complexity.


## Process Maps, Information Flows and Value Streams

Information Flows[^Business-4]
: is a business view of how information flows between business responsibility centres. *The main purpose of an information flow diagram is so that sources that send and receive information can be displayed neatly and analyzed.*  

Value Streams
: Introduced in Lean (1950's) a value stream is a set of actions (workflow) to produce value [^Business-3].  Value Stream Mapping is a visual tool introduced in Lean Management methodology to display the value stream with defined icons to show delays and inventory stages.   An example value stream might be recruitment "street to seat", "hire to retire" and "procure to pay".

Process Map
: A Process Map[^Business-5] defines the standard business process, and who is responsible for the activity.  


## Business Governance

Our Corporate Risk Profile (CRP) has identified the risk of our aging IT portfolio.   The health of our portfolio needs to improve.   Several leadership principles have been established over the years to provide guidance when addressing business needs.   

Key business principles relating to governing and directing architecture and application design are: 

1. __Rationalization__:  Application functionality must be constantly rationalized to allow us to tackle the large backlog of valuable business requests and opportunities.   During the software development phase, requirements must be rationalized against the originally approved project scope and other competing for business needs.  The costs of increment application development, both in project costs and ongoing costs must be carefully understood.  This is the process of rationalizing business needs and should include the senior management team when necessary.  [*See Guidance - Rationalization for more information*]

1. __Executive Lead / Change Management__:  Projects and programs need executive sponsors who are committed to embrace change management and the rationalization that is required to allow IT to develop a product.

1. __Business Architecture and Artifacts__:  The business plays a key role in shaping the application feature-set.  Business architecture (capabilities, value streams, information flows, organization model) is essential for successful analysis of the business needs during application development. Significant architecture re-work and design waste result if these are unavailable.  Including the increment improvement of business artifacts during the agile implementation can help derive value from the project.

## Business and Technology Environment
Our Information Technology (IT) operates in a complex and constrained environment due to the sensitivity of information management.  Awareness of the legislative and departmental directives and policies is crucial at the outset of application development.   

A common phrase used in DevOps is to *shift-left* quality attributes like security and privacy.   Key non-functionality quality requirements derived from our environment should be considered at the outset (e.g., official languages act, accessibility act, information management).   The non-functional requirements should be realistic and follow the SMART guidelines (Specific, Measurable, Achievable, Realistic, Time-Bound)[^Business-6].  Product Owners should be encouraged to collaborate with key stakeholders to identify necessary quality requirements throughout the creation of the system.


[^Business-1]: Hewitt, Eben. Semantic Software Design: A New Theory and Practical Guide for Modern Architects, 2020.  - *[ISBN 978-1-4920-4594-6](http://www.worldcat.org/978-1-4920-4594-6)*

[^Business-2]: [Wikipedia - Business Capability Model](https://en.wikipedia.org/wiki/Business_capability_model)

[^Business-3]: [Wikipedia - Value Streams](https://en.wikipedia.org/wiki/Value_stream)

[^Business-4]: [Wikipedia - Information Flow Diagram](https://en.wikipedia.org/wiki/Information_flow_diagram)

[^Business-5]: [Wikipeida - Business Process Maps](https://en.wikipedia.org/wiki/Business_process_mapping)

[^Business-6]: [Wikipedia (SMART) Requirements](https://en.wikipedia.org/wiki/SMART_criteria)
