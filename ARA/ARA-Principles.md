

# Digital Transformation : Design Principles

The website *Principles for Digital Design*[^Principles-1] [*Design Principles*](https://digitalprinciples.org/principles/) reference in *Hewitt, Eben. Semantic Software Design: A New Theory and Practical Guide for Modern Architects, 2020.*.

- Design with the User : User-centered design starts with getting to know the people you are designing for through conversation, observation and co-creation.

- Understand the Existing Ecosystem : Well-designed initiatives and digital tools consider the particular structures and needs that exist in each country, region and community.

- Design for Scale: Achieving scale requires adoption beyond an initiatives pilot population and often necessitates securing funding or partners that take the initiative to new communities or regions.

- Build for Sustainability : Building sustainable programs, platforms and digital tools is essential to maintain user and stakeholder support, as well as to maximize long-term impact.

- Be Data Driven : When an initiative is data driven, quality information is available to the right people when they need it, and they are using those data to take action.

- Use Open Standards, Open Data, Open Source, and Open Innovation: An open approach to digital development can help to increase collaboration in the digital development community and avoid duplicating work that has already been done.

- Reuse and Improve : Reusing and improving is about taking the work of the global development community further than any organization or program can do alone.

- Address Privacy and Security : Addressing privacy and security in digital development involves careful consideration of which data are collected and how data are acquired, used, stored and shared.

- Be Collaborative : Being collaborative means sharing information, insights, strategies and resources across projects, organizations and sectors, leading to increased efficiency and impact.


## Data is an Asset
What are the application architecture implications of "data is an asset"?
- Past: In the past, applications were made to help users accomplish a task.  The data design model might have been part of the software development process, but it was not a prioritized objective.   
- Today: With data as an asset being a core principle, considerable time should be spent defining how data is collected, stored, organized/modelled, __protected__, and making it available to other applications.


# API
2002 Amazon API Principle [[reference](https://apievangelist.com/2012/01/12/the-secret-to-amazons-success-internal-apis/)]:
- All teams will henceforth expose their data and functionality through service interfaces.
- Teams must communicate with each other through these interfaces.
There will be no other form of inter-process communication allowed: no direct linking, no direct reads of another team’s data store, no shared-memory model, no back-doors whatsoever. The only - communication allowed is via service interface calls over the network.
- It doesn’t matter what technology they use.
All service interfaces, without exception, must be designed from the ground up to be externalizable. That is to say, the team must plan and design to be able to expose the interface to developers in - the outside world. No exceptions.
- __Anyone who doesn’t do this will be fired.__  Thank you; have a nice day!

From "Hewitt, Eben. Semantic Software Design: A New Theory and Practical Guide for Modern Architects, 2020"
- The protocol, too, is another element to consider in our deconstructed method. After doing this for more than 20 years, it becomes very apparent how much time we technologists spend rearranging the furniture for the flavor of the month. Everyone had to switch everything to SOAP. Then they hated SOAP and had to switch everything to XML. Then they hated that and had to switch everything to JSON. The clever minority touted ProtoBuf. Popular products like Cassandra used Avro, so a patch of proponents pop up around that. Soon something else will come along.


- Postman - 12 features to help solve API problems : https://apievangelist.com/2022/01/27/twenty-problems-that-postman-is-solving-for-developers-in-2022/




- [^Principles-1]: [*Principles for Digital Design*](https://digitalprinciples.org/principles/]

- [^Principles-2]: [*TOGAF Architecture Principles*](https://pubs.opengroup.org/architecture/togaf8-doc/arch/chap29.html)

- [^Principles-3]: [Hewitt, Eben. Semantic Software Design: A New Theory and Practical Guide for Modern Architects, 2020.](www.worldcat.org/isbn/978-1-4920-4594-6)
