# Lab 4 – Network Health Scripts

## Objective
Install Cygwin on Windows 11 to enable a Linux bash terminal, then write shell scripts on both a Windows VM and a Linux VM that log each machine's network status to a file.

## Environment
- **Windows VM:** DForcho-Win11 (with Cygwin installed)
- **Linux VM:** DForcho-Ubuntu

---

## What I Did

### Part 1 – Cygwin Installation (DForcho-Win11)
- Downloaded and installed Cygwin on the Windows 11 Pro VM
- Cygwin provides a Linux-compatible bash terminal environment on Windows
- Verified installation by opening the Cygwin64 Terminal

### Part 2 – Windows Network Health Script (DForcho-Win11)
Written in bash and executed via Cygwin. The script does the following:
1. Creates a `tempinfo/` directory in the current working directory
2. Captures full IP configuration using `ip addr show` (or falls back to `ipconfig /all` on Windows)
3. Runs a `ping` to `8.8.8.8` to test network connectivity
4. Saves all output to `tempinfo/myIPhealth.txt`

The script was made executable with `chmod +x`, ran successfully, and the output file was confirmed in File Explorer showing ping stats: **Sent = 4, Received = 4, Lost = 0 (0% loss), Average = 10ms**

**Script:** [`windows_networkhealth.sh`](./windows_networkhealth.sh)  
**Proof:** [`Win11_Cygwin_proof.png`](./Win11_Cygwin_proof.png)

---

### Part 3 – Ubuntu Network Health Script (DForcho-Ubuntu)
Written in bash and executed natively on Ubuntu. The script does the following:
1. Creates a `tempinfo/` directory in the current working directory
2. Captures full IP configuration using `ip addr show`
3. Runs a `ping` to `8.8.8.8` to test network connectivity
4. Saves all output to `tempinfo/myIPhealth.txt`

The script was made executable with `chmod +x networkslogs.sh` and ran successfully. The output file `myIPhealth.txt` was confirmed in the file manager (7.6 KB) and opened in a text editor showing IP config details for loopback (`lo`) and the network adapter (`ens33`).

**Script:** [`ubuntu_networkhealth.sh`](./ubuntu_networkhealth.sh)  
**Proof:** [`Ubuntu_script_proof.png`](./Ubuntu_script_proof.png)

---

## Scripts Summary

| Script | VM | Tool | Output |
|--------|----|------|--------|
| `windows_networkhealth.sh` | DForcho-Win11 | Cygwin (bash) | `tempinfo/myIPhealth.txt` |
| `ubuntu_networkhealth.sh` | DForcho-Ubuntu | Native bash | `tempinfo/myIPhealth.txt` |

Both scripts capture IP configuration and ping results into a unified log file.
