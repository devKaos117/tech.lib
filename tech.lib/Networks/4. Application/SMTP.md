---
category: protocol
subjects:
  - networks
full_form: Simple Mail Transfer Protocol
acronym: SMTP
---
## Definition
TCP ports 25 for conn or 587 for STARTTLS
[MUA]{Mail User Agent} sends to [MSA]{Mail Submission Agent} (relay server) which forward to [MTA]{Mail Transfer Agent}, and then to [MDA]{Mail Delivery Agent}, who finally sends it to the mailbox (IMAP / POP3)
Spam may be prevented with [DKIM]{DomainKeys} and [SPF]{Sender Policy Framework}
[ESMTP]{Extended Simple Mail Transfer Protocol} with SMTP-Auth

## Commands

|**Command**|**Description**|
|---|---|
|`AUTH PLAIN`|AUTH is a service extension used to authenticate the client.|
|`HELO`|The client logs in with its computer name and thus starts the session.|
|`MAIL FROM`|The client names the email sender.|
|`RCPT TO`|The client names the email recipient.|
|`DATA`|The client initiates the transmission of the email.|
|`RSET`|The client aborts the initiated transmission but keeps the connection between client and server.|
|`VRFY`|The client checks if a mailbox is available for message transfer.|
|`EXPN`|The client also checks if a mailbox is available for messaging with this command.|
|`NOOP`|The client requests a response from the server to prevent disconnection due to time-out.|
|`QUIT`|The client terminates the session.|

<https://serversmtp.com/smtp-error/>

## Relevant Reading
- []()

## External Reference
[en.wikipedia.org]()
[RFC5322 - Internet Message Format](https://datatracker.ietf.org/doc/html/rfc5322)
