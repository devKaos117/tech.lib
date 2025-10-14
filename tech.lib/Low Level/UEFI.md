---
category: firmware
subjects:
  - NULL
full_form: Unified Extensible Firmware Interface
acronym: UEFI
tags:
  - low_level/boot
---

## Definition
UEFI is a open standard modern booting firmware architecture designed to supersede the [[Low Level/MBR|MBR]], being faster, more flexible, modular, robust and supporting better functions. Although the [[Low Level/MBR|MBR]] boot is not trusted anymore due to its numerous known security vulnerabilities and exploits, the UEFI supports a [[Low Level/CSM|CSM]] booting process for Legacy [[Low Level/BIOS|BIOS]] [OS]{Operating System}

## GUID Partition Table
Being more flexible and robust than [[Low Level/MBR|MBR]], the [[Low Level/GPT|GPT]] uses a 64-bit addressing scheme and its stored in multiple locations on the disk to handle corruption. It uses [[Low Level/UUID|UUID]]'s and has a virtually unlimited number of partitions, supporting a theoretical disk limit of 9 ZB

## EFI System Partition
Typically a [[Low Level/FAT#FAT32|FAT32]] with 100MB minimum sized partition, the ESP is where UEFI applications, drivers, bootloaders, its configuration files, the [[Low Level/MBR|MBR]] and [[Low Level/GPT|GPT]] are stored

## Classes
1. **Class 0:** Legacy [[Low Level/BIOS|BIOS]];
2. **Class 1:** UEFI with [[Low Level/CSM|CSM]] and no external interfaces;
3. **Class 2:** UEFI with [[Low Level/CSM|CSM]] and external interfaces;
4. **Class 3:** UEFI without [[Low Level/CSM|CSM]] and with external interfaces;
5. **Class 3+:** UEFI C3 with [[Low Level/Secure Boot|Secure Boot]] enabled.

## Boot Stages
### 1. SEC
In the Security Phase a architecture specific assembly code initializes a temporary memory, verifies the firmware integrity and hardware reliability

### 2. PEI
In the Pre-EFI Initialization Phase PEI modules are loaded to handle early hardware initialization tasks and dealing with [[Low Level/ACPI|ACPI]] S3 operations

### 3. DXE
In the Driver Execution Environment Phase the main memory is already available, therefore some C code and device drivers are loaded, assigning [EFI]{Extensible Firmware Interface} device paths and transferring configuration data to the hardware

### 4. BDS
In the Boot Device Select Phase the boot devices are initialized, the drivers, [[Low Level/ROM|ROM]]'s and [[Low Level/PCI|PCI]] devices are executed according to the settings

### 5. TSL
In the Transient System Load Phase the boot is about to be completed, this being the moment when the user may enter the UEFI shell or run UEFI applications

### 6. RT
In the Runtime Phase the UEFI exit the boot services and gives the control to the [[Low Level/Kernel|Kernel]]

## Relevant Reading
- [[]]

## External References
[uefi.org](https://uefi.org/)
[uefi.org/specs](https://uefi.org/specs/UEFI/2.10/index.html)
[wikipedia.org/UEFI](https://en.wikipedia.org/wiki/UEFI)