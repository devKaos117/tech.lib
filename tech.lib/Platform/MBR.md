---
category: firmware
subjects:
  - firmware
full_form: Master Boot Record
acronym: MBR
tags:
  - platform/boot
---

## Definition
The MBR is a legacy and simple boot method (superseded by [[UEFI|UEFI]]) stored in the first 512 bytes of a disk. Composed by a partition table and a small program intended to pass the control over to the [[Boot Loader|Boot Loader]] located at the active partition. It works on a 32-bit addressing scheme, therefore supporting up to $2^{32}$ sectors in a single disk

## MBR Table
1. **Bootstrap Code \[0x0000: 218B\]:** The primary executable code responsible for initiating the boot process
2. **Optional Data Area \[0x00DA: 6B\]:** May contain the disk timestamp or the [OEM]{Original Equipment Manufacturer} loader signature
3. **Bootstrap Code \[0x00E0: 216B\]:** The second bootstrap code
4. **Disk Signature \[0x01B8: 6B\]:** A unique identifier for the disk
	1. **Signature \[0x01B8: 4B\]:** A unique identifier for the disk
	2. **Reserved \[0x01BC: 2B\]:** Padding, filled with `0x0000` or `0x5A5A` if copy protected
5. **Partition Entries \[0x01BE: 64B\]:** 4 16-byte long table entries for the primary partitions
6. **Boot Signature \[0x01FE: 2B\]:** The `0x55AA` signature used to validate the MBR as a bootable sector

## Partition Entry
Occupying 64 bytes of the MBR table, it consists of four entries, each of which defines a primary partition with the following information:
1. **Boot Flag \[0x00: 1B\]:** A flag indicating if the partition is bootable
2. **Start \[0x01: 3B\]:** The absolute address for the first sector in the partition
	1. **Starting Head \[0x01: 1B\]:** The [[Plataform/CHS|CHS]] address for the head
	2. **Starting Sector \[0x02: 1B\]:** The [[Plataform/CHS|CHS]] address for the sector
	3. **Starting Cylinder \[0x03: 1B\]:** The [[Plataform/CHS|CHS]] address for the cylinder
3. **Partition Type \[0x04: 1B\]:** A flag that indicates the partition type
4. **End \[0x05: 3B\]:** The absolute address for the last sector in the partition
	1. **Ending Head \[0x05: 1B\]:** The address for the head
	2. **Ending Sector \[0x06: 1B\]:** The address for the sector
	3. **Ending Cylinder \[0x07:1 B\]:** The address for the cylinder
5. **LBA \[0x08: 4B\]:** The [[Plataform/LBA|LBA]] of the first sector in the partition
6. **Size \[0x0c: 4B\]:** The number of sectors in the partition

## Partition Types
### Primary Partition
The MBR supports up to four primary partitions on a disk (and requires at least one), and although the operating system files may be located anywhere in the disk, the boot files must be on a primary partition

### Extended Partition
A MBR disk may contain one, and only one extended partition, which itself holds logical drives (supporting a theoretical unlimited number of sub-partitions) formed in a linked list style

## External References
[wikipedia.org/Master_boot_record](https://en.wikipedia.org/wiki/Master_boot_record)
[wikipedia.org/Partition_type](https://en.wikipedia.org/wiki/Partition_type)
[wikipedia.org/Extended_boot_record](https://en.wikipedia.org/wiki/Extended_boot_record)
