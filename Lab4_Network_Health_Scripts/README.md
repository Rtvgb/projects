# Lab 4 – Network Health Scripts

## Objective
Install Cygwin on Windows 11 to enable a Linux-style bash terminal, then write shell scripts on both a Windows VM and a Linux VM that automatically capture network configuration and connectivity status into a log file.

---

## Part 1 – Cygwin Installation (DForcho-Win11)

Cygwin is a compatibility layer that lets you run a Linux bash environment on Windows. It was downloaded from [cygwin.com](https://cygwin.com) and installed on DForcho-Win11. During setup, the required packages were selected to enable bash scripting. After installation the Cygwin64 Terminal was available from the desktop and functioned as a full Linux shell.

---

## Part 2 – Windows Network Health Script (DForcho-Win11)

The script was written and executed inside the Cygwin64 Terminal on DForcho-Win11. It was created using a text editor, then made executable with `chmod +x` before running.

**What the script does:**
1. Creates a `tempinfo/` directory in the current working directory
2. Detects whether `ip` (Linux-style) or `ipconfig` (Windows) is available and runs the appropriate command to capture full IP configuration
3. Pings `8.8.8.8` to test network connectivity
4. Writes all output to `tempinfo/myIPhealth.txt`

The script ran successfully. The output file was confirmed in File Explorer and opened in Notepad++, showing ping results of **Sent = 4, Received = 4, Lost = 0 (0% loss)** with an average round trip time of **10ms**.

**Script:** [`windows_networkhealth.sh`](./windows_networkhealth.sh)  
**Proof:** [`Win11_Cygwin_proof.png`](./Win11_Cygwin_proof.png)

---

## Part 3 – Ubuntu Network Health Script (DForcho-Ubuntu)

The same script logic was adapted for native Ubuntu bash and run on DForcho-Ubuntu. The script was created with `nano`, made executable with `chmod +x`, and executed directly from the terminal.

**What the script does:**
1. Creates a `tempinfo/` directory in the current working directory
2. Runs `ip addr show` to capture all IP configuration details
3. Pings `8.8.8.8` to test connectivity
4. Writes all output to `tempinfo/myIPhealth.txt`

The script ran successfully. The output file appeared in the file manager at **7.6 KB** and was opened in a text editor, confirming it captured IP info for both the loopback interface (`lo`) and the network adapter (`ens33`).

**Script:** [`ubuntu_networkhealth.sh`](./ubuntu_networkhealth.sh)  
**Proof:** [`Ubuntu_script_proof.png`](./Ubuntu_script_proof.png)

---

## Scripts Summary

| Script | VM | Shell | Output File |
|--------|----|-------|-------------|
| `windows_networkhealth.sh` | DForcho-Win11 | Cygwin bash | `tempinfo/myIPhealth.txt` |
| `ubuntu_networkhealth.sh` | DForcho-Ubuntu | Native bash | `tempinfo/myIPhealth.txt` |
