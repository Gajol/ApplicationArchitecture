

# Software Bill of Materials

A software bill of materials (SBOM) is useful in increasing the security of systems.  

SBOM : A Software Bill of Materials is a list of the components that form a piece of software, as well as relevant metadata (such as licensing information) about those components.
- Open source libraries that an application imports or depends on.
- Plugins, extensions or other add-ons that an application uses.
- Custom source code written in-house by developers.
- Information about the versions, licensing status and patch status of these components.


The USA has identified SBOM as a key factor in securing the software supply chain.  The *[USA Cybersecurtiy & Infastructure Security Agency -CISA SBOM](https://www.cisa.gov/sbom)* states *SBOM has emerged as a key building block in software security and software supply chain risk management.*.  This is supported in the *[USA Executive Order to Improve the Nation's Cybersecurity](https://www.whitehouse.gov/briefing-room/presidential-actions/2021/05/12/executive-order-on-improving-the-nations-cybersecurity/)*, section 4, *providing a purchaser a Software Bill of Materials (SBOM) for each product directly or by publishing it on a public website;*

## Creating Software
- jFrog Artifactory, [*Best Practices for Software Bill of Materials*](https://jfrog.com/knowledge-base/best-practices-for-software-bill-of-materials-sbom-management/) include:
  - Use a consistent SBOM format
  - Automate SBOM creation; generate the SBOM as part of the CI/CD process.  Cytographically sign the SBOM.
  - Update your SBOM with each release
  - Include full metadata in your SBOM
  - Provide SBOMs for SaaS


SBOM : A Software Bill of Materials is a list of the components that form a piece of software, as well as relevant metadata (such as licensing information) about those components.
- Open source libraries that an application imports or depends on.
- Plugins, extensions or other add-ons that an application uses.
- Custom source code written in-house by developers.
- Information about the versions, licensing status and patch status of these components.


## Consuming Software
As an enterprise IT consumer of many software products understanding how to acquire, manage and use these SBOMs is equally important.  There are several playbooks available to help us formulate a strategy.  The [USA NTIA Software Consumers SBOM Management and Use](https://www.ntia.gov/files/ntia/publications/software_consumers_sbom_acquisition_management_and_use_-_final.pdf)
- acquisition : two options; datafeeds into workflows (structured), and, archive store of SBOM files (e.g., in ECM)
- software entity resolution : two options; automated via build and ci/cd pipeline, and, two human-entered
- chain of custody and software types: knowing exactly where software came from : was the software sourced as a bindary, locally built, ..

  *For high-assurance systems, and environments, software transparency requires either that the point of origin for a software c omponent be identified, or that the customer’s default assumption for vulnerability management is that designated open source components have been included in the supplier deliverable as binary packages and therefore may contain thirdparty libraries and r untime dependencies as packaging inclusions that are not present in the open source repository to which the binary package manager refers as the compiled component.*

- dependency and transitive dependency resolution.

## Using SBOM
The set of SBOM data within them is useful in processes and platforms that include:
- Configuration management databases (CMDBs)
- Software asset management (SAM) systems
- Security operations centers (SOCs)
- Procurement workflows such as procurement diligence (vetting), contractor/vendor management systems, and third party risk and compliance monitoring
- Software supply chain risk assessment and management functions
