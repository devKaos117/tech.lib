---
category: concept
subjects:
  - cybersec
full_form: Privileged Access Management
acronym: PAM
---

## Definition
[PAM]{Privileged Access Management} is the sub-discipline of [[CyberSecurity/Theory/IAM|IAM]] dedicated to securing, managing, and monitoring all [[CyberSecurity/Theory/IAM#Identity|identities]] that possess elevated permissions to critical systems and sensitive data. It enforces the [[CyberSecurity/Theory/IAM#Principle of Least Privilege|PoLP]] on the accounts that, if compromised, pose the greatest risk of catastrophic impact.

## Privileged Identity Lifecycle
- **Identification and Discovery:** Automated scanning of networks/AD for hardcoded credentials, service accounts, and undocumented high-privilege groups
- **Credential Vaulting:** Integration with [HSM]{Hardware Security Module} or [TPM]{Trusted Platform Module} and modern encryption
- **Session Management and Monitoring:** Definition of [RDP]{Remote Desktop Protocol} or [SSH]{Secure Shell protocol} proxy architecture and recording methods

## Core Security Mechanisms
- **[JIT]{Just-In-Time} Access:** The elevated permissions access is temporary, revoked automatically after the defined task or time conclusion
- **Privileged Delegation and [PEC]{Privilege Elevation Control}:** A whitelist of specific commands or applications allowed to run with elevated rights without exposing the user's primary credentials is implemented, typically via [PME]{Privilege Management for Endpoints}
- **Credential Vaulting:** Privileged credentials are stored in centralized encrypted vaults and automatically rotated on a schedule or after use
- **Session Logging:** Privileged sessions are heavily logged to keep track and allow for precise audits of activities

## PAM Architectures
- **Broker Model:** It operates via a proxy architecture, centralizing the [PAM]{Privileged Access Management} components in a highly secured cluster. It's has a simpler implementation and allow for the complete abstraction of credentials, but introduces a single point of failure
- **Distributed Model:** This model shifts the enforcement mechanism to the endpoint itself by deploying a lightweight, persistent software component on every host to localize the access control while still having a centralized policy management server. While allowing for a much granular control, it's equally more complex to implement


## Relevant Reading
- [[]]

## External Reference
[en.wikipedia.org](https://en.wikipedia.org/wiki/Privileged_access_management)
[microsoft.com](https://www.microsoft.com/en-us/security/business/security-101/what-is-privileged-access-management-pam)
[crowdstrike.com](https://www.crowdstrike.com/en-us/cybersecurity-101/identity-protection/privileged-access-management-pam/)
[fortinet.com](https://www.fortinet.com/resources/cyberglossary/privileged-access-management)
[tenable.com](https://www.tenable.com/cybersecurity-guide/learn/privileged-access-management-pam)