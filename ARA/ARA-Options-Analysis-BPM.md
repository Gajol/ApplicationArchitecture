

# BPM Options Analysis - 2022

Checklist:
Pattern Defined.
What open source options exist, and what are their key strengths and weaknesses?

## Pattern
I need a workflow system to manage a business service.
Questions?
Is this a workflow? a case management? orchestration?


## Open Source

|Open Source|Language|Strenghts|Weaknesses|
|--|--|--|--|
|[Cadence](https://cadenceworkflow.io/) - Uber|Java, Go|Highly scalable workflows. Microservice/API workflows.|Not a BPM workflow system. Forked [temporal-workflow](https://stackoverflow.com/questions/61157400/temporal-workflow-vs-cadence-workflow#61281435) to use ProtocolBuffers and gRPC.|
|Airflow - Airbnb|Python|Google has cloud-based Airflow, [Google Composer](https://cloud.google.com/composer/)||
|[Jboss]()|Java||
|[Wildfly](https://www.wildfly.org/)|Java|JEE/Jakarta Application Server|

- [DataOps Orchestration - compares Cadence and Airlfow - Argo](https://tncad.blogspot.com/2020/05/dataops-orchestration.html)

Java EE : now [Jakarta EE](https://en.wikipedia.org/wiki/Jakarta_EE)


https://www.temporal.io/
- used by Stripe, Netflix and Datadog, Hashicorp, Box, ...
- Netflix - https://www.youtube.com/watch?v=LliBP7YMGyA
  - Spinnaker uses temporal : Spinnaker main charter was continuous delivery
  - orchestration system (wrote our own plumbing) - used temporal.
  - Data Infrastructure: Flink Control Plane : blue / green deployments (was Zookeeper and coordination) - simplified with temporal.
  - XDC, MySQL RDS (would prefer to use Cassandra - can't depend on other since we are Tier-0 therefore use MySQL RDS )
  - Chaos Monkey
  - 500,000 production workflows / day
- seems to replace Redic, RabbitMQ etc for a CNA
- *Build durable apps with Temporal and never look back.*
