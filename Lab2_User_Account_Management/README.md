# Lab 2 – User Account Management

## Objective
Create and manage user accounts and groups on three different operating systems: Windows 11 Client, Ubuntu Client, and Windows Server 2022. Also includes extra credit for creating users on Ubuntu Server via the CLI.

---

## Windows 11 Client (DForcho-Win11)

User account management on Windows 11 is handled through the **Computer Management** console under Local Users and Groups.

**Steps completed:**
- Opened Computer Management → System Tools → Local Users and Groups → Users
- Created a new local user account (DForcho) with a secure password
- Opened the user's Properties and assigned it to the **Power Users** and **Users** groups via the Member Of tab
- Opened **Local Security Policy** → Account Policies → Password Policy and set the maximum password age to **60 days**

**Proof:** [`win_11_task_list.pdf`](./win_11_task_list.pdf)

---

## Ubuntu Client (DForcho-Ubuntu)

Ubuntu's default Settings panel has limited user management options, so `gnome-system-tools` was installed to access the full Users and Groups GUI.

**Steps completed:**
- Ran `sudo apt-get install gnome-system-tools` in the terminal to install the tool
- Launched the Users and Groups application
- Created a new user account (DForcho) with a password
- Opened Group Properties for the `powerplayer` group and added DForcho as a member
- Confirmed the account appeared under Settings → Users as a secondary user with Administrator privileges

**Proof:** [`ubuntu_screenshots.pdf`](./ubuntu_screenshots.pdf)

---

## Windows Server 2022 (DForcho-WinSRV22)

On Windows Server, user and group management is done through **Active Directory Users and Computers** since the server is configured as a domain controller for the `Wayne.local` domain.

**Steps completed:**
- Opened Active Directory Users and Computers and navigated the Wayne.local domain tree
- Reviewed the built-in Builtin and Users containers
- Created a new domain user account: **Forcho Daphny**
- Created a new Security Group named **SysAdmin** under the Groups container
- Added Forcho Daphny to the SysAdmin group and confirmed membership via the Members tab

**Proof:** [`win_server_Tasks.pdf`](./win_server_Tasks.pdf)

---

## Extra Credit – Ubuntu Server CLI (DForcho-UbuntuSRV)

Instead of a GUI, Ubuntu Server is managed entirely through the command line. User accounts were created using `useradd` and passwords were set using `chpasswd`.

**Commands used:**
```bash
sudo useradd -m SysAdmin && echo "SysAdmin:Pass1234" | sudo chpasswd
sudo useradd -m NormalGuy && echo "NormalGuy:Basic567" | sudo chpasswd
sudo useradd -m FinanceMgr && echo "FinanceMgr:FinTech777" | sudo chpasswd
```

Verified all three accounts were created by running `less /etc/passwd`, which showed each username with their assigned UID and home directory.

| Username | Password | UID |
|----------|----------|-----|
| SysAdmin | Pass1234 | 1002 |
| NormalGuy | Basic567 | 1001 |
| FinanceMgr | FinTech777 | 1003 |

**Proof:** [`Lab2_Ubuntu_Server_ExtraCredit_proof.pdf`](./Lab2_Ubuntu_Server_ExtraCredit_proof.pdf)
