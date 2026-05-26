# Lab 2 – User Account Management

## Objective
Manage user accounts and groups across three operating systems: Windows 11 Client, Ubuntu Client, and Windows Server 2022.

## What I Did

### Windows 11 Client (DForcho-Win11)
- Opened Computer Management → Local Users and Groups → Users
- Created a new local user account with a password
- Assigned the user to the Power Users and Users groups
- Configured password policy via Local Security Policy (maximum password age set to 60 days)

**Proof:** [`win_11_task_list.pdf`](./win_11_task_list.pdf)

---

### Ubuntu Client (DForcho-Ubuntu)
- Installed `gnome-system-tools` via terminal: `sudo apt-get install gnome-system-tools`
- Opened the Users and Groups GUI
- Created a new user account (DForcho) and configured group membership
- Added the user to the `powerplayer` group
- Verified the user appeared under Settings → Users

**Proof:** [`ubuntu_screenshots.pdf`](./ubuntu_screenshots.pdf)

---

### Windows Server 2022 (DForcho-WinSRV22)
- Opened Active Directory Users and Computers on the Wayne.local domain
- Viewed and navigated the built-in Users and Groups containers
- Created a new domain user (Forcho Daphny)
- Created a new Security Group named SysAdmin
- Added Forcho Daphny to the SysAdmin group and verified membership

**Proof:** [`win_server_Tasks.pdf`](./win_server_Tasks.pdf)

---

### Extra Credit – Ubuntu Server CLI (DForcho-UbuntuSRV)
Created three user accounts via the command line using `useradd` and `chpasswd`, then verified with `less /etc/passwd`:

| Username | Password | UID |
|----------|----------|-----|
| SysAdmin | Pass1234 | 1002 |
| NormalGuy | Basic567 | 1001 |
| FinanceMgr | FinTech777 | 1003 |

**Proof:** [`Lab2_Ubuntu_Server_ExtraCredit_proof.pdf`](./Lab2_Ubuntu_Server_ExtraCredit_proof.pdf)
