---
category: linux
subjects:
  - process
full_form: NULL
acronym: NULL
---

## Definition
## Booting Steps

1. **Kernel Load:**
    1. Compressed kernel is loaded into RAM
    2. CPU switches to protected/long mode.
2. **Kernel Init:**
    1. Kernel decompresses itself
    2. Initializes core hardware components
    3. Mounts the initial RAM disk
3. **Initramfs / Initrd:**
    1. Load necessary storage drivers
    2. Detect and mount the root filesystem
    3. Prompt for decryption passwords if required
4. **Root Mount:**
    1. Kernel switches to the root filesystem
    2. Initramfs unloaded from memory
5. **Init System:**
    1. Systemd or SysVinit starts
    2. Manages services and system state
6. **Runlevel / Target:**
    1. Init system transitions to the default runlevel / target
    2. Necessary services and applications are started
7. **Login:**
    1. Login prompt is displayed
    2. User interaction begins

## Detailed Description

### Kernel Load

### Kernel Init

### **Initramfs / Initrd**

### Root Mount

### Init System

### Runlevel / Target

### Login

## Relevant Reading
- [[Boot Loader]]
- [[GRUB]]
- [[Kernel]]

## External Reference
[en.wikipedia.org/Booting_process_of_Linux](https://en.wikipedia.org/wiki/Booting_process_of_Linux)
[wiki.archlinux.org/Arch_boot_process](https://wiki.archlinux.org/title/Arch_boot_process)
[RFCNNNN - NAME](https://datatracker.ietf.org/doc/html/rfcNNNN)