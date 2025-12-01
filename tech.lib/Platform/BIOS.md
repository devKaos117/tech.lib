---
category: firmware
subjects:
  - firmware
full_form: Basic Input/Output System
acronym: BIOS
---

## Definition
BIOS is a firmware responsible for initializing the computer components, performing hardware tests and providing runtime services for operating systems and boot loaders. Originally stored in [[Plataform/ROM|ROM]] chips, nowadays it's stored on flash memory to allow updates

## Process
### 1. Power-on Self-test
Diagnostic process where the BIOS initiates a series of tests to ensure the functionality of essential hardware components. POST failures are indicated by a beeping code specific of each motherboard (commonly shared between different models of the same manufacturer). The tests realized are:
1. **CPU:** Check the registers, cache memory and execution units
2. **RAM:** Perform memory tests, such as: march test, checksum test, parity test, address test, timing test, pattern sensitivity test
3. **BIOS ROM:** Perform a checksum validation on its own code
4. **Basic I/O Devices:** Verifies the devices response to specific test signals
5. **System Clock:** Compares the system clock with a reference time ([[Networks/RTC|RTC]] or [[Networks/NTP|NTP]])
6. **Storage Devices:** Verifies the devices responses and transfer capabilities through specific commands
7. **Expansion Cards:** Verify the devices responses and configuration through specific commands

### 2. Configuration
The BIOS access and load configuration files from the BIOS [[Plataform/ROM|ROM]]/Flash Card, proceeding to the nonvolatile BIOS memory, and lastly from the first bytes from storage devices. Each configuration is overridden by the next one. Some of the most important loaded settings are: boot order, date and time, hardware components initial settings, power management settings and security settings

### 3. Basic I/O Devices Initialization
The basic I/O devices are initialized with feature limitations due to the absence of more complex drivers. Some of the interfaces and its limitations are:
- **[[Plataform/PS2 Port|PS/2]] & [[Plataform/USB|USB]]:** For mouse and keyboard, it's limited to basic pointer movement and keystrokes
- **[[Plataform/RS-232|RS-232]] & [[Plataform/UART|UART]]:** Low-speed character-based communication
- **[[Plataform/Centronics Port|Centronics Port]]:** Limited data transfer rates and simple protocols
- **Video Adapters:** Basic text-mode display
- **Network Adapters:** Basic network boot functionalities

### 4. Boot Device Selection
The BIOS defines the boot priority order through consulting it's configuration files and scanning the connected storage devices

### 5. Boot Loader Execution
In the final step, the BIOS execute the [[Boot Loader|Boot Loader]] and gives the control to it

## External References
[wikipedia.org/BIOS](https://en.wikipedia.org/wiki/BIOS)
[wikipedia.org/Power-on_self-test](https://en.wikipedia.org/wiki/Power-on_self-test)
[wikipedia.org/Nonvolatile_BIOS_memory](https://en.wikipedia.org/wiki/Nonvolatile_BIOS_memory)
