# Lab 6 – Software Installation & Automation

## Objective
Use automated and package-manager-based tools to install software across three different operating systems, rather than downloading and running individual installers manually.

---

## Windows 11 Client (DForcho-Win11)

Used **Ninite** to automate the installation of multiple applications in a single pass. Ninite works by generating a custom installer that silently installs all selected apps without any prompts, toolbars, or bloatware.

**Applications installed via Ninite:**
- Google Chrome
- VLC Media Player
- Notepad++

After running the Ninite installer, all three applications showed a status of **OK (up to date)** in the Ninite completion screen, confirming successful installation.

---

## Ubuntu Client (DForcho-Ubuntu)

Used the Linux command line to download and install **Apache OpenOffice** manually, since it is not available in the default Ubuntu apt repositories.

**Steps completed:**
- Downloaded the Apache OpenOffice `.tar.gz` package
- Extracted the archive and navigated to the `DEBS` directory
- Installed all packages using `sudo dpkg -i *.deb`
- Installed the desktop integration package to add OpenOffice to the application menu
- Launched OpenOffice to confirm successful installation

---

## Windows Server 2022 (DForcho-WinSRV22)

Used **Chocolatey**, a command-line package manager for Windows, to install software via PowerShell. Chocolatey works similarly to `apt` on Linux — you install packages with a single command and it handles downloading, installing, and configuring the software.

**Steps completed:**
- Opened PowerShell as Administrator
- Installed Chocolatey by running the official install script from `chocolatey.org`
- Used Chocolatey to install Notepad++ with `choco install notepadplusplus -y`
- Used Chocolatey to install VLC with `choco install vlc -y`
- Confirmed both installations completed without errors

---

## Proof of Completion

See [`software_installation_proof.docx`](./software_installation_proof.docx)
