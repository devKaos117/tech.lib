---
category: NULL
subjects:
  - NULL
full_form: NULL
acronym: NULL
---
## Definition
<https://en.wikipedia.org/wiki/Bell%E2%80%93LaPadula_model>
enforce access controls in systems with multiple security levels (for instance, unclassified, confidential, secret and top secret). individuals cannot read content with a security level higher than their own (known as the _Simple Security Property_) or write content with a security level lower than their own (known as the _Star Security Property_). In certain contexts, they may not be allowed to read or write at a level other than their own (known as the _Discretionary Security Property_).

<https://en.wikipedia.org/wiki/Brewer_and_Nash_model>
enforce access controls to maintain confidentiality, but with the specific aim of minimizing conflict of interest by using data segregation and dynamic access controls

<https://en.wikipedia.org/wiki/Biba_Model>
enforce access controls and is designed to protect the _integrity_ of information where individuals and information are assigned different integrity levels. individuals cannot read data with a lower integrity level than their own (known as the _Simple Integrity Property_) or write content with an integrity level higher than their own (known as the _Star Integrity Property_). individuals cannot request access to information with a higher integrity level than their own (known as the _Invocation Property_)

https://en.wikipedia.org/wiki/Clark%E2%80%93Wilson_model
protect data integrity. This is implemented through _access control triples_ (or simply _triples_), which consist of a _subject_, _program_ (also known as a _transaction_) and _object_. individual subjects don't have direct access to data objects but only access and modify them through a series of _programs_, which themselves operate on data objects and enforce integrity policies

### Open Security
MISSING
the security of a system should not depend on its secrecy
<https://en.wikipedia.org/wiki/Open_security>

### Defense in Depth
MISSING
advocates for adding defenses to as many layers of a system as possible, so that if one is bypassed, another may still prevent full infiltration
<https://en.wikipedia.org/wiki/Defense_in_depth_(computing)>

### Zero Trust Architecture
The [ZTA]{Zero Trust Architecture} is a security model and strategic philosophy based the core principle of **"Never trust, always verify"**. Concluding the [[IAM#Principle of Least Privilege|PoLP]], it prohibits the assumption that any entity, network or information should be automatically trusted.

## Relevant Reading
- [[]]

## External Reference
[en.wikipedia.org](https://en.wikipedia.org/wiki/Computer_security_model)
[RFCNNNN - NAME](https://datatracker.ietf.org/doc/html/rfcNNNN)
