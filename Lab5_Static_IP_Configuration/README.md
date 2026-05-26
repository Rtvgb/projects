# Lab 5 – Static IP Configuration

## Objective
Assign a static IP address to Windows Server 2022 and Ubuntu Server, replacing the default DHCP-assigned address. A static IP ensures the server always has the same address on the network, which is essential for services like DNS, Active Directory, and SSH.

## Static IP Settings (Applied to Both VMs)

| Setting | Value |
|---------|-------|
| IPv4 Address | 10.3.24.21 |
| Subnet Mask | 255.0.0.0 |
| Default Gateway | 10.0.0.1 |
| DNS Server | 8.8.8.8 |

---

## Windows Server 2022 (DForcho-WinSRV22)

Static IP configuration on Windows Server is done through the Network Adapter settings or via PowerShell. After making the change, the configuration was verified by running `ipconfig /all` in PowerShell.

The output confirmed:
- **Host Name:** WIN-3CVDLCTDE38
- **Primary DNS Suffix:** Wayne.local
- **Description:** Intel(R) 82574L Gigabit Network Connection
- **DHCP Enabled:** No
- **IPv4 Address:** 10.3.24.21 (Preferred)
- **Default Gateway:** 10.0.0.0
- **DNS Servers:** 8.8.8.8
- **NetBIOS over Tcpip:** Enabled

**Proof:** [`static_ip_proof.pdf`](./static_ip_proof.pdf)

---

## Ubuntu Server (DForcho-UbuntuSRV)

On Ubuntu Server, static IPs are configured through **Netplan**, which is the default network configuration tool for Ubuntu 18.04 and later. The configuration file is located at `/etc/netplan/` and written in YAML format.

**Steps completed:**
- Opened the Netplan config file with `sudo nano /etc/netplan/00-installer-config.yaml`
- Set the interface to use a static address instead of DHCP by specifying the IP, gateway, and DNS under the `addresses`, `routes`, and `nameservers` fields
- Applied the changes with `sudo netplan apply`
- Verified the new address was active with `ip addr show`

**Proof:** [`static_ip_proof.pdf`](./static_ip_proof.pdf)
