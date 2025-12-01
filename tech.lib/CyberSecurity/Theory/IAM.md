---
category: framework
subjects:
  - cybersec
full_form: Identity and Access Management
acronym: IAM
---

## Definition
[IAM]{Identity and Access Management} is framework comprising the policies and operations that ensures data [[CyberSecurity/Theory/Information#CIA Triad|integrity and confidentiality]] by governing and managing digital identities. It's foundational pillars are authentication, authorization and auditing, often referred to as AAA services.

## Identity
A digital identity is verifiable set of attributes linked to a unique entity within a defined security domain, representing the logical manifestation of a user, device or service.

## Authentication
The process of verifying the claimed identity of an entity during an access attempt. While often mediated by an [IdP]{Identity Provider}, it is fundamentally a proof-of-identity exchange

### Authentication Factors
- **Knowledge Factor:** Something that you know
- **Possession Factor:** Something that you have
- **Inherence Factor:** Something that you are

### Multi Factor Authentication
The [MFA]{Multi Factor Authentication} consists on the [AuthN]{Authentication} challenge requiring two or more distinct factor authentication. 

## Authorization
The process of validating that a given identity has the right to access or perform a determined resource or service.

### Components
- **[ACL]{Access Control List}:** Formal list of permissions attached directly to an object or resource, explicitly defining which identities have which permissions (or not)
- **[PDP]{Policy Decision Point}:** Component that evaluates the access request against the defined policy
- **[PEP]{Policy Enforcement Point}:** Component located next to the resource that intercepts access requests and enforces the [PDP]{Policy Decision Point}'s decision

### Access Control Models
- **[DAC]{Discretionary Access Control}:** Simpler and flexible model where the owner of a resource has the authority to determine and delegate access permissions to identities
- **[MAC]{Mandatory Access Control}:** Highly structured model where policies are centrally defined and strictly enforced by a security administrator based on the identity's clearance level with the resource's security label
- **[RBAC]{Role-Based Access Control}:** Assigns and delegates permissions based on roles to which identities are related in many-to-many
- **[RuBAC]{Rule-Based Access Control}:** Model based on a set of pre-defined rules and logical conditions that evaluate real time context to provide a dynamic access control
- **[ReBAC]{Relationship-Based Access Control}:** Dynamically manage access based on relationships between identities
- **[ABAC]{Attribute-Based Access Control}:** Model that evaluates a dynamic set of attributes to grant access, allowing for a highly granular and scalable access control

## Auditing
The systematic and independent process of evaluating the [IAM]{Identity and Access Management}.

### Objectives

- **Risk Management:** Detecting security weaknesses to counter urgent risks
- **Accountability and Traceability:** Providing a comprehensive record of all actions taken within the system
- **Compliance:** Generating evidence to prove adherence to [[CyberSecurity/Theory/GRC|GRC]]

### Processes
- **Logging:** Registering events and securely storing them in persistence, allowing for posterior tracking and debugging
- **Monitoring and Alerting:** Continuous real-time observation and analysis of events for detection and mitigation of potential threats

## Administration
Strategic planning, governance, policy definition and operational oversight of the [IAM]{Identity and Access Management} ecosystem.

### Identity Provider
Authoritative and centralized service that creates, maintains and manages identity information, offering the [AAA]{Authentication, Authorization, Auditing} services.

### Zero Trust Architecture
The [ZTA]{Zero Trust Architecture} is a security model and strategic philosophy based the core principle of **"Never trust, always verify"**, never assuming that any entity, network or information should be automatically trusted.

### Principle of Least Privilege
The [PoLP]{Principle of Least Privilege} is the security recommended practice of ensuring that only the minimum level of privileges should be granted to every identity, only giving the necessary permissions for it's authorized tasks.

### Separation of Duties
The [SoD]{Separation of Duties} is an internal control mechanism designed to prevent fraud, error and abuse of power by ensuring that no single entity has total control over critical and high-risk resources. 

## Relevant Reading
- [NIST Digital Identity Guidelines](https://pages.nist.gov/800-63-4/)
- [[CyberSecurity/Theory/PAM|PAM]]

## External Reference
[en.wikipedia.org](https://en.wikipedia.org/wiki/Identity_and_access_management)
[ibm.com](https://www.ibm.com/think/topics/identity-access-management)
[microsoft.com](https://learn.microsoft.com/en-us/entra/fundamentals/identity-fundamental-concepts)
[tenable.com](https://www.tenable.com/cybersecurity-guide/learn/identity-access-management-iam)