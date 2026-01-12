---
category: NULL
subjects:
  - NULL
full_form: NULL
acronym: NULL
---
## Definition
Formal representation of a security policy, mapping abstract objectives into implementation rules.

## Bell-LaPadula Model
<https://en.wikipedia.org/wiki/Bell%E2%80%93LaPadula_model>
enforce access controls in systems with multiple security levels (for instance, unclassified, confidential, secret and top secret). individuals cannot read content with a security level higher than their own (known as the _Simple Security Property_) or write content with a security level lower than their own (known as the _Star Security Property_). In certain contexts, they may not be allowed to read or write at a level other than their own (known as the _Discretionary Security Property_).

## Biba Model
<https://en.wikipedia.org/wiki/Biba_Model>
enforce access controls and is designed to protect the _integrity_ of information where individuals and information are assigned different integrity levels. individuals cannot read data with a lower integrity level than their own (known as the _Simple Integrity Property_) or write content with an integrity level higher than their own (known as the _Star Integrity Property_). individuals cannot request access to information with a higher integrity level than their own (known as the _Invocation Property_)

## Clark-Wilson Model
<https://en.wikipedia.org/wiki/Clark%E2%80%93Wilson_model>
protect data integrity. This is implemented through _access control triples_ (or simply _triples_), which consist of a _subject_, _program_ (also known as a _transaction_) and _object_. individual subjects don't have direct access to data objects but only access and modify them through a series of _programs_, which themselves operate on data objects and enforce integrity policies

## Brewer-Nash
<https://en.wikipedia.org/wiki/Brewer_and_Nash_model>
enforce access controls to maintain confidentiality, but with the specific aim of minimizing conflict of interest by using data segregation and dynamic access controls

## Zero Trust Architecture
The [ZTA]{Zero Trust Architecture} is a security model and strategic philosophy based the core principle of **"Never trust, always verify"**. Concluding the [[Security Model#Principle of Least Privilege|PoLP]], it prohibits the assumption that any entity, network or information should be automatically trusted.

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
- [[]]

## External Reference
[en.wikipedia.org](https://en.wikipedia.org/wiki/Computer_security_model)
[redhat.com](https://www.redhat.com/en/blog/security-design-security-principles-and-threat-modeling)
[OWASP Developer Guide](https://devguide.owasp.org/)
