---
category: concept
subjects:
  - firmware
full_form: NULL
acronym: NULL
tags:
  - low_level/boot
---

## Definition
A boot loader is a small program responsible for loading the operating system [[Low Level/Kernel|Kernel]] and transferring control to it. In general, it can be decomposed into the following steps:
1. Allocating memory for the kernel and it's additional modules and device drivers
2. Loading the kernel, it's module and drivers into the allocated memory with the set up parameters
3. Transferring control to the [[Low Level/Kernel|Kernel]]

## External References
[wikipedia.org](https://en.wikipedia.org/wiki/Bootloader)
