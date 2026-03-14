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
most common characteristics
- special chars used are \[!@#$\], as they are the nearest to the shift key
- first letter capitalized
- numbers appended to the end
- special chars as the last char, or the separator from the numbers

### Hash Cracking
1. Extract hashes
2. Identify algorithm and format hashes
3. Calculate the cracking time
4. Prepare wordlist
5. Attack the hash

### Brute Force
attempt every possible password variation, working systematically through every combination of characters

### Rainbow Table Attack
A list or table of precomputed (hashed) passwords is called a [_Rainbow Table_](https://en.wikipedia.org/wiki/Rainbow_table)

### Password Spraying

### Dictionary Attacks
wordlist
rule-based: prepare the wordlist by removing all passwords that do not satisfy the password policy or by manually modifying the wordlist to include appropriate passwords

### Pass-The-Hash

## Discovery

## Execution

## Mitigation

## Evasion

## Relevant Reading
- [T1110 - Brute Force](https://attack.mitre.org/techniques/T1110)
- [TANNNN - NAME](https://attack.mitre.org/tactics/TANNNN)
- [MNNNN - NAME](https://attack.mitre.org/mitigations/MNNNN)
- [Payload All The Things](https://swisskyrepo.github.io/PayloadsAllTheThings/)
- [EDB-ID XXXXXX](https://www.exploit-db.com/)
