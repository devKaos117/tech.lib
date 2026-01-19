---
category: concept
subjects:
  - cybersec
full_form: NULL
acronym: NULL
---
## Definition
Formal representation of a security policy, mapping abstract objectives into implementation rules

## Bell-LaPadula Model
Commonly used in military applications, primarily focused on [[Information#CIA Triad|confidentiality]], it enforces access controls in systems with _multiple security levels_. This model may have up to three properties:
- **Simple Security Property:** Individuals cannot read content with a security level higher than their own
- **Star Security Property:** Individuals cannot write content with a security level lower than their own
- **Discretionary Security Property:** Individuals cannot read or write at a level other than their own

## Biba Model
Primarily focused on [[Information#CIA Triad|integrity]], it enforces access control by assigning _integrity levels_ to _individuals_ and _resources_. This model may have up to three properties:
- **Simple Integrity Property:** Individuals cannot read data with a lower integrity level than their own
- **Star Integrity Property:** Individuals cannot write content with an integrity level higher than their own
- **Invocation Property:** Individuals cannot request access to information with a higher integrity level than their own

## Clark-Wilson Model
Primarily focused on [[Information#CIA Triad|integrity]], it is implemented through access control triples, which consist of a _subject_, a _transaction_ and an _object_. Individual subjects don't have direct access to data objects but only access and modify them through a series of transactions, which themselves operate on data objects and enforce integrity policies

## Brewer-Nash
Primarily focused on [[Information#CIA Triad|confidentiality]], it has an specific aim of minimizing conflict of interest by using _data segregation_ and _dynamic access controls_

## Zero Trust Architecture
The [ZTA]{Zero Trust Architecture} is a security model and strategic philosophy based the core principle of "Never trust, always verify". Concluding the [[Security Model#Principle of Least Privilege|PoLP]], it prohibits the assumption that any entity, network or information should be automatically trusted.

## Security Principles
### Principle of Least Privilege
Only the minimum level of privileges should be granted to every identity, only giving the necessary permissions for it's authorized tasks

### Separation of Duties
No single entity should have total control over critical and high-risk resources, ensuring fraud, error and abuse of power prevention

### Kerckhoffs's Principle
The security of a system should not depend on its secrecy or obscurity, remaining reliable even under full disclosure

### Defense in Depth
Security must be schematized holistically, having defenses to as many layers of a system as possible, so that if one is bypassed, another may still prevent full infiltration

### Fail-Safe Defaults
The implementation of a system must default to a secure state in the event of a failure or error, prioritizing the security over functionality

### Economy of Mechanism
Following the Occam's razor, when multiple implementations are possible, the simplest and most consistent one must be chosen

### Complete Mediation
Every access to every resource must be checked for proper authorization. This must remain true regardless of the requests origin or type, and no alternative path that bypass this rule should exist

## Relevant Reading
- [NIST SP 800-207](https://csrc.nist.gov/pubs/sp/800/207/final)

## External Reference
[en.wikipedia.org](https://en.wikipedia.org/wiki/Computer_security_model)
[redhat.com](https://www.redhat.com/en/blog/security-design-security-principles-and-threat-modeling)
[OWASP Developer Guide](https://devguide.owasp.org/)
[Bell–LaPadula model](https://en.wikipedia.org/wiki/Bell%E2%80%93LaPadula_model)
[Biba Model](https://en.wikipedia.org/wiki/Biba_Model)
[Clark-Wilson Model](https://en.wikipedia.org/wiki/Clark%E2%80%93Wilson_model)
[Brewer-Nash](https://en.wikipedia.org/wiki/Brewer_and_Nash_model)
