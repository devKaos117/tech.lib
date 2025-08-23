---
full_form: GUID Partition Table
acronym: GPT
subjects:
  - architecture
tags:
  - low-level
  - storage
---

## Definition
The GPT, [[MBR]] successor, is the current standard for partition tables used in the most secure and advance booting firmware, the [[UEFI]]. It uses [[UUID]] and [[LBA]] for addressing and stipulates a minimum size of $2^{14}$ bytes for the partition entry array. Using 64-bit values to describe the partitions, it holds a theoretical limit of $9.4 \cdot 10^{21}$ bytes sized disks

## Protective MBR
The [[LBA]] 0 is reserved for the protective [[MBR]], either using the legacy firmware reserved disk space to prevent table misreckoning and overwriting, or to store the first stages of a bootloader code for compatibility with older hardwares

## GPT Header
The GPT header is commonly stored at the [[LBA]] 1, having a backup at the last [[LBA]]
1. **EFI PART \[0x00: 8B\] -** [[UEFI]] GPT fixed signature
2. **Revision - \[0x08: 4B\] -** Specifies the version of the GPT standard
3. **Header Size \[0x0c: 4B\] -** Indicates the GPT Header size in bytes
4. **CRC32 \[0x10: 4B\] -** A 32-byte [[CRC]] checksum used to verify the integrity of the GPT header
5. **RESERVED \[0x14: 4B\] -** Reserved space occupied by zeroes
6. **Current LBA \[0x18: 8B\] -** Location of the current header copy
7. **Backup LBA \[0x20: 8B\] -** Location of the other header copy
8. **First Usable LBA \[0x28: 8B\] -** Indicates the first [[LBA]] usable for partitions
9. **Last Usable LBA \[0x30: 8B\] -** Indicates the last [[LBA]] usable for partitions
10. **Disk GUID \[0x38: 16B\] -** The disk [[UUID]]
11. **Array Starting LBA \[0x48: 8B\]** - The [[LBA]] for the partition entry array beginning
12. **Array Entries \[0x50: 4B\] -** The number of partition entries in the array
13. **Array Entries Size \[0x54: 4B\] -** The size of each partition entry in bytes
14. **Array CRC32 \[0x58: 4B\] -** A 32-byte [[CRC]] checksum used to verify the integrity of the partition entry array
15. **RESERVED \[0x5c: $(sector_size - 92)\] -** The rest of the block must be filled with zeroes

## Partition Entry Array
With a minimum size of 128 bytes, the partition entry array describe each partition in the disk
1. **Partition type GUID \[0x00: 16B\] -** A [[UUID]] that specifies the partition type
2. **Partition GUID \[0x10: 16B\] -** A [[UUID]] for the partition itself
3. **First LBA \[0x20: 8B\] -** The first [[LBA]] of the partition
4. **Last LBA \[0x28: 8B\] -** The last [[LBA]] of the partition (inclusive)
5. **Attributes \[0x30: 8B\] -** Attribute flags:
    1. 0 - Platform required, being essential for the proper functioning of the computer
    2. 1 - EFI Firmware must ignore it
    3. 2 - Legacy [[BIOS]] bootable flag
    4. 3~47 - Reserved
    5. 48~63 - Defined and used by the specific partition type
6. **Name \[0x38: 72B\] -** A human readable 36 units long [[UTF]]-16 LE name for the partition

## External References
[wikipedia.org](https://en.wikipedia.org/wiki/GUID_Partition_Table)
