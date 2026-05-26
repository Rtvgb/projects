# Lab 1 – Virtual Machine Setup

## Objective
Install VMware Workstation 17 Pro and build four virtual machines running different operating systems, following a standard naming convention.

## What I Did

Downloaded and installed VMware Workstation 17 Pro from Broadcom. From there I created four VMs from scratch — each required sourcing the correct ISO, going through the OS installation process, and configuring hardware settings inside VMware before the OS was usable.

The naming convention used for all VMs is `<FirstInitial><Lastname>-<OSAbbreviation>`.

## Virtual Machines

| VM Name | Operating System | RAM | CPUs | Storage |
|---------|-----------------|-----|------|---------|
| DForcho-Win11 | Windows 11 Pro | 4 GB | 4 | 25 GB |
| DForcho-WinSRV22 | Windows Server 2022 Standard (Desktop Experience) | 4 GB | 4 | 25 GB |
| DForcho-Ubuntu | Ubuntu 24.04 (Client) | 4 GB | 4 | 25 GB |
| DForcho-UbuntuSRV | Ubuntu 24.04 (Server) | 4 GB | 4 | 25 GB |

## VM Configuration (applied to all)

- **Network Adapter:** NAT
- **USB Controller:** Present
- **Sound Card:** Auto detect
- **Display:** Auto detect
- **Hardware Compatibility:** Workstation 25H2

## Proof of Completion

[`Screenshot_2026-02-06_205248.png`](./Screenshot_2026-02-06_205248.png) — shows all 4 VMs listed in VMware Workstation with the DForcho-Ubuntu VM selected, confirming hardware specs and powered-off state.
