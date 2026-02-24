---
category: technique
subjects:
  - cybersec
full_form: NULL
acronym: NULL
cwe:
  - NULL
vector: remote/adjacent network/local/client-side
privileges: unauthenticated/authenticated/root
target: NULL
platform:
  - NULL
intent:
  - NULL
---
## Definition
phishing campaign

"In phishing, a pretext is a fake story designed to convince someone to open a link or attachment". A successful attack relies on a believable pretext

Attackers now leverage _Generative AI_ (Gen AI) to improve social engineering tactics. By using AI-augmented technologies such as _Large Language Models_ (LLMs), process large amounts of public data to identify potential phishing targets

Generative AI audio models  to clone voices and generative video models to create _deepfake_ videos that convincingly replicate an individual's facial expressions, movements, and voice patterns

_Retrieval Augmented Generation_ (RAG)

voice cloning and deepfakes

---

social engineering
psychological triggers (urgency, fear, authority, reward)

caller ID spoofing techniques
SIM swapping

---

- **Broad:** Targets many people at once with generic messages designed for broad appeal
- **Spear:** Targets specific individuals with personalized attacks, requiring detailed research
- **Whaling:** A form of spear phishing that focuses on high-profile individuals
- **Clone:** Mimicking an email from a commonly used service

---

- language, tone and grammar
- origin
- pretext

---

1. Decide objective
2. identify communication method
	1. email: malware delivery, malicious links for browser exploitation, [[XSS]] or credential access
	2. smishing (sms)
	3. vishing (voice)
	4. deepfake-enhanced

## Discovery

## Execution
office macros
exe, scr, hta, jscript files
Library-ms file (link to webdav)
exploits
links that force NTLM handshakes or perform CSRF
browser-in-the-middle
target fingerprinting
[[XSS]]

```bash
wget -E -k -K -p -e robots=off -H -D DOMAIN -nd URL
```

## Mitigation
email filtering
reputation block lists
scrutinize file attachments
Mark of the Web (MotW)
MFA
OWASP CSRFGuard

## Evasion
MotW CVE-2022-41091
alternative file formats, as ISO, img, zip, 7z...
URL shortener
homograph URL
prompt bombing (mfa fatigue)

## Relevant Reading
- [TNNNN - NAME](https://attack.mitre.org/techniques/TNNNN)
- [TANNNN - NAME](https://attack.mitre.org/tactics/TANNNN)
- [MNNNN - NAME](https://attack.mitre.org/mitigations/MNNNN)
- [Payload All The Things](https://swisskyrepo.github.io/PayloadsAllTheThings/)
- [EDB-ID XXXXXX](https://www.exploit-db.com/)
