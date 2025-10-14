---
category: model
subjects:
  - networks
full_form: Representational State Transfer
acronym: REST
tags:
  - networks/architecture
---

## Definition
An [[Foundations/API|Foundations/]] is a software architecture design, bundling a set of definitions and protocols for building and integrating distributed systems through interfaces, designed to rule the communication of different software components. The REST is a set of architectural constraints for a network distributed system's [[Foundations/API|Foundations]] for assuring that information is transferred via well-recognized, language-agnostic, and reliably standardized client/server interactions

## Constraints
- **Client/Server -** The architecture is composed by clients, servers, and resources, with requests being managed through [[Networks/HTTP|HTTP]]
- **Statelessness -** No client content is stored on the server between requests and each request is separate and unconnected
- **Cacheability -** Responses indicate their own cacheability, possibly eliminating the need for some client-server interactions
- **Layered System -** A client cannot ordinarily tell whether it is connected directly to the end server, or to an intermediary along the way, for the client-server interactions can be mediated by additional layers offering additional features organized into hierarchies
- **Uniform Interface -** Information is transferred in a standard form through uniform interfaces, implying in the need of:
	- **Resource identification in requests -** Resources requested are identifiable through [[Foundations/URI|URI]]'s and are conceptually separate from the representations returned to the client
	- **Resource manipulation through representations -** Clients receive files that represent resources, those of which must have enough information to allow modification or deletion
	- **Self-descriptive messages -** Each message includes enough information to describe how it should be processed
	- **Hypermedia as the engine of application state -** A client should be able to use dynamically server-provided links to discover all actions currently available
	
## External References
[wikipedia.org](https://en.wikipedia.org/wiki/REST)
[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Glossary/REST)
[redhat.com](https://www.redhat.com/en/topics/api/what-is-a-rest-api)
